package simples.common;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 * Created by jinli on 2017/1/20.
 */
public class SessionHibernateUtil {

    private static SessionFactory sessionFactory;

    public static Session getSession() {
        return sessionFactory.getCurrentSession();
    }
}
