package com.ponmma.ss.config;

import com.ponmma.ss.interceptor.AclControlInterceptor;
import com.ponmma.ss.interceptor.HttpInterceptor;
import com.ponmma.ss.interceptor.LoginInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebAppConfigurer implements WebMvcConfigurer {

    /**
     * 添加Http拦截器
     *
     * @param registry
     */
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        //添加Http拦截器
        InterceptorRegistration interceptorRegistration = registry.addInterceptor(new HttpInterceptor());
        interceptorRegistration.addPathPatterns("/**");

        //添加登录处理拦截器
        interceptorRegistration = registry.addInterceptor(new LoginInterceptor());
        //配置拦截策略
        interceptorRegistration.addPathPatterns("/sys/**");
        interceptorRegistration.addPathPatterns("/admin/**");

        // 添加权限拦截器
        interceptorRegistration = registry.addInterceptor(new AclControlInterceptor());
        //配置拦截策略
        interceptorRegistration.addPathPatterns("/sys/**");
        interceptorRegistration.addPathPatterns("/admin/**");
    }

}
