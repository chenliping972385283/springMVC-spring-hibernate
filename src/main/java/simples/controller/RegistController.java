package simples.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import simples.entity.Customer;
import simples.entity.User;
import simples.service.registry.RegistryService;

import java.util.List;

/**
 * Created by jinli on 2017/1/12.
 */
@Controller
@RequestMapping("/register")
public class RegistController {

    @Autowired
    private RegistryService registryService;

    @RequestMapping(value="/registryUser")
    public ModelAndView registryUser(){
        ModelAndView modelAndView = new ModelAndView("/register");
        return modelAndView;
    }

    @RequestMapping(value="/addUser")
    public ModelAndView addUser(User user){
        registryService.addUser(user);
        ModelAndView modelAndView = new ModelAndView("/registerSuccess");
        return modelAndView;
    }
}
