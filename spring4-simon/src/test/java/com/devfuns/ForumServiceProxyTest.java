package com.devfuns;

import com.devfuns.spring.aop.proxyAOP.ForumService;
import com.devfuns.spring.aop.proxyAOP.ForumServiceImpl;
import com.devfuns.spring.aop.proxyAOP.PerformaceHandler;
import org.testng.annotations.Test;

import java.lang.reflect.Proxy;

public class ForumServiceProxyTest {

    @Test
    public void proxyTest(){
        ForumService proxyTarget = new ForumServiceImpl();
        PerformaceHandler handler = new PerformaceHandler(proxyTarget);
        ForumService proxy = (ForumService) Proxy.newProxyInstance(proxyTarget.getClass().getClassLoader(),
                proxyTarget.getClass().getInterfaces(),handler);
        System.out.println(proxyTarget.toString());
        System.out.println(proxy.toString()); // 代理所有方法，toString调用之前，也执行了监控
        proxy.removeForum(12);
        proxy.removeTopic(1024);
    }
}
