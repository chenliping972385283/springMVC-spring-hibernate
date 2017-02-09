package simples.service.Board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import simples.dao.board.BoardDao;
import simples.entity.Board;

/**
 * Created by jinli on 2017/2/8.
 */
@Service
public class BoardServiceImpl implements BoardService{

    @Autowired
    private BoardDao boardDao;

    @Override
    public void addBoard(Board board) {
        boardDao.addBoard(board);
    }

    @Override
    public Board getBoardById(int id) {
        return null;
    }

    @Override
    public void updateBoardById(int id) {

    }

    @Override
    public void finshBoard(Board board) {

    }
}
