package simples.service.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import simples.dao.user.UserDao;
import simples.entity.User;

/**
 * Created by jinli on 2017/1/22.
 */
@Service
public class UserServiceImpl implements  UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public void addUser(User user) {
        userDao.addUser(user);
    }

    @Override
    public void deleteUser(User user) {
        userDao.deleteUser(user);
    }

    @Override
    public User getUserByUsername(String username) {
        return userDao.getUserByUsername(username);
    }

    @Override
    public void updateUser(User user) {
        userDao.updateUser(user);
    }
}
