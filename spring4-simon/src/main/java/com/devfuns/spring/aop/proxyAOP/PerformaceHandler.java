package com.devfuns.spring.aop.proxyAOP;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

/**
 * 性能监控代理类
 * */
public class PerformaceHandler implements InvocationHandler {

    private Object target; // 要代理的目标类，及需要添加性能监控的类

    public PerformaceHandler(Object target) {
        this.target = target;
    }


    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        PerformanceMonitor.monitorBegin(method.getName()); // 开始启动性能监控
        Object obj = method.invoke(target,args); // 代理执行方法
        PerformanceMonitor.monitorEnd(); // 方法执行结束以后，记录方法执行时间
        return obj;
    }
}
