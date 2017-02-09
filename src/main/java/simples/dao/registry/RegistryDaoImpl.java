package simples.dao.registry;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import simples.entity.User;

/**
 * Created by jinli on 2017/1/12.
 */
@Repository
public class RegistryDaoImpl implements RegistryDao{

    @Autowired
    private SessionFactory sessionFactory;

    private Session getSession(){
        return sessionFactory.getCurrentSession();
    }

    @Override
    public void addUser(User user) {

        getSession().save(user);
    }
}
