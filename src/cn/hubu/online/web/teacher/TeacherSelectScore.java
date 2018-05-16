package cn.hubu.online.web.teacher;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.hubu.online.factory.BasicFactory;
import cn.hubu.online.po.StudentCourse;
import cn.hubu.online.service.IStudentService;

/**
 * @Since: JDK 1.8
 * @Author: zhangxiaoxin
 * @Description: 教师查看学生成绩
 * @Date: 2017/11/23
 **/

@WebServlet(name = "/TeacherSelectScore", urlPatterns = "/teacherSelectScore")
public class TeacherSelectScore extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		IStudentService studentservice = BasicFactory.getBasicFactory().getServiceInstance(IStudentService.class);
		// 获取课程号
		String cno = request.getParameter("cno");
		// 获取课程号
		String cname = request.getParameter("cname");
		// 获取是谁要查看
		String role = request.getParameter("role");
		// 根据课程号查询选了这门课的学生
		List<StudentCourse> studentCourses = studentservice.getCourseByCno(cno);
		request.setAttribute("studentCourses", studentCourses);
		request.setAttribute("cname", cname);
		request.getRequestDispatcher("/teacher_seeScoredetail.jsp").forward(request, response);

	}

}
