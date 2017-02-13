package simples.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import simples.dao.board.BoardDao;
import simples.entity.Board;
import simples.entity.BoardNotice;
import simples.entity.BoardUserData;
import simples.service.Board.BoardService;
import simples.service.notice.BoardNoticeService;

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

    @Autowired
    private BoardNoticeService boardNoticeService;

    @RequestMapping(value="/index")
    public ModelAndView main(){
        ModelAndView modelAndView = new ModelAndView("/welcome");
        Map modelMap = new HashMap<String,List<Board>>();
        Board board = new Board();
        int first = 0;
        int end = 11;
        board.setBoardSelection("0");
        board.setIsFirst("0");
        List<BoardUserData> boardJishu = boardService.getBoardList(board,first,end);
        modelMap.put("boardJishu",boardJishu);

        board.setBoardSelection("1");
        List<BoardUserData> boardLife = boardService.getBoardList(board,first,end);
        modelMap.put("boardLife",boardLife);

        board.setIsFirst("1");
        end=8;
        List<BoardUserData> lifeAdv = boardService.getBoardList(board,first,end);
        modelMap.put("lifeAdv",lifeAdv);

        board.setBoardSelection("0");
        end = 8;
        List<BoardUserData> jishuAdv = boardService.getBoardList(board,first,end);
        modelMap.put("jishuAdv",jishuAdv);

        List<BoardNotice> notices = boardNoticeService.getBoardNoticeList();
        modelMap.put("notices",notices);

        modelAndView.addAllObjects(modelMap);
        return modelAndView;
    }

}
