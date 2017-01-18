package simples.service.registry;

import org.hibernate.annotations.Any;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import simples.dao.registry.RegistryDao;
import simples.entity.User;

/**
 * Created by jinli on 2017/1/12.
 */
@Service
public class RegistryServiceImpl implements RegistryService {

    @Autowired
    private RegistryDao registryDao;

    @Override
    public void addUser(User user) {
        registryDao.addUser(user);
    }
}
