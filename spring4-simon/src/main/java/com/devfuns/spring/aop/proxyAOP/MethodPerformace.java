package com.devfuns.spring.aop.proxyAOP;

public class MethodPerformace {
    private long begin; // 方法开始执行的时间
    private long end; // 方法执行结束的时间
    private String methodName;

    public MethodPerformace(String methodName) {
        setInfo(methodName);
    }

    public void setInfo (String methodName) {
        this.begin = System.currentTimeMillis(); // 方法开始执行的时间
        this.methodName = methodName;
    }

    // 打印出方法执行的时间
    public void printMethodMonitor() {
        this.end = System.currentTimeMillis();
        long time = this.end - begin;
        System.out.println(methodName+" 方法执行的时间是" + time + "毫秒");
    }

}
