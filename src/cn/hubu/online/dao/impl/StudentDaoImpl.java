package cn.hubu.online.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.ArrayHandler;
import org.apache.commons.dbutils.handlers.ArrayListHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.MapHandler;

import com.sun.org.apache.bcel.internal.generic.NEW;

import cn.hubu.online.dao.IStudentDao;
import cn.hubu.online.po.Student;
import cn.hubu.online.po.StudentCourse;
import cn.hubu.online.po.Teacher;
import cn.hubu.online.util.TransactionManager;

/**
 * 
 * <p>
 * Description student表相关操作
 * </p>
 *
 * @author ZhaoKunsong
 * @date 2017年11月13日
 */
public class StudentDaoImpl implements IStudentDao {
	@Override
	public void alterInfo(Student obj, String usercode) {
		String sql = "update student set sex=?,age=? ,nation=?, idCard=? ,phoneNumber=? , email=? where sno=?";
		// String sql = "update student set sex=? where sno=?";

		try {
			QueryRunner runner = new QueryRunner(TransactionManager.getDataSource());
			runner.update(sql, obj.getSex(), obj.getAge(), obj.getNation(), obj.getIdCard(), obj.getPhoneNumber(),
					obj.getEmail(), usercode);
			// runner.update(sql,obj.getSex(),usercode);

		} catch (Exception e) {
			throw new RuntimeException("修改个人信息失败！");
		}
	}

	@Override
	public List<Student> getStudentInfo() {
		String sql = "select * from student";
		try {
			QueryRunner runner = new QueryRunner(TransactionManager.getDataSource());
			return runner.query(sql, new BeanListHandler<Student>(Student.class));
		} catch (Exception e) {
			throw new RuntimeException("查询学生信息失败！！");
		}
	}

	@Override
	public List<StudentCourse> getStudentCourseBySno(String sno) {

		try {
			String sql = "select * from studentcourse where sno = ?";
			QueryRunner queryRunner = new QueryRunner(TransactionManager.getDataSource());
			return queryRunner.query(sql, new BeanListHandler<StudentCourse>(StudentCourse.class), sno);
		} catch (Exception e) {
			throw new RuntimeException("根据sno查询学生信息失败！！");
		}
	}
}
