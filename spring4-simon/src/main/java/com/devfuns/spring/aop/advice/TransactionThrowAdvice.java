package com.devfuns.spring.aop.advice;

import org.springframework.aop.ThrowsAdvice;

import java.lang.reflect.Method;
import java.sql.SQLException;

public class TransactionThrowAdvice implements ThrowsAdvice {

    // 定义增强，方法名必须这样命名
    /**
     * 异常增强，并没有定义任何接口方法，在实现类中，增强方法必须afterThrowing命名，方法接受四个参数
     * Method method,  代理的方法对象
     * Object[] args,  方法参数
     * Object target   代理方法所属对象
     * 这三个参数，要么都提供，要么都不提供
     * SQLException，必须提供的异常类型，可以在同一个增强中，定义多个异常类型的增强实现，
     * Spring会根据一场类型，匹配对应的增强
     * */
    public void afterThrowing (Method method, Object[] args, Object target, SQLException sqlException) {
        System.out.println(sqlException.getMessage() + " 异常产生");
        System.out.println("事务回滚成功");
    }

    public void afterThrowing (RuntimeException runException) {
        System.out.println(runException.getMessage() + " 异常产生");
        System.out.println("事务回滚成功");
    }

    public void afterThrowing (Exception e ) {
        System.out.println(e.getMessage() + " 异常产生");
        System.out.println("事务回滚成功");
    }
}
