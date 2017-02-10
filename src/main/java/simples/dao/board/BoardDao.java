package simples.dao.board;

import simples.entity.Board;
import simples.entity.BoardUserData;

import java.util.List;

/**
 * Created by jinli on 2017/2/8.
 */
public interface BoardDao {

    void addBoard(Board board);

    Board getBoardById(int id);

    void updateBoardById(int id);

    void finshBoard(Board board);

    List<BoardUserData> getBoardList(Board board);

}
