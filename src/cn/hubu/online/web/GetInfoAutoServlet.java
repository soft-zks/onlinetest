package cn.hubu.online.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.hubu.online.factory.BasicFactory;
import cn.hubu.online.po.Course;
import cn.hubu.online.po.Student;
import cn.hubu.online.service.IStudentService;
import cn.hubu.online.service.ITeacherService;

/**
 * @Since: JDK 1.8
 * @Author: zhangxiaoxin
 * @Description: 动态加载学院、班级、课程信息
 * @Date: 2017/11/24
 **/
@WebServlet(name = "/GetInfoAutoServlet", urlPatterns = "/getInfoAuto")
public class GetInfoAutoServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 加载课程名称
		ITeacherService teacherService = BasicFactory.getBasicFactory().getServiceInstance(ITeacherService.class);
		List<Course> courses = teacherService.getCourseName();
		request.setAttribute("courses", courses);
		// 加载学生信息
		IStudentService studentService = BasicFactory.getBasicFactory().getServiceInstance(IStudentService.class);
		// List<Student> studentInfo = studentService.getStudentInfo();

		// 加载班级信息
		List<String> className = studentService.getClassName();
		request.setAttribute("className", className);
		// 加载院系信息
		List<String> collegeName = studentService.getCollege();
		request.setAttribute("collegeName", collegeName);

		// 请求转发 进行显示
		request.getRequestDispatcher("/admin_seeScore.jsp").forward(request, response);
	}

}
