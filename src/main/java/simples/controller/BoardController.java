package simples.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import simples.entity.Board;
import simples.service.Board.BoardService;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;

/**
 * Created by jinli on 2017/2/8.
 */
@Controller
@RequestMapping("/user")
public class BoardController {

    @Autowired
    private BoardService boardService;

    /**
     * 添加帖子页面
     *
     * @return
     */
    @RequestMapping("/postBoard")
    public ModelAndView postBoard() {
        return new ModelAndView("/postBoard");
    }

    /**
     * 发布帖子
     */
    @RequestMapping(value="/addBoard",method = RequestMethod.POST)
    public ModelAndView addBoard(Board board, String username) {
            System.out.println(username);
            /*board.setTitle(new String(board.getTitle().getBytes("ISO-8859-1"), "utf-8"));
            board.setContent(new String(board.getContent().getBytes("ISO-8859-1"), "utf-8"));
            board.setLabel(new String(board.getLabel().getBytes("ISO-8859-1"), "utf-8"));*/
            boardService.addBoard(board,username);
            return new ModelAndView("/registerSuccess");
    }

    @RequestMapping(value="/boardDetail",method = RequestMethod.GET)
    public ModelAndView boardDetail(int  id){
        Board board = boardService.getBoardById(id);
        return new ModelAndView("/boardDetail").addObject("board",board);
    }
}
