package com.ponmma.ss.service;

import com.ponmma.ss.param.DeptParam;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
@Slf4j
public class SysDeptServiceTest {
    @Autowired
    private SysDeptService sysDeptService;

    @Test
    public void testSave() {
        DeptParam deptParam = new DeptParam();
        deptParam.setName("视觉技术部");
        deptParam.setSeq(2);
        sysDeptService.save(deptParam);
        log.info("{}", "success");
    }
}
