package cn.hubu.online.web.teacher;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import cn.hubu.online.factory.BasicFactory;
import cn.hubu.online.po.StudentCourse;
import cn.hubu.online.service.ITeacherService;

/**
 * @Since: JDK 1.8
 * @Author: zhangxiaoxin
 * @Description: 更新学生平时成绩、卷面成绩、总成绩
 * @Date: 2017/11/22
 **/
@WebServlet(name = "/UpdateStudentScoreServlet", urlPatterns = "/updateStudentScore")
public class UpdateStudentScoreServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ITeacherService teacherService = BasicFactory.getBasicFactory().getServiceInstance(ITeacherService.class);
		// StudentCourse studentcourses = new StudentCourse();
		String[] courseScores = request.getParameterValues("courseScore");
		for (String courseScore : courseScores) {
			// System.out.println(courseScore);
			String[] params = courseScore.split(":");
			if (params.length == 3) {
				StudentCourse studentcourses = new StudentCourse();
				studentcourses.setId(params[0]);
				studentcourses.setStatus("1");
				studentcourses.setUsualScore(Integer.parseInt(params[1]));
				studentcourses.setSumScore(Integer.parseInt(params[2]));
				teacherService.updateStudentScore(studentcourses);
			}
		}
		/*
		 * BeanUtils.populate(studentcourses, request.getParameterMap());
		 * List<StudentCourse> list = (List<StudentCourse>)
		 * request.getParameterMap(); for(StudentCourse studentCourse :list) {
		 * System.out.println(studentCourse); }
		 */
		// List<StudentCourse> studentScorelist =
		// teacherService.updateStudentScore();

		// 修改完成后跳回到主页
		response.getWriter().println("学生平时成绩已录入完毕..........3秒后回到主页");
		response.setHeader("Refresh", "3;url=getTeacherSelectCourse?mytype=0");
	}
}
