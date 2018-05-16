package cn.hubu.online.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.ArrayListHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import cn.hubu.online.dao.IStudentCourseDao;
import cn.hubu.online.po.StudentCourse;

import cn.hubu.online.util.TransactionManager;
import cn.hubu.online.vo.QuerySelectVo;

/**
 * 
 * <p>
 * Description studentCourse表相关操作
 * </p>
 *
 * @author ZhaoKunsong
 * @date 2017年11月13日
 */
public class StudentCourseDaoImpl implements IStudentCourseDao {

	@Override
	public List<StudentCourse> getCourseByCno(String cno) {
		String sql = "select * from studentcourse where cno = ?";
		try {
			QueryRunner runner = new QueryRunner(TransactionManager.getDataSource());
			return runner.query(sql, new BeanListHandler<StudentCourse>(StudentCourse.class), cno);
		} catch (Exception e) {
			throw new RuntimeException("根据课程号查询学生信息不成功！！");
		}
	}

	@Override
	public void updateStudentScore(StudentCourse studentcourses) {
		String sql = "update studentcourse set usualScore=?,sumScore=?,status=? where id=?";
		try {
			QueryRunner runner = new QueryRunner(TransactionManager.getDataSource());
			runner.update(sql, studentcourses.getUsualScore(), studentcourses.getSumScore(), studentcourses.getStatus(),
					studentcourses.getId());
		} catch (Exception e) {
			throw new RuntimeException("更新学生成绩失败!!!");
		}

	}

	@Override
	public List<StudentCourse> getSelsctScore(String usercode) {
		String sql = "select * from studentcourse where sno = ?";
		try {
			QueryRunner runner = new QueryRunner(TransactionManager.getDataSource());
			return runner.query(sql, new BeanListHandler<StudentCourse>(StudentCourse.class), usercode);
		} catch (Exception e) {
			throw new RuntimeException("根据课程号查询学生信息不成功！！");
		}
	}

	@Override
	public List<StudentCourse> getStuScoreByCond(String collegeName, String className, String cname) {
		String sql = "SELECT sc.sno, sc.sname, sc.cname,sc.usualScore,paperScore,sumScore";
		sql += " FROM student s,studentcourse sc ,course c ";
		sql += "where s.sno=sc.sno and c.cno = sc.cno ";
		sql += "and 1=1";
		List<Object> list = new ArrayList<Object>();
		if (collegeName != null && !"".equals(collegeName)) {
			sql += " and s.college = ?";
			list.add(collegeName);
		}
		if (className != null && !"".equals(className)) {
			sql += " and s.className = ? ";
			list.add(className);
		}
		if (cname != null && !"".equals(cname)) {
			sql += " and sc.cname = ? ";
			list.add(cname);
		}
		/*
		 * if (list.size()>0) { for(Object object : list){
		 * System.out.println(object); } }
		 */
		try {
			QueryRunner runner = new QueryRunner(TransactionManager.getDataSource());
			if (list.size() <= 0) {
				return runner.query(sql, new BeanListHandler<StudentCourse>(StudentCourse.class));
			} else {
				return runner.query(sql, new BeanListHandler<StudentCourse>(StudentCourse.class), list.toArray());
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("条件查询题目失败！！");
		}
	}

	@Override
	public List<StudentCourse> getStuScoreByCond(QuerySelectVo qSelectVo) {
		String sql = "SELECT sc.sno, sc.sname, sc.cname,sc.usualScore,paperScore,sumScore, sc.status";
		sql += " FROM student s,studentcourse sc ,course c ";
		sql += "where s.sno=sc.sno and c.cno = sc.cno ";
		sql += "and 1=1";
		List<Object> list = new ArrayList<Object>();
		if (qSelectVo.getCollege() != null && !"".equals(qSelectVo.getCollege())) {
			sql += " and s.college = ?";
			list.add(qSelectVo.getCollege());
		}
		if (qSelectVo.getClassName() != null && !"".equals(qSelectVo.getClassName())) {
			sql += " and s.className = ? ";
			list.add(qSelectVo.getClassName());
		}
		if (qSelectVo.getCname() != null && !"".equals(qSelectVo.getCname())) {
			sql += " and sc.cname = ? ";
			list.add(qSelectVo.getCname());
		}
		/*
		 * if (list.size()>0) { for(Object object : list){
		 * System.out.println(object); } }
		 */
		try {
			QueryRunner runner = new QueryRunner(TransactionManager.getDataSource());
			if (list.size() <= 0) {
				return runner.query(sql, new BeanListHandler<StudentCourse>(StudentCourse.class));
			} else {
				return runner.query(sql, new BeanListHandler<StudentCourse>(StudentCourse.class), list.toArray());
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("条件查询题目失败！！");
		}
	}

	@Override
	public void updateScore(StudentCourse stuCous) {
		String sql = "update studentcourse set usualScore=?,sumScore=? where sno=? and cname=?";
		try {
			QueryRunner runner = new QueryRunner(TransactionManager.getDataSource());
			runner.update(sql, stuCous.getUsualScore(), stuCous.getSumScore(), stuCous.getSno(), stuCous.getCname());
		} catch (Exception e) {
			throw new RuntimeException("更新学生成绩失败!!!");
		}
	}

	@Override
	public int changeStatus(String sno, String status, String cno) {

		try {
			int result = 0;
			String sql = "update studentcourse set teststatus = ? where sno= ? and cno = ? ";
			QueryRunner runner = new QueryRunner(TransactionManager.getDataSource());
			runner.update(sql, status, sno, cno);
			return result;
		} catch (Exception e) {
			throw new RuntimeException("更新学生成绩失败!!!");
		}

	}

	@Override
	public String[] getAllSnoByCno(String cno) {

		try {

			String sql = "select sno from studentcourse where cno = ? ";
			QueryRunner queryRunner = new QueryRunner(TransactionManager.getDataSource());
			List<Object[]> lists = queryRunner.query(sql, new ArrayListHandler(), cno);
			String[] strs = new String[lists.size()];
			for (int i = 0; i < lists.size(); i++) {
				strs[i] = (String) lists.get(i)[0];
			}

			return strs;

		} catch (Exception e) {
			throw new RuntimeException("查询学号列表失败");
		}
	}

	@Override
	public int updatePaperScore(String sno, String cno) {

		// 计算出学生该门课的总分，然后插入学生选课表
		try {

			int result = 0;

			String sql = "update studentcourse set paperScore = " + " (select SUM(practicalScore)"
					+ " from studentexamination " + " where sno = ? and cno = ? ) " + " where sno = ? and cno = ? ";
			QueryRunner queryRunner = new QueryRunner(TransactionManager.getDataSource());
			result = queryRunner.update(sql, sno, cno, sno, cno);

			return result;

		} catch (Exception e) {
			throw new RuntimeException("计算出学生该门课的总分，然后插入学生选课表失败");
		}

	}

	@Override
	public void updateTestStatus(StudentCourse sCourse) {
		try {
			String sql = "update studentcourse set testsatus=? where cno=?";
			QueryRunner runner = new QueryRunner(TransactionManager.getDataSource());
			runner.update(sql, sCourse.getTeststatus(), sCourse.getCno());
		} catch (Exception e) {
			throw new RuntimeException("设置系统开关失败！！！");
		}

	}

	@Override
	public void setTestStatus(String cno, String teststatus) {
		try {
			String sql = "update studentcourse set teststatus=? where cno=?";
			QueryRunner queryRunner = new QueryRunner(TransactionManager.getDataSource());
			queryRunner.update(sql, teststatus, cno);
		} catch (Exception e) {
			// TODO: handle exception
			throw new RuntimeException("设置考试开关失败！！");
		}

	}

}
