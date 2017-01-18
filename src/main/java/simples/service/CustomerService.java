package simples.service;

import simples.entity.Customer;

import java.util.List;

/**
 * Created by jinli on 2016/12/21.
 */
public interface CustomerService {

    void save(Customer customer);
    void update(Customer customer);
    void delete(int id);
    Customer get(int id);
    List<Customer> getCustomerList();
}
