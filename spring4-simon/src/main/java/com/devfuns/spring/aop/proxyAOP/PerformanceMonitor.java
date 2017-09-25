package com.devfuns.spring.aop.proxyAOP;

public class PerformanceMonitor {
    private static ThreadLocal<MethodPerformace> threadLocal = new ThreadLocal<MethodPerformace>();

    public static void monitorBegin(String methodName) {
        System.out.println("性能监控开始...."+methodName);
        MethodPerformace mp = threadLocal.get();
        if (mp == null) {
            mp = new MethodPerformace(methodName);
            threadLocal.set(mp);
        } else {
            mp.setInfo(methodName);
        }
    }

    public static void monitorEnd() {
        System.out.println("性能监控结束");
        MethodPerformace mp = threadLocal.get();
        mp.printMethodMonitor();
    }
}
