package cn.hubu.online.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * @Since: JDK 1.8
 * @Author: ZhaoKunsong
 * @Description: 是否开启事务的注解
 * @Date: 2017/9/15 19:14
 **/

@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.METHOD)
public @interface Transaction {
}
