package simples.dao;

import simples.entity.Customer;

import java.util.List;

/**
 * Created by jinli on 2016/12/21.
 */
public interface CustomerDao {

    void save(Customer customer);
    void update(Customer customer);
    void delete(int id);
    Customer getCustomer(int id);
    List<Customer> getCustomerList();
}
