package cn.hubu.online.dao.impl;

import org.apache.commons.dbutils.QueryRunner;

import cn.hubu.online.dao.IAdminDao;
import cn.hubu.online.po.Admin;
import cn.hubu.online.po.Teacher;
import cn.hubu.online.util.TransactionManager;

/**
 * 
 * <p>
 * Description admin表相关操作
 * </p>
 *
 * @author ZhaoKunsong
 * @date 2017年11月13日
 */
public class AdminDaoImpl implements IAdminDao {
	@Override
	public void alterInfo(Admin obj, String usercode) {
		String sql = "update admin set age=? ,nation=? , idCard=? , phoneNumber=? , email=? where ano=?";
		try {
			QueryRunner runner = new QueryRunner(TransactionManager.getDataSource());
			runner.update(sql, obj.getAge(), obj.getNation(), obj.getIdCard(), obj.getPhoneNumber(), obj.getEmail(),
					usercode);
		} catch (Exception e) {
			throw new RuntimeException("修改个人信息失败！");
		}
	}
}
