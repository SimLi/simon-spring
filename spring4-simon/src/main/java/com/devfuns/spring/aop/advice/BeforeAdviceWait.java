package com.devfuns.spring.aop.advice;

import org.springframework.aop.MethodBeforeAdvice;

import java.lang.reflect.Method;

public class BeforeAdviceWait implements MethodBeforeAdvice {

    // 实现前置增强，就是在方法执行之前，执行该方法
    public void before(Method method, Object[] objects, Object o) throws Throwable {
        if (objects.length>0) {
            String clientName = (String)objects[0]; // 增强的方法的参数
            System.out.println(" Hello " + clientName+ ", Welcome you !");
        }

    }
}
