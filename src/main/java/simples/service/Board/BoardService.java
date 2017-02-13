package simples.service.Board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import simples.dao.board.BoardDao;
import simples.entity.Board;
import simples.entity.BoardUserData;

import java.util.List;

/**
 * Created by jinli on 2017/2/8.
 */
public interface BoardService {

   void addBoard(Board board,String username);

    Board getBoardById(int id);

    void updateBoardById(int id);

    void finshBoard(Board board);

    List<BoardUserData> getBoardList(Board board,int first,int end);



}
