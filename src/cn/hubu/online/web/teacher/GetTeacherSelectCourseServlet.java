package cn.hubu.online.web.teacher;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.hubu.online.factory.BasicFactory;
import cn.hubu.online.po.Course;
import cn.hubu.online.po.Login;
import cn.hubu.online.po.TeacherCourse;
import cn.hubu.online.service.ITeacherService;

/**
 * @Since: JDK 1.8
 * @Author: zhangxiaoxin
 * @Description: 获取教师教授的课程
 * @Date: 2017/11/21
 **/
@WebServlet(name = "/GetTeacherSelectCourseServlet", urlPatterns = "/getTeacherSelectCourse")
public class GetTeacherSelectCourseServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ITeacherService teacherService = BasicFactory.getBasicFactory().getServiceInstance(ITeacherService.class);
		try {
			Login login = (Login) request.getSession().getAttribute("login");
			String tno = login.getUsercode();
			// String tno = request.getParameter("usercode");
			// System.out.println(tno);
			// 根据教师id查找到所教授的全部课程
			String mytype = request.getParameter("mytype");
			List<TeacherCourse> teacherCourses = teacherService.getCourseByTno(tno);
			request.setAttribute("teacherCourses", teacherCourses);
			if ("0".equals(mytype)) {// 录入学生平时成绩
				request.getRequestDispatcher("/recode_usualScore.jsp").forward(request, response);
			} else if ("1".equals(mytype)) {// 教师查看学生成绩
				request.getRequestDispatcher("/teacher_SelectStudentScore.jsp").forward(request, response);
			} else if ("2".equals(mytype)) {// 出卷————显示课程
				request.getRequestDispatcher("/teacher_course.jsp").forward(request, response);
			} else if ("3".equals(mytype)) {// 教师阅卷————显示课程
				request.getRequestDispatcher("/teacher_check.jsp").forward(request, response);
			}

			/*
			 * else if("2".equals(mytype)){//管理员查看学生成绩 //查询所有课程 List<Course>
			 * courses= teacherService.getCourseName();
			 * request.setAttribute("courses", courses);
			 * request.getRequestDispatcher("/teacher_seeScore.jsp").forward(
			 * request, response); }
			 */

		} catch (Exception e) {
			throw new RuntimeException("没找到老师所选的课程！！");
		}
	}

}
