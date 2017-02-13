package simples.dao.notice;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import simples.entity.BoardNotice;

import java.util.List;

/**
 * Created by jinli on 2017/2/13.
 */
@Repository
public class BoardNoticeDaoImpl implements BoardNoticeDao {

    @Autowired
    private SessionFactory sessionFactory;

    private Session getSession(){
        return  sessionFactory.getCurrentSession();
    }

    @Override
    public List<BoardNotice> selectNotice() {
        String hql = "from BoardNotice where 1=1";
        Query query = getSession().createQuery(hql);
        return query.list();
    }
}
