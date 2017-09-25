package com.devfuns.spring.aop.advice;

public interface Waiter {
    // 欢迎
    void greetTo(String name);
    // 提供服务
    void serverTo(String name);
}
