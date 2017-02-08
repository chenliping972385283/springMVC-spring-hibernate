package simples.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by jinli on 2017/2/8.
 */
@Controller
@RequestMapping("/user")
public class BoardController {

    /**
     * 发布帖子
     * @return
     */
    @RequestMapping("/postBoard")
    public ModelAndView postBoard(){
        return new ModelAndView("/postBoard");
    }
}
