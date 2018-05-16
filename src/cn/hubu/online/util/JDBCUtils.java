package cn.hubu.online.util;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import com.mchange.v2.c3p0.ComboPooledDataSource;

/**
 * @Since: JDK 1.8
 * @Author: ZhaoKunsong
 * @Description: JDBC宸ュ叿绫�
 * @Date: 2017/9/10 21:59
 **/
public class JDBCUtils {

	private static DataSource dataSource = new ComboPooledDataSource();

	public static DataSource getDataSource() {
		return dataSource;
	}

	/**
	 * 褰揇BUtils闇�瑕佹墜鍔ㄦ帶鍒朵簨鍔℃椂锛岃皟鐢ㄨ鏂规硶鑾峰緱涓�涓繛鎺�
	 *
	 * @return
	 * @throws SQLException
	 */
	public static Connection getConnection() throws SQLException {
		return dataSource.getConnection();
	}
}
