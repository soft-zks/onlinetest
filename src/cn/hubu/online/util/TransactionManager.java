package cn.hubu.online.util;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.apache.commons.dbutils.DbUtils;

import javax.sql.DataSource;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.sql.Connection;
import java.sql.SQLException;

/**
 * @Since: JDK 1.8
 * @Author: ZhaoKunsong
 * @Description: 数据库连接的管理工具 ---> ThreadLocal + 注解 实现事务管理
 * @Date: 2017/9/15 16:58
 **/
public class TransactionManager {

	// 数据源
	private static DataSource dataSource = new ComboPooledDataSource();

	// 是否开启过事务
	private static ThreadLocal<Boolean> flag_local = new ThreadLocal<Boolean>() {

		@Override
		protected Boolean initialValue() {
			return false;
		}
	};

	private static ThreadLocal<Connection> connection_local = new ThreadLocal<>(); // 连接的代理对象
	private static ThreadLocal<Connection> real_connection = new ThreadLocal<>(); // 真实的连接

	private TransactionManager() throws SQLException {
	}

	public static DataSource getDataSource() throws SQLException {

		if (flag_local.get()) {
			// 如果开启过事务，则返回相同的数据连接
			return (DataSource) Proxy.newProxyInstance(dataSource.getClass().getClassLoader(),
					dataSource.getClass().getInterfaces(), new InvocationHandler() {
						@Override
						public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {

							if ("getConnection".equals(method.getName())) {
								return connection_local.get();
							} else {
								return method.invoke(dataSource, args);
							}
						}
					});

		} else {
			// 如果没有开启事务则返回普通的数据源
			return dataSource;
		}
	}

	public static void commit() throws SQLException {
		DbUtils.commitAndCloseQuietly(connection_local.get());
	}

	public static void rollback() throws SQLException {
		DbUtils.rollbackAndCloseQuietly(connection_local.get());
	}

	public static void startTransaction() throws SQLException {
		flag_local.set(true);
		final Connection connection = dataSource.getConnection();
		connection.setAutoCommit(false);
		real_connection.set(connection);

		Connection proxyConnection = (Connection) Proxy.newProxyInstance(connection.getClass().getClassLoader(),
				connection.getClass().getInterfaces(), new InvocationHandler() {
					@Override
					public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {

						if ("close".equals(method.getName())) {
							return null;
						} else {
							return method.invoke(connection, args);
						}
					}
				});

		connection_local.set(proxyConnection);
	}

	public static void release() throws SQLException {
		DbUtils.closeQuietly(real_connection.get());
		real_connection.remove();
		connection_local.remove();
		flag_local.remove();
	}

}
