package simples.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import simples.entity.Customer;
import simples.service.impl.CustomerService;

import java.util.List;

/**
 * Created by jinli on 2016/12/21.
 */
@Controller
@RequestMapping("/customer")
public class CustomerController {

    @Autowired
    private CustomerService customerService;

    @RequestMapping(value="/main")
    public ModelAndView main(){
        List<Customer> customerList = customerService.getCustomerList();
        ModelAndView modelAndView = new ModelAndView("/pages/main");
        modelAndView.addObject("customerList",customerList);

        return modelAndView;
    }

    @RequestMapping("/save")
    public void save(Customer customer){
        customerService.save(customer);
    }
}
