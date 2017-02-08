package simples.dao.user;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import simples.entity.User;

/**
 * Created by jinli on 2017/1/20.
 */
@Repository
public class UserDaoImpl implements UserDao {

    @Autowired
    private SessionFactory sessionFactory;

    private Session getSession(){
        return sessionFactory.getCurrentSession();
    }

    @Override
    public void addUser(User user) {
        getSession().save(user);
    }

    @Override
    public void deleteUser(User user) {
        getSession().delete(user);
    }

    @Override
    public User getUserByUsername(String username) {
        String hql="from User u where u.email = ? ";
        Query query = getSession().createQuery(hql);
        query.setParameter(0,username);
        User user  = (User)query.uniqueResult();
        return user;
    }
}
