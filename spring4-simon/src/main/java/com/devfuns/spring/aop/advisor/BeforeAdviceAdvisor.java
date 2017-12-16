package com.devfuns.spring.aop.advisor;

import org.springframework.aop.MethodBeforeAdvice;

import java.lang.reflect.Method;

/**
 * 定义一个前置增强，这里主要用于配合切面测试
 * */
public class BeforeAdviceAdvisor implements MethodBeforeAdvice {
    /**
     * Callback before a given method is invoked.
     *
     * @param method method being invoked
     * @param args   arguments to the method
     * @param target target of the method invocation. May be {@code null}.
     * @throws Throwable if this object wishes to abort the call.
     *                   Any exception thrown will be returned to the caller if it's
     *                   allowed by the method signature. Otherwise the exception
     *                   will be wrapped as a runtime exception.
     */
    public void before(Method method, Object[] args, Object target) throws Throwable {
        System.out.println(" 这里是切面的前置增强 当前执行的方法名称是: " );
        System.out.println(target.getClass().getName()+"."+method.getName());
    }
}
