package com.devfuns.advisor;

import com.devfuns.spring.aop.advice.Waiter;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.testng.annotations.Test;

import java.sql.SQLException;

public class TestAdvisor {
    String path = "beans.xml";
    @Test
    public void testStaticAdvisor () {

        ApplicationContext context = new ClassPathXmlApplicationContext(path);
        Waiter waiter = (Waiter) context.getBean("staticAdvisorProxy");
        waiter.greetTo("Simon");
        waiter.serverTo("Li");

//        wait的另一个实现，由于staticAdvisor切面中，只实现了对方法的判断，所以切面只会对方法过滤，而不会对类进行过滤，此处
//        验证
        Waiter sallerWait = (Waiter) context.getBean("staticAdvisorSallerProxy");
        sallerWait.greetTo("SimonSaller");
        sallerWait.serverTo("Li");
    }

    @Test
    public void testRegexAdvisor() {
        ApplicationContext context = new ClassPathXmlApplicationContext(path);
        Waiter waiter = (Waiter)context.getBean("regexAdvisorProxy");
        waiter.serverTo("Simon");
        waiter.greetTo("Li");
        try {
            waiter.save("保存数据");
        } catch (SQLException e) {
            //e.printStackTrace();
        }
    }

    @Test
    public void testDynamicAdvisor() {
        ApplicationContext context = new ClassPathXmlApplicationContext(path);
        Waiter waiter = (Waiter) context.getBean("dynamicAdvisorProxy");
        System.out.println("-------------------------这是华丽的分割线--------------------");

        /**
         * 调用的方法输出，可以看出，在代理的时候，先调用类的静态检查，在调用方法的静态检查，然后是动态的方法检查
         * 相同的类的方法，在连续调用的时候，如果前面已经做过静态的检查，那么直接调用动态检查
         *调用getClassFilter对类进行静态检查
         调用matches(Method method, Class<?> targetClass)方法对 com.devfuns.spring.aop.advice.NavieWaiterImpl.greetTo进行静态检查
         调用matches(Method method, Class<?> targetClass)方法对 com.devfuns.spring.aop.advice.NavieWaiterImpl.greetTo进行动态检查
         * */
        waiter.greetTo("Simon");
        // 调用matches(Method method, Class<?> targetClass)方法对 com.devfuns.spring.aop.advice.NavieWaiterImpl.greetTo进行动态检查
        waiter.greetTo("宝宝");
        System.out.println("-------------------------这是华丽的分割线--------------------");
        //调用getClassFilter对类进行静态检查
//        调用matches(Method method, Class<?> targetClass)方法对 com.devfuns.spring.aop.advice.NavieWaiterImpl.serverTo进行静态检查
        waiter.serverTo("Li");
    }
}
