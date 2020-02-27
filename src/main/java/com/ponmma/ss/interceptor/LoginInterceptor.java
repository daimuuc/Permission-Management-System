package com.ponmma.ss.interceptor;

import com.ponmma.ss.common.RequestHolder;
import com.ponmma.ss.entity.SysUser;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;

/**
 * 登录验证拦截器
 *
 * @author ponmma
 */
public class LoginInterceptor implements HandlerInterceptor {
    /**
     * 主要做事前拦截，即用户操作发生前，改写preHandle里的逻辑，进行拦截
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        // 从session中取出用户信息来
        SysUser sysUser = (SysUser) request.getSession().getAttribute("user");

        // 若不满足登录验证，则直接跳转到帐号登录页面
        if (sysUser == null) {
            String path = "/signin.jsp";
            response.sendRedirect(path);
            return false;
        }

        RequestHolder.add(sysUser);
        RequestHolder.add(request);
        return true;
    }

}
