package cn.hubu.online.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import com.sun.webkit.BackForwardList;

import cn.hubu.online.annotation.Transaction;
import cn.hubu.online.dao.ICourseDao;
import cn.hubu.online.dao.IStudentCourseDao;
import cn.hubu.online.dao.impl.StudentCourseDaoImpl;
import cn.hubu.online.factory.BasicFactory;
import cn.hubu.online.po.Course;
import cn.hubu.online.po.StudentCourse;
import cn.hubu.online.service.IAdminService;
import cn.hubu.online.service.ITeacherService;
import cn.hubu.online.vo.QuerySelectVo;

/**
 * 
 * <p>
 * Description 管理员业务
 * </p>
 *
 * @author ZhaoKunsong
 * @date 2017年11月13日
 */
public class AdminServiceImpl implements IAdminService {
	private IStudentCourseDao stuCourDao = BasicFactory.getBasicFactory().getDaoInstance(IStudentCourseDao.class);
	private ICourseDao coursedao = BasicFactory.getBasicFactory().getDaoInstance(ICourseDao.class);

	@Override
	public List<StudentCourse> getStuScoreByCond(String collegeName, String className, String cname) {
		return stuCourDao.getStuScoreByCond(collegeName, className, cname);
	}

	@Override
	public List<StudentCourse> getStuScoreByCond(QuerySelectVo qSelectVo) {
		return stuCourDao.getStuScoreByCond(qSelectVo);
	}

	@Override
	public void updateScore(StudentCourse stuCous) {
		stuCourDao.updateScore(stuCous);
	}

	@Override
	public void addCourse(Course course) {
		
		/*List<Course> courses = coursedao.getCourse();
		// 课程名称
		List<String> cname = new ArrayList<String>();
		// 课程号
		List<String> cno = new ArrayList<String>();

		for (Course cou : courses) {
			cname.add(cou.getCname());
			cno.add(cou.getCno());
		}
		// 判断课程名称是否已经存在,如果名称已经存在，返回错误提示信息
		if (cname.contains(course.getCname())) {
			throw new RuntimeException("你所添加的课程已存在！！");
		}
		// 如果课程不存在，给课程随机分配一个4位cno，并判断该id是否唯一
		Random rd = new Random();
		int max = 10000;
		int min = 100;

		// 要添加的课程号
		String addCno = "";
		do {
			addCno = rd.nextInt(max) % (max - min + 1) + min + "";
		} while (cno.contains(addCno));

		// 如果id也唯一，则添加
		course.setCno(addCno);
		coursedao.addCourse(course);*/
		
		
		//获取最后一条记录
		Course lastCourse = coursedao.getLsatCourse();
		String lastCno = lastCourse.getCno();
		String cno = (Integer.parseInt(lastCno)+1)+"";
		course.setCno(cno);
		coursedao.addCourse(course);
	}

	@Override
	public void updateTestStatus(StudentCourse sCourse) {
		stuCourDao.updateTestStatus(sCourse);
	}

	@Override
	@Transaction
	public void setTestStatus(String[] cno, String[] teststatus) {
		for (int i = 0; i < cno.length; i++) {
			coursedao.setTestStatus(cno[i], teststatus[i]);
			stuCourDao.setTestStatus(cno[i], teststatus[i]);
		}
	}

}
