package com.devfuns.spring.aop.advice;

public class NavieWaiterImpl implements Waiter {
    public void greetTo(String name) {
        System.out.println(" greeto to " + name);
    }

    public void serverTo(String name) {
        System.out.println(" serverTo " + name);
    }
}
