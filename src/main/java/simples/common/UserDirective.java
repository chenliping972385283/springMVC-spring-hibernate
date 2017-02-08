package simples.common;

import freemarker.core.Environment;
import freemarker.template.TemplateDirectiveBody;
import freemarker.template.TemplateDirectiveModel;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;
import org.springframework.beans.factory.annotation.Autowired;
import simples.dao.user.UserDao;
import simples.entity.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Map;

import static freemarker.template.ObjectWrapper.DEFAULT_WRAPPER;

/**
 * Created by jinli on 2017/2/6.
 */
public class UserDirective implements TemplateDirectiveModel {

    @Autowired
    private UserDao userDao;

    @Autowired
    private HttpServletRequest request;

    @Override
    public void execute(Environment environment, Map map,
                        TemplateModel[] templateModels,
                        TemplateDirectiveBody templateDirectiveBody) throws TemplateException, IOException {

        HttpSession session = request.getSession();
        String username = (String)session.getAttribute("username");
        User user = null;
        if(username!=null){
            user = userDao.getUserByUsername(username);
            System.out.println(user.getEmail());
        }
        environment.setVariable("loginuser", DEFAULT_WRAPPER.wrap(user));
        System.out.println(DEFAULT_WRAPPER.wrap(user) + "!!!!");
        System.out.println(environment.getOut());
        templateDirectiveBody.render(environment.getOut());

    }
}
