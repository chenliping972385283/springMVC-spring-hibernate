package simples.relams;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import simples.dao.user.UserDao;
import simples.entity.User;

import java.util.HashSet;

/**
 * Created by jinli on 2017/1/20.
 */
public class MyRealm  extends AuthorizingRealm{

    private static final Logger log = LoggerFactory.getLogger(MyRealm.class);

    @Autowired
    private UserDao userDao;
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        String username = (String)principalCollection.getPrimaryPrincipal();
        SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();
        authorizationInfo.setRoles(new HashSet<String>());
        //就是这里，，手工添加的方法
      //  authorizationInfo.addRoles(userDao.getUserByUsername(username));
       // authorizationInfo.addStringPermissions();
        return authorizationInfo;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        UsernamePasswordToken token = (UsernamePasswordToken)authenticationToken;
        //就是这里，使用了的user的代码
        User user = userDao.getUserByUsername(token.getUsername());
        if(user == null){
            throw new UnknownAccountException();
        }
        SimpleAuthenticationInfo auth = new SimpleAuthenticationInfo(token.getPrincipal(),user.getUsername(),user.getPassword());
        auth.setCredentials(user.getPassword());
        //返回登录成功的结果
        return auth;
    }

    private void setSession(Object key,Object value){
        Subject currentUser = SecurityUtils.getSubject();
        if(currentUser != null){
            Session session = currentUser.getSession();
            if(null!= session){
                session.setAttribute(key, value);
            }

        }

    }
}
