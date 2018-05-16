package cn.hubu.online.factory;

import java.io.FileReader;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Properties;

import cn.hubu.online.annotation.Transaction;
import cn.hubu.online.dao.BaseDao;
import cn.hubu.online.service.BaseService;
import cn.hubu.online.util.TransactionManager;

/**
 * @Since: JDK 1.8
 * @Author: ZhaoKunsong
 * @Description: 通用工厂类获取实现类的实例 ---> 工厂类 + 动态代理 实现AOP，并且dao中不需要区分是否开启过事务
 * @Date: 2017/9/10 21:59
 **/
public class BasicFactory {

	private static BasicFactory basicFactory = new BasicFactory();
	private static Properties properties = null;

	static {
		try {
			properties = new Properties();
			properties.load(
					new FileReader(BasicFactory.class.getClassLoader().getResource("config.properties").getPath()));

		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	private BasicFactory() {

	}

	public static BasicFactory getBasicFactory() {
		return basicFactory;
	}

	public <T extends BaseDao> T getDaoInstance(Class<T> clazz) {

		try {
			// 获取接口名
			String inName = clazz.getSimpleName();
			// 获取实现类名
			String implName = properties.getProperty(inName);
			// 返回实现类的实例
			return (T) clazz.forName(implName).newInstance();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
	}

	public <T extends BaseService> T getServiceInstance(Class<T> clazz) {

		try {
			// 获取接口名
			String inName = clazz.getSimpleName();
			// 获取实现类名
			String implName = properties.getProperty(inName);
			// 实现类的实例
			final T serviceT = (T) clazz.forName(implName).newInstance();
			T proxyInstance = (T) Proxy.newProxyInstance(serviceT.getClass().getClassLoader(),
					serviceT.getClass().getInterfaces(), new InvocationHandler() {
						@Override
						public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {

							if (method.isAnnotationPresent(Transaction.class)) {
								// 若有开启事务的注解则开启事务
								try {
									// 执行前开启事务
									TransactionManager.startTransaction();

									Object obj = method.invoke(serviceT, args);

									// 执行后提交事务
									TransactionManager.commit();

									return obj;

								} catch (InvocationTargetException e) {
									TransactionManager.rollback();
									throw new RuntimeException(e.getTargetException());
								} catch (Exception el) {
									TransactionManager.rollback();
									throw new RuntimeException(el);
								} finally {
									TransactionManager.release();
								}
							} else {
								return method.invoke(serviceT, args);
							}
						}
					});

			// 返回代理对象
			return proxyInstance;

		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
	}
}
