package com.devfuns.spring.aop.advisor;

import com.devfuns.spring.aop.advice.Waiter;

import java.sql.SQLException;

public class Saller implements Waiter {
    public void greetTo(String name) {
        System.out.println(" Saller greetTo " + name);
    }

    public void serverTo(String name) {
        System.out.println(" Saller serverTo " + name);
    }

    public void save(String name) throws SQLException {
        System.out.println(" Saller save " + name);
        throw new SQLException("Saller保存失败");
    }
}
