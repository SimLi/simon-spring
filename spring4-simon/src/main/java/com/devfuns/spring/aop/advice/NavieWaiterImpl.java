package com.devfuns.spring.aop.advice;

import java.sql.SQLException;

public class NavieWaiterImpl implements Waiter {
    public void greetTo(String name) {
        System.out.println(" greeto to " + name);
    }

    public void serverTo(String name) {
        System.out.println(" serverTo " + name);
    }

    public void save(String name) throws SQLException {
        System.out.println(" 事物操作异常....");
        throw new SQLException("违反约束验证");
    }
}
