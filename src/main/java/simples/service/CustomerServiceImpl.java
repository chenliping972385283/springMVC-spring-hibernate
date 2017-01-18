package simples.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import simples.dao.CustomerDao;
import simples.entity.Customer;

import java.util.List;

/**
 * Created by jinli on 2016/12/21.
 */
@Service("customerService")
public class CustomerServiceImpl implements CustomerService {

    @Autowired
    private CustomerDao customerDao;

    public void save(Customer customer) {
        customerDao.save(customer);
    }

    public void update(Customer customer) {
        customerDao.update(customer);
    }

    public void delete(int id) {
        customerDao.delete(id);
    }

    public Customer get(int id) {
        return customerDao.getCustomer(id);
    }

    public List<Customer> getCustomerList() {
        return customerDao.getCustomerList();
    }
}
