package cn.hubu.online.dao.impl;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import cn.hubu.online.dao.ILoginDao;
import cn.hubu.online.po.Login;
import cn.hubu.online.util.JDBCUtils;
import cn.hubu.online.util.TransactionManager;

/**
 * 
 * <p>
 * Description login表相关操作
 * </p>
 *
 * @author ZhaoKunsong
 * @date 2017年11月13日
 */
public class LoginDaoImpl implements ILoginDao {

	@Override
	public Login getUserByNameAndPsw(String usercode, String password) {
		String sql = "select * from login where usercode=? and password=?";
		try {
			QueryRunner runner = new QueryRunner(TransactionManager.getDataSource());
			return runner.query(sql, new BeanHandler<Login>(Login.class), usercode, password);
		} catch (Exception e) {
			throw new RuntimeException("没找到该用户");
		}
	}

	@Override
	public void alterPsw(String usercode, String newpassword) {
		String sql = "update login set password=? where usercode = ?";
		try {
			QueryRunner runner = new QueryRunner(TransactionManager.getDataSource());
			runner.update(sql, newpassword, usercode);
		} catch (Exception e) {
			throw new RuntimeException("修改密码失败");
		}

	}

}
