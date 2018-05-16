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
import cn.hubu.online.po.Teacher;
import cn.hubu.online.service.IStudentService;
import cn.hubu.online.service.ITeacherService;

/**
 * @Since: JDK 1.8
 * @Author: zhangxiaoxin
 * @Description: 管理员查看教师信息
 * @Date: 2017/12/1
 **/
@WebServlet(name = "/AdminTeacherInfo", urlPatterns = "/AdminTeacherInfo")
public class AdminTeacherInfo extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ITeacherService teacherService = BasicFactory.getBasicFactory().getServiceInstance(ITeacherService.class);
		List<Teacher> teachers = teacherService.getTeacherInfo();
		request.setAttribute("teachers", teachers);
		request.getRequestDispatcher("/admin_teacherInfo.jsp").forward(request, response);
	}

}
