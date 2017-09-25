package com.devfuns.spring.aop.advice;

import org.aopalliance.intercept.MethodInterceptor;
import org.aopalliance.intercept.MethodInvocation;

/**
 * 环绕增强
 * */
public class MethodInterceptorAdvice implements MethodInterceptor {
    public Object invoke(MethodInvocation methodInvocation) throws Throwable {
        Object[] args = methodInvocation.getArguments();
        // 方法执行之前，执行欢迎语句，织入前置内容
        if (args != null && args.length > 0) {
            System.out.println(" HELLO " + args[0] + " Welcome you ");
        }
        Object object = methodInvocation.proceed();
        System.out.println(methodInvocation.getMethod().getName() + " 方法执行结束....");
        return object;
    }
}
