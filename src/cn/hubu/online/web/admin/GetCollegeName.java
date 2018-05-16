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
 * @Description: 获取开课学院信息
 * @Date: 2017/11/30
 **/
@WebServlet(name = "/GetCollegeName", urlPatterns = "/GetCollegeName")
public class GetCollegeName extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		IStudentService studentService = BasicFactory.getBasicFactory().getServiceInstance(IStudentService.class);
		// 加载院系信息
		List<String> collegeName = studentService.getCollege();
		request.setAttribute("collegeName", collegeName);

		request.getRequestDispatcher("/admin_addCourse.jsp").forward(request, response);
	}

}
