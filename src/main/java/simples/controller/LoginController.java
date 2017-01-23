package simples.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.UnauthorizedException;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by jinli on 2017/1/20.
 */
@Controller
public class LoginController {

    @RequestMapping("/doLogin")
    public String doLogin(HttpServletRequest request,Model model){
        String msg="";
        String username = request.getParameter("email");
        String password = request.getParameter("password");
        UsernamePasswordToken token = new UsernamePasswordToken(username,password);
        token.setRememberMe(true);
        Subject subject = SecurityUtils.getSubject();
        try{
            //调用realm的dogetauthenticationInfo
            subject.login(token);
            if(subject.isAuthenticated()){
                subject.getSession().setAttribute("currentUser",subject.getPrincipal().toString());
                return "redirect:/index.do";
            }else{
                //未登录或登陆失败
                return "login";
            }
        }catch(IncorrectCredentialsException e){
            msg="登陆密码错误，password for account" + token.getPrincipal()+"was correct";
            model.addAttribute("message",msg);
            System.out.println(msg);
        }catch(ExcessiveAttemptsException e){
            msg="登陆失败次数过多";
            model.addAttribute("messgae",msg);
            System.out.println(msg);
        }catch(LockedAccountException e){
            msg="账号已被禁用，the account for username" + token.getPrincipal() +"was locked";
            model.addAttribute("message",msg);
            System.out.println(msg);
        }catch(DisabledAccountException e){
            msg="账号已被禁用，the account for uaername" + token.getPrincipal()+"was disabled";
            model.addAttribute("message",msg);
            System.out.println(msg);
        }catch (ExpiredCredentialsException e){
            msg="账号已过期，the account for username"+token.getPrincipal()+"was expired";
            model.addAttribute("message",msg);
            System.out.println(msg);
        }catch(UnknownAccountException e){
            msg="账号不存在，there is no user with username of" + token.getPrincipal();
            model.addAttribute("message",msg);
            System.out.println(msg);
        }catch(UnauthorizedException e){
            msg="您没有得到相应的授权"+ e.getMessage();
            model.addAttribute("message",msg);
            System.out.println(msg);
        }
        return "login";
    }

    @RequestMapping("/login")
    public ModelAndView login(){
        ModelAndView modelAndView = new ModelAndView("login");
        return modelAndView;
    }
}
