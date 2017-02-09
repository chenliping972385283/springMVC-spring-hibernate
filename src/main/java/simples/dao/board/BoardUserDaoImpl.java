package simples.dao.board;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import simples.entity.Board;
import simples.entity.BoardUser;

/**
 * Created by jinli on 2017/2/8.
 */
@Repository
public class BoardUserDaoImpl  implements BoardUserDao{

    @Autowired
    private SessionFactory sessionFactory;

    private Session getSession(){
        return sessionFactory.getCurrentSession();
    }


    @Override
    public void addBoardUser(BoardUser boardUser) {
        getSession().save(boardUser);
    }
}
