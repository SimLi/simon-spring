package com.devfuns.spring.aop.advisor;

import com.devfuns.spring.aop.advice.NavieWaiterImpl;
import org.springframework.aop.ClassFilter;
import org.springframework.aop.support.DynamicMethodMatcherPointcut;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

public class DynamicAdvisor extends DynamicMethodMatcherPointcut {
    private static List<String> spPerson = new ArrayList<String>();
    static {
        spPerson.add("Simon");
        spPerson.add("Li");
    }

    public boolean matches(Method method, Class<?> targetClass, Object[] args) {
        System.out.println("调用matches(Method method, Class<?> targetClass)方法对 " +
                targetClass.getName()+"." + method.getName() + "进行动态检查");
        if (args != null && args.length >0) { // 对方法的参数进行判断，只有传入Simon和Li的时候，进行切面
            return spPerson.contains(args[0]);
        }
        return false;
    }

    @Override
    public ClassFilter getClassFilter() { // 对类进行静态检查
        System.out.println("调用getClassFilter对类进行静态检查");
        return new ClassFilter() {
            public boolean matches(Class<?> clazz) {
                return NavieWaiterImpl.class.isAssignableFrom(clazz);
            }
        };
    }

    /**
     * Can override to add preconditions for dynamic matching. This implementation
     * always returns true.
     *
     * @param method
     * @param targetClass
     */
    @Override
    public boolean matches(Method method, Class<?> targetClass) { // 对方法进行静态检查
        System.out.println("调用matches(Method method, Class<?> targetClass)方法对 " +
        targetClass.getName()+"." + method.getName() + "进行静态检查");
        return "greetTo".equals(method.getName());
    }
}
