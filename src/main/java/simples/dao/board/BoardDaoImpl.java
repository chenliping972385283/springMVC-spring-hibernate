package simples.dao.board;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import simples.entity.Board;

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
}
