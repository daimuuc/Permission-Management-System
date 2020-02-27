package com.ponmma.ss;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

@SpringBootApplication
// 此注解表示动态扫描DAO接口所在包
@MapperScan("com.ponmma.ss.dao")
@EnableAspectJAutoProxy
public class SsApplication {
    public static void main(String[] args) {
        SpringApplication.run(SsApplication.class, args);
    }
}
