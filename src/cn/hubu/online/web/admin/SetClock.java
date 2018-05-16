package cn.hubu.online.web.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.hubu.online.factory.BasicFactory;
import cn.hubu.online.po.Course;
import cn.hubu.online.service.IStudentService;
import cn.hubu.online.service.ITeacherService;

/**
 * @Since: JDK 1.8
 * @Author: zhangxiaoxin
 * @Description: 管理员--设置系统开关
 * @Date: 2017/12/2
 **/
@WebServlet(name = "/SetClock", urlPatterns = "/SetClock")
public class SetClock extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ITeacherService teacherService = BasicFactory.getBasicFactory().getServiceInstance(ITeacherService.class);
		IStudentService studentService = BasicFactory.getBasicFactory().getServiceInstance(IStudentService.class);
		// 获取所有课程名称
		List<Course> courses = teacherService.getCourseName();
		request.setAttribute("courses", courses);

		List<String> collegeName = studentService.getCollege();
		request.setAttribute("collegeName", collegeName);

		request.getRequestDispatcher("/admin_setClockPage.jsp").forward(request, response);
	}

}
