package com.ponmma.ss.util;

import lombok.extern.slf4j.Slf4j;
import org.apache.commons.mail.*;

@Slf4j
public class MailUtil {

    private static final String HOSTNAME = "smtp.qq.com";
    public static final String POP_USERNAME = "ponmma@qq.com";//此设置发送邮件的邮箱
    private static final String USERNAME = "ponmmains"; // 设置发件邮箱的显示名
    private static final String POP_PASSWORD = "pivuulgqsvhhcejg";//邮箱的授权码
    private static final String CODING = "UTF-8";

    /**
     * 普通文本邮件
     */
    public static boolean sendEmail(String toEmail,String emailSubject,String emailContent){
        SimpleEmail simpleEmail = new SimpleEmail();
        simpleEmail.setSSLOnConnect(true);
        simpleEmail.setSslSmtpPort("465");
        simpleEmail.setHostName(HOSTNAME);
        simpleEmail.setAuthentication(POP_USERNAME, POP_PASSWORD);
        simpleEmail.setCharset(CODING);
//		setEmailBase(simpleEmail);

        try {
            simpleEmail.addTo(toEmail);
            simpleEmail.setFrom(POP_USERNAME, USERNAME);
            simpleEmail.setSubject(emailSubject);
            simpleEmail.setMsg(emailContent);
            simpleEmail.send();
            return true;
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            log.error("发送邮件失败", e);
            return false;
        }

    }


    public static void main(String[] args) {
		sendEmail("ponmma@whu.edu.cn", "注册确认", "注册成功");
    }

}

