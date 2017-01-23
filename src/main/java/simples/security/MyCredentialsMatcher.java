package simples.security;

import org.apache.shiro.authc.*;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Created by jinli on 2017/1/20.
 */
public class MyCredentialsMatcher extends HashedCredentialsMatcher {

    private static final Logger log = LoggerFactory.getLogger(MyCredentialsMatcher.class);
    public MyCredentialsMatcher(){

    }
    /*
    一个用户信息校验的方法，将登陆信息与realm提供的后台信息进行核对，核对成功后就返回true，否则就抛出异常
    登陆信息包括身份信息和证明信息
    realm从数据库或ldap等后台服务器出获取的信息
    return true if matched,or false
     */
    public boolean doCredentialsMatch(AuthenticationToken authenticationToken,AuthenticationInfo authenticationInfo){
        UsernamePasswordToken utoken =  (UsernamePasswordToken)authenticationToken;
        SimpleAuthenticationInfo simpleAuthenticationInfo = (SimpleAuthenticationInfo)authenticationInfo;

        log.info("登陆用户的信息：{},{}",utoken.getUsername(),new String(utoken.getPassword()));
        log.info("验证的用户名：{}",(String) simpleAuthenticationInfo.getPrincipals().getPrimaryPrincipal());
        log.info("验证的口令：{}",simpleAuthenticationInfo.getCredentials());

        return true;
    }
}
