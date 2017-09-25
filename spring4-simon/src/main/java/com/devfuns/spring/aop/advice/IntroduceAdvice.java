package com.devfuns.spring.aop.advice;

/**
 * 定义引介增强的接口
 * */
public interface IntroduceAdvice {
    // 性能监控，参数指定，是否启用监控
    void setMonitorStatus(boolean active);
}
