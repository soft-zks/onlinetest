package cn.hubu.online.dao.impl;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.sun.org.apache.bcel.internal.generic.NEW;

import cn.hubu.online.dao.ITeacherCourseDao;
import cn.hubu.online.po.TeacherCourse;
import cn.hubu.online.util.TransactionManager;

/**
 * 
 * <p>
 * Description teacherCourse表相关操作
 * </p>
 *
 * @author ZhaoKunsong
 * @date 2017年11月13日
 */
public class TeacherCourseDaoImpl implements ITeacherCourseDao {

	@Override
	public List<TeacherCourse> getCourseByTno(String tno) {
		String sql = "select * from teachercourse where tno = ?";
		// System.out.println(tno);
		try {
			QueryRunner runner = new QueryRunner(TransactionManager.getDataSource());
			return runner.query(sql, new BeanListHandler<TeacherCourse>(TeacherCourse.class), tno);
		} catch (Exception e) {
			throw new RuntimeException("没有查到该教师教授的课程！！");
		}
	}

}
