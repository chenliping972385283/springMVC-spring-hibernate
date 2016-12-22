package simples.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import simples.entity.Customer;

import java.util.List;

/**
 * Created by jinli on 2016/12/21.
 */
@Repository
public class CustomerDaoImpl implements CustomerDao {


    @Autowired
    private SessionFactory sessionFactory;

    private Session getSession(){
        return sessionFactory.getCurrentSession();
    }


    public void save(Customer customer) {
        getSession().save(customer);
    }

    public void update(Customer customer) {
        getSession().update(customer);
    }

    public void delete(int id) {
        getSession().delete(getCustomer(id));
    }

    public Customer getCustomer(int id) {
        return (Customer) getSession().get(Customer.class,id);
    }

    public List<Customer> getCustomerList() {
        String s = "from Customer";
        Query query = getSession().createQuery(s);
        List<Customer> customerList = query.list();
        return customerList;
    }
}
