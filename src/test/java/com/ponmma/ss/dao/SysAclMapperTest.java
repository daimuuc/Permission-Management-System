package com.ponmma.ss.dao;

import com.ponmma.ss.entity.SysAcl;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
@Slf4j
public class SysAclMapperTest {
    @Autowired
    private SysAclMapper sysAclMapper;

    @Test
    public void testInsertSelective() {
        SysAcl sysAcl = new SysAcl();
        sysAcl.setName("武汉加油");
        int effectNum = sysAclMapper.insertSelective(sysAcl);
        Assertions.assertEquals(1, effectNum);
        log.info("id:{}", sysAcl.getId());
    }

}
