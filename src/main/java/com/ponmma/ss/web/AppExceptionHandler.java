package com.ponmma.ss.web;

import com.ponmma.ss.common.JsonData;
import com.ponmma.ss.exception.ParamException;
import com.ponmma.ss.exception.PermissionException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

@Slf4j
@ControllerAdvice
public class AppExceptionHandler {

    @ExceptionHandler(RuntimeException.class)
    @ResponseBody
    public JsonData RuntimeExceptionHandler(Exception e) {
        log.error(e.getMessage());
        return JsonData.fail(e.getMessage());
    }

}
