package com.devfuns.advice;

import com.devfuns.spring.aop.advice.*;
import org.springframework.aop.BeforeAdvice;
import org.springframework.aop.framework.ProxyFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.testng.annotations.Test;

public class BeforeAdviceTest {

    @Test
    public void testBeforeAdvice() {
        Waiter waiter = new NavieWaiterImpl(); // 服务实力
        BeforeAdvice beforeAdvice = new BeforeAdviceWait(); // 增强实例
        ProxyFactory proxyFactory = new ProxyFactory(); // 创建代理工厂
        proxyFactory.setTarget(waiter); // 设置代理工厂要代理的对象，通过类代理，使用cglib创建代理
        proxyFactory.setInterfaces(waiter.getClass().getInterfaces()); // 设置接口形式代理，使用JDK代理
        proxyFactory.setOptimize(true); // 使用代理优化，这里会使用cglib代理，不论是否设置了接口
        proxyFactory.addAdvice(beforeAdvice); // 代理工厂添加增强，可以添加多个类型的增强.....

        Waiter waiterProxy = (Waiter) proxyFactory.getProxy(); // 通过代理工厂，生成代理对象
        waiterProxy.greetTo("Simon"); // 代理对象，执行方法
        waiterProxy.serverTo("Li");
        System.out.println(waiter.toString());
        System.out.println(waiterProxy.toString());
    }

    @Test
    public void testBeforeAdviceBeans() {
        String beansPath = "beans.xml";
        ApplicationContext context = new ClassPathXmlApplicationContext(beansPath);
        Waiter waiter = (Waiter) context.getBean("waitProxy");
        waiter.serverTo("Simon.Li");
    }

    @Test
    public void testAfterAdvice() {
        Waiter waiter = new NavieWaiterImpl();
        AfterAdviceWait afterAdviceWait = new AfterAdviceWait();
        BeforeAdviceWait beforeAdviceWait = new BeforeAdviceWait();
        ProxyFactory proxyFactory = new ProxyFactory();
        proxyFactory.setTarget(waiter);
        proxyFactory.addAdvice(afterAdviceWait);
        proxyFactory.addAdvice(beforeAdviceWait);
        Waiter proxyWait = (Waiter) proxyFactory.getProxy();
        proxyWait.greetTo("Li");
        proxyWait.serverTo("Simon");
    }

    /**
     * 环绕增强
     * */
    @Test
    public void testMethodIntercept() {
        Waiter waiter = new NavieWaiterImpl();
        MethodInterceptorAdvice methodInterceptorAdvice = new MethodInterceptorAdvice();
        ProxyFactory proxyFactory = new ProxyFactory();
        proxyFactory.setTarget(waiter);
        proxyFactory.addAdvice(methodInterceptorAdvice);
        Waiter proxyWait = (Waiter) proxyFactory.getProxy();
        proxyWait.greetTo("Simon");
        proxyWait.serverTo("Li");
    }

    @Test
    public void testMethodInterceptBeans() {
        String path = "beans.xml";
        ApplicationContext context = new ClassPathXmlApplicationContext(path);
        Waiter proxBeanAdvice = (Waiter) context.getBean("waitInterProxy");
        proxBeanAdvice.serverTo("Simon");
        proxBeanAdvice.greetTo("Li");
    }

}
