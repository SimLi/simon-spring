package com.devfuns.spring.aop.proxyAOP;

public class ForumServiceImpl implements ForumService {

    public void removeTopic(int topid) {
        //PerformanceMonitor.monitorBegin("监控ForumServiceImpl的removeTopic");
        System.out.println("删除了20条数据");
        try {
            Thread.currentThread().sleep(300);
            System.out.println("模拟业务处理，当前线程休眠300毫秒" + Thread.currentThread().getName());
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
       // PerformanceMonitor.monitorEnd(); // 方法执行完，性能监控结束
    }

    public void removeForum(int forumId) {
        System.out.println("删除了forumId"+forumId+"条数据");
        try {
            Thread.currentThread().sleep(300);
            System.out.println("模拟业务处理，forumId当前线程休眠300毫秒" + Thread.currentThread().getName());
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
