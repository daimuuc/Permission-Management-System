package com.ponmma.ss.util;

import lombok.extern.slf4j.Slf4j;
import org.jasypt.encryption.StringEncryptor;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
@Slf4j
public class EncryptorTest {

    @Autowired
    StringEncryptor encryptor;

    @Test
    public void testEncryptor() {
        String name = encryptor.encrypt("www.ponma.cn");
        System.out.println(name);
    }

}
