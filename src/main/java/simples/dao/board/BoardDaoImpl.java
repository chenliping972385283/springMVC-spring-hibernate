package simples.dao.board;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import simples.entity.Board;
import simples.entity.BoardUserData;

import java.util.List;

/**
 * Created by jinli on 2017/2/8.
 */
@Repository
public class BoardDaoImpl implements BoardDao {

    @Autowired
    private SessionFactory sessionFactory;

    private Session getSession(){
        return sessionFactory.getCurrentSession();
    }

    @Override
    public void addBoard(Board board) {

        getSession().save(board);
    }

    @Override
    public Board getBoardById(int id) {
        String hql = "from Board b where b.id = ?";
        Query query = getSession().createQuery(hql);
        query.setParameter(0,id);
        Board board  = (Board)query.uniqueResult();
        return board;
    }

    @Override
    public void updateBoardById(int id) {

    }

    @Override
    public void finshBoard(Board board) {

    }

    @Override
    public List<BoardUserData> getBoardList(Board board,int first,int end) {
        StringBuilder hql = new StringBuilder("select new simples.entity.BoardUserData(b.id,u.username,b.title,b.label) from Board b,User u,BoardUser bu where 1=1");
        String boardSelection = null;
        String  isFirst = null;
        if (board != null) {
            if(board.getBoardSelection() !=null && !board.getBoardSelection().equals("")){
                boardSelection = board.getBoardSelection();
                hql.append(" and b.boardSelection=:boardSelection ");
            }
            if(board.getIsFirst()!=null && !board.getIsFirst().equals("")){
                isFirst  = board.getIsFirst();
                hql.append(" and b.isFirst=:isFirst ");
            }
        }
        hql.append(" and b.id = bu.boardId ");
        hql.append(" and u.id = bu.userId");
        System.out.println(hql.toString());
        Query query = getSession().createQuery(hql.toString());
        query.setString("boardSelection",boardSelection);
        query.setString("isFirst",isFirst);
        query.setFirstResult(first);
        query.setMaxResults(end);
        List<BoardUserData> boardList = query.list();
        return boardList;
    }
}
