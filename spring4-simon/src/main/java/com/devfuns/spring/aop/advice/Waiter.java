package com.devfuns.spring.aop.advice;

import java.sql.SQLException;

public interface Waiter {
    // 欢迎
    void greetTo(String name);
    // 提供服务
    void serverTo(String name);

    // 事物操作异常
    void save(String name) throws SQLException;
}
