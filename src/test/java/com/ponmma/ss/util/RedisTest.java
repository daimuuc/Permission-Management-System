package com.ponmma.ss.util;

import com.ponmma.ss.entity.SysDept;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.RedisTemplate;

import javax.annotation.Resource;
import java.util.Set;
import java.util.concurrent.TimeUnit;

@SpringBootTest
@Slf4j
public class RedisTest {
    @Resource(name = "redisTemplate")
    private RedisTemplate<String, Object> redisTemplate;

    @Test
    public void testRedis() {
        // 定义dept
        SysDept sysDept = SysDept.builder().name("后勤部").parentId(0).
                remark("").operator("system").build();

//        // 插入redis
//        try {
//             redisTemplate.opsForValue().set("test", sysDept);
//        }catch (Exception e) {
//            log.error("error", e.getMessage());
//        }

//        // 插入redis并设置缓存时间
//        try {
//            redisTemplate.opsForValue().set("test", sysDept, 60*10, TimeUnit.SECONDS);
//        }catch (Exception e) {
//            log.error("error", e.getMessage());
//        }
//        //根据key获取过期时间
//        log.info("Expire time: {}", redisTemplate.getExpire("test"));

//        // 获取redis
//        if (redisTemplate.hasKey("test")) {
//            sysDept = (SysDept) redisTemplate.opsForValue().get("test");
//            System.out.println(sysDept);
//        }

//        // 删除redis
//        redisTemplate.delete("test");
//        Assertions.assertEquals(false, redisTemplate.hasKey("test"));
//        log.info("{}", redisTemplate.hasKey("test"));

        // 模糊匹配删除
        Set<String> keys = redisTemplate.keys("" + "*");
        System.out.println(keys);
        redisTemplate.delete(keys);
//        Assertions.assertEquals(false, redisTemplate.hasKey("test"));
//        log.info("{}", redisTemplate.hasKey("test"));
    }

}
