package simples.dao.user;

import simples.entity.User;

/**
 * Created by jinli on 2017/1/20.
 */

public interface UserDao {
    void addUser(User user);
    void deleteUser(User user);
    User getUserByUsername(String username);
}
