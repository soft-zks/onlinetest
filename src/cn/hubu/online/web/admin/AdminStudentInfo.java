package cn.hubu.online.web.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.hubu.online.factory.BasicFactory;
import cn.hubu.online.po.Student;
import cn.hubu.online.service.IStudentService;

/**
 * @Since: JDK 1.8
 * @Author: zhangxiaoxin
 * @Description: 管理员查看学生信息
 * @Date: 2017/12/1
 **/
@WebServlet(name = "/AdminStudentInfo", urlPatterns = "/AdminStudentInfo")
public class AdminStudentInfo extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		IStudentService studentService = BasicFactory.getBasicFactory().getServiceInstance(IStudentService.class);
		List<Student> students = studentService.getStudentInfo();
		request.setAttribute("students", students);
		request.getRequestDispatcher("/admin_studenfInfo.jsp").forward(request, response);
	}

}
