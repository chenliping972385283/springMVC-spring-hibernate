package simples.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import simples.dao.board.BoardDao;
import simples.entity.Board;
import simples.entity.BoardUserData;
import simples.service.Board.BoardService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by jinli on 2017/1/10.
 */
@Controller
public class IndexController {

    @Autowired
    private BoardService boardService;

    @RequestMapping(value="/index")
    public ModelAndView main(){
        ModelAndView modelAndView = new ModelAndView("/welcome");
        Map modelMap = new HashMap<String,List<Board>>();
        Board board = new Board();
        board.setBoardSelection("0");
        board.setIsFirst("0");
        List<BoardUserData> boardJishu = boardService.getBoardList(board);
        modelMap.put("boardJishu",boardJishu);
        board.setBoardSelection("1");
        List<BoardUserData> boardLife = boardService.getBoardList(board);
        modelMap.put("boardLife",boardLife);
        modelAndView.addAllObjects(modelMap);
        return modelAndView;
    }

}
