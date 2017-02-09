package simples.service.Board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import simples.dao.board.BoardDao;
import simples.dao.board.BoardUserDao;
import simples.dao.user.UserDao;
import simples.entity.Board;
import simples.entity.BoardUser;
import simples.entity.User;

/**
 * Created by jinli on 2017/2/8.
 */
@Service
public class BoardServiceImpl implements BoardService{

    @Autowired
    private BoardDao boardDao;

    @Autowired
    private UserDao userDao;

    @Autowired
    private BoardUserDao boardUserDao;

    @Override
    public void addBoard(Board board,String username) {
        boardDao.addBoard(board);
        User user = userDao.getUserByUsername(username);
        BoardUser boardUser = new BoardUser();
        boardUser.setBoardId(board.getId());
        boardUser.setUserId(user.getId());
        boardUserDao.addBoardUser(boardUser);
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
