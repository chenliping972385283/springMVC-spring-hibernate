package simples.service.user;

import simples.entity.User;

/**
 * Created by jinli on 2017/1/22.
 */
public interface  UserService {

    void addUser(User user);

    void deleteUser(User user);

    User getUserByUsername(String username);
}
