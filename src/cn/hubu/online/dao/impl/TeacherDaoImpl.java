package cn.hubu.online.dao.impl;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.sun.org.apache.bcel.internal.generic.NEW;

import cn.hubu.online.dao.ITeacherDao;
import cn.hubu.online.po.Teacher;
import cn.hubu.online.util.TransactionManager;

/**
 * 
 * <p>
 * Description teacher表相关操作
 * </p>
 *
 * @author ZhaoKunsong
 * @date 2017年11月13日
 */
public class TeacherDaoImpl implements ITeacherDao {

	@Override
	public void alterInfo(Teacher obj, String usercode) {
		String sql = "update teacher set sex=? ,age=? , nation=? , idCard=? , phoneNumber=? , email=? where tno=?";
		// String sql = "update teacher set nation = ? where tno = ?";
		try {
			QueryRunner runner = new QueryRunner(TransactionManager.getDataSource());
			// runner.update(sql, obj.getNation(),usercode);
			runner.update(sql, obj.getSex(), obj.getAge(), obj.getNation(), obj.getIdCard(), obj.getPhoneNumber(),
					obj.getEmail(), usercode);
		} catch (Exception e) {
			throw new RuntimeException("修改个人信息失败！");
		}
	}

	@Override
	public List<Teacher> getTeacherInfo() {
		String sql = "select * from teacher";
		try {
			QueryRunner runner = new QueryRunner(TransactionManager.getDataSource());
			return runner.query(sql, new BeanListHandler<Teacher>(Teacher.class));
		} catch (Exception e) {
			throw new RuntimeException("查询教师信息失败!!!");
		}
	}

	@Override
	public Teacher etTeacherInfoByTno(String tno) {
		String sql = "select * from teacher where tno = ?";
		try {
			QueryRunner runner = new QueryRunner(TransactionManager.getDataSource());
			return runner.query(sql, new BeanHandler<Teacher>(Teacher.class), tno);
		} catch (Exception e) {
			throw new RuntimeException("根据tno查询教师信息失败!!!");
		}
	}

}
