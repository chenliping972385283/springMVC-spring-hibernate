package simples.dao.user;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import simples.common.SessionHibernateUtil;
import simples.entity.User;

/**
 * Created by jinli on 2017/1/20.
 */
@Repository
public class UserDaoImpl implements UserDao {
    @Override
    public void addUser(User user) {
        SessionHibernateUtil.getSession().save(user);
    }

    @Override
    public void deleteUser(User user) {
        SessionHibernateUtil.getSession().delete(user);
    }

    @Override
    public User getUserByUsername(String username) {
        String hql="from User u where u.username = ? ";
        Query query = SessionHibernateUtil.getSession().createQuery(hql);
        query.setParameter(0,username);
        User user  = (User)query.uniqueResult();
        return user;
    }
}
