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
 * @Description: 管理员查看学生信息详情
 * @Date: 2017/12/1
 **/
@WebServlet(name = "/GetStudentInfo", urlPatterns = "/GetStudentInfo")
public class GetStudentInfo extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		IStudentService studentService = BasicFactory.getBasicFactory().getServiceInstance(IStudentService.class);
		List<Student> students = studentService.getStudentInfo();
		// 根据学号查询学生信息
		String sno = request.getParameter("sno");
		if (students != null) {
			for (Student student : students) {
				if (student.getSno().equals(sno)) {
					request.setAttribute("student", student);
					request.getRequestDispatcher("/admin_studentInfoDetail.jsp").forward(request, response);
				}
			}
		}
	}

}
