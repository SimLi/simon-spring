package com.devfuns.spring.aop.proxyAOP;

import net.sf.cglib.proxy.Enhancer;
import net.sf.cglib.proxy.MethodInterceptor;
import net.sf.cglib.proxy.MethodProxy;

import java.lang.reflect.Method;

/**
 * 通过CGLIB代理实现性能监控
 * */
public class CGLibProxy implements MethodInterceptor {
    private Enhancer enhancer = new Enhancer();

    // 通过字节码创建代理的类的子类
    public Object createProxy(Class clazz){
        enhancer.setSuperclass(clazz); // 设置创建的代理类的父类
        enhancer.setCallback(this);
        return enhancer.create(); // 字节码创建代理类的子类
    }

    // 拦截代理类的所有方法
    public Object intercept(Object o, Method method, Object[] objects,
                            MethodProxy methodProxy) throws Throwable {
        PerformanceMonitor.monitorBegin(o.getClass().getName()+"."+method.getName()); // 启动性能监控事件
        Object obj = methodProxy.invokeSuper(o,objects); // 执行代理类的方法
        PerformanceMonitor.monitorEnd(); // 结束性能监控事件
        return obj;
    }
}
