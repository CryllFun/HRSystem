package com.servlet;

import com.bean.User;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

//拦截器
public class LoginInterceptor extends HandlerInterceptorAdapter {
    private List<String> excludeUrls;

    public void setExcludeUrls(List<String> excludeUrls) {
        this.excludeUrls = excludeUrls;
    }
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        System.out.println("------通过拦截器-----");
        //如果url存在于excludeUrls里面，就不拦截
        String path = request.getServletPath();
        for(String url:excludeUrls) {
            if(path.endsWith(url)) {
                return true;
            }
        }

        //否则的话判断是否登录，如果没有登录，就拦截，返回登录页面
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if (user == null) {
            System.out.println("未登录,被拦截");
            request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request, response);
            return false;
        }
        return true;
    }
}
