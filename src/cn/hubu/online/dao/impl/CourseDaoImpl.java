package cn.hubu.online.dao.impl;

import java.util.List;

import javax.management.RuntimeErrorException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ColumnListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.sun.org.apache.bcel.internal.generic.NEW;

import cn.hubu.online.dao.ICourseDao;
import cn.hubu.online.po.Course;
import cn.hubu.online.util.TransactionManager;

/**
 * 
 * <p>
 * Description course表相关操作
 * </p>
 *
 * @author ZhaoKunsong
 * @date 2017年11月13日
 */
public class CourseDaoImpl implements ICourseDao {

	@Override
	public List<Course> getCourse() {

		try {
			String sql = "select * from course";
			QueryRunner queryRunner = new QueryRunner(TransactionManager.getDataSource());
			List<Course> courses = queryRunner.query(sql, new BeanListHandler<Course>(Course.class));
			return courses;
		} catch (Exception e) {
			// TODO: handle exception
			throw new RuntimeException("查询课程信息失败");
		}

	}

	@Override
	public String findCnoByCname(String cname) {
		try {
			String sql = "select cno from course where cname =?";
			QueryRunner runner = new QueryRunner(TransactionManager.getDataSource());
			return (String) runner.query(sql, new ScalarHandler("cno"), cname);
		} catch (Exception e) {
			throw new RuntimeException("你所要查找的课程不存在");
		}
	}

	@Override
	public void addCourse(Course course) {
		String sql = "insert into course(cno,cname,college) values(?,?,?)";
		try {
			QueryRunner runner = new QueryRunner(TransactionManager.getDataSource());
			runner.update(sql, course.getCno(), course.getCname(), course.getCollege());
		} catch (Exception e) {
			throw new RuntimeException("添加课程失败！！");
		}

	}

	@Override
	public void setTestStatus(String cno, String teststatus) {
		try {
			String sql = "update course set teststatus=? where cno=?";
			QueryRunner queryRunner = new QueryRunner(TransactionManager.getDataSource());
			queryRunner.update(sql, teststatus, cno);
		} catch (Exception e) {

			throw new RuntimeException("设置考试开关失败！！");
		}
	}

	@Override
	public Course getCourseNameByCno(String cno) {

		try {
			String sql = "select * from course where cno = ? ";
			QueryRunner queryRunner = new QueryRunner(TransactionManager.getDataSource());
			return queryRunner.query(sql, new BeanHandler<Course>(Course.class), cno);
		} catch (Exception e) {
			throw new RuntimeException("查询课程失败");

		}
	}

	@Override
	public Course getLsatCourse() {
		try {
			String sql = "select * from course order by cno desc limit 1 ";
			QueryRunner queryRunner = new QueryRunner(TransactionManager.getDataSource());
			return queryRunner.query(sql, new BeanHandler<Course>(Course.class));
		} catch (Exception e) {
			throw new RuntimeException("添加课程失败");

		}
	}
}
