package simples.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import simples.service.notice.BoardNoticeService;

/**
 * Created by jinli on 2017/2/13.
 */
@Controller
@RequestMapping("/notice")
public class NoticeController {

    @Autowired
    private BoardNoticeService boardNoticeService;


}
