package simples.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by jinli on 2017/1/10.
 */
@Controller
public class IndexController {

    @RequestMapping(value="/index")
    public ModelAndView main(){
        ModelAndView modelAndView = new ModelAndView("/welcome");
        return modelAndView;
    }

}
