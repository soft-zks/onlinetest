package cn.hubu.online.web.student;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.hubu.online.dao.IStudentCourseDao;
import cn.hubu.online.factory.BasicFactory;
import cn.hubu.online.po.Login;
import cn.hubu.online.po.StudentCourse;
import cn.hubu.online.service.IStudentService;

/**
 * @Since: JDK 1.8
 * @Author: zhangxiaoxin
 * @Description: 获取所选课程列表
 * @Date: 2017/11/30
 **/
@WebServlet(name = "/GetSelectedCourse", urlPatterns = "/getSelectedCourse")
public class GetSelectedCourse extends HttpServlet {

	private IStudentService studentService = BasicFactory.getBasicFactory().getServiceInstance(IStudentService.class);

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// request.getSession().setAttribute("user", "zhaokunsong");

		// 从选课表里面查询所选科目
		// String str = "2015000501";
		Login login = (Login) request.getSession().getAttribute("login");

		String str = login.getUsercode();

		request.getSession().setAttribute("sno", str);
		List<StudentCourse> studentCourseList = studentService.getStudentCourseBySno(str);
		request.setAttribute("studentCourseList", studentCourseList);
		request.getRequestDispatcher("getSelectedCourse.jsp").forward(request, response);

	}

}
