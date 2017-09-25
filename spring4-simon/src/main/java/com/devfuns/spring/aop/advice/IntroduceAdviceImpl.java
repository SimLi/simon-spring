package com.devfuns.spring.aop.advice;

import org.aopalliance.intercept.MethodInvocation;
import org.springframework.aop.support.DelegatingIntroductionInterceptor;

/**
 * 引介增强，添加性能监控
 * */
public class IntroduceAdviceImpl extends DelegatingIntroductionInterceptor implements IntroduceAdvice {
    // 当前线程的性能监控状态
    private ThreadLocal<Boolean> monitorStatusMap = new ThreadLocal<Boolean>();

    public void setMonitorStatus(boolean active) {
        monitorStatusMap.set(active);
    }


    /**
     * Subclasses may need to override this if they want to perform custom
     * behaviour in around advice. However, subclasses should invoke this
     * method, which handles introduced interfaces and forwarding to the target.
     *
     * @param mi
     */
    @Override
    public Object invoke(MethodInvocation mi) throws Throwable {
        if (monitorStatusMap.get() != null && monitorStatusMap.get()) {
            Long start = System.currentTimeMillis();
            System.out.println("监控开始");
            Object obj = super.invoke(mi);
            System.out.println("性能监控开启，"+ mi.getMethod().getName()+" 执行时间为" + (System.currentTimeMillis()-start));
            System.out.println("监控结束");
            return obj;
        } else {
            System.out.println("引介增强，性能监控未开启");
            return super.invoke(mi);
        }
    }
}
