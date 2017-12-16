package com.devfuns.spring.aop.advisor;

import com.devfuns.spring.aop.advice.NavieWaiterImpl;
import org.springframework.aop.ClassFilter;
import org.springframework.aop.support.StaticMethodMatcherPointcutAdvisor;

import java.lang.reflect.Method;

/**
 * 静态方法切面，这个切面，代理所有类的greetTo方法
 * */
public class StaticMethodPointCutAdvisor extends StaticMethodMatcherPointcutAdvisor {
    /**
     * Perform static checking whether the given method matches. If this
     * returns {@code false} or if the {@link #isRuntime()} method
     * returns {@code false}, no runtime check (i.e. no.
     * {@link #matches(Method, Class, Object[])} call) will be made.
     *
     * @param method      the candidate method
     * @param targetClass the target class (may be {@code null}, in which case
     *                    the candidate class must be taken to be the method's declaring class)
     * @return whether or not this method matches statically
     */
    public boolean matches(Method method, Class<?> targetClass) {
        System.out.println(method.getName()+ "方法的 Class name == " + targetClass.getName());

        System.out.println(" 代理目标类为 ："+NavieWaiterImpl.class.isAssignableFrom(targetClass));

        return "greetTo".equals(method.getName());
    }

    /**
     * 覆盖此方法，可以实现对具体类的过滤，当然也可以在matches中，通过targetClass进行判断
     * */
//    @Override
//    public ClassFilter getClassFilter() {
//        // 实现ClassFilter接口
//        return new ClassFilter() {
//            @Override
//            public boolean matches(Class<?> clazz) {
//                return NavieWaiterImpl.class.isAssignableFrom(clazz);
//            }
//        };
//    }
}
