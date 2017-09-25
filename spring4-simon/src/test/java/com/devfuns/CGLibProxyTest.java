package com.devfuns;

import com.devfuns.spring.aop.proxyAOP.CGLibProxy;
import com.devfuns.spring.aop.proxyAOP.ForumServiceImpl;
import org.testng.annotations.Test;

public class CGLibProxyTest {

    @Test
    public void testCGLibProxy(){
        CGLibProxy cgLibProxy = new CGLibProxy();

        // 通过代理，创建代理类的实例，这里创建的其实是CGLib实现的ForumServiceImpl的子类
        ForumServiceImpl forumServiceImpl = (ForumServiceImpl) cgLibProxy.createProxy(ForumServiceImpl.class);

        // ForumServiceImpl$$EnhancerByCGLIB$$6a8a05ba@cc285f4，这里是CGLib代理ForumServiceImpl创建的特殊子类
        // 已经不再是ForumServiceImpl的势力了，所以不能代理ForumServiceImpl中的private和final方法进行代理
        System.out.println(forumServiceImpl.toString());
        forumServiceImpl.removeTopic(12);
        forumServiceImpl.removeForum(1024);

    }
}
