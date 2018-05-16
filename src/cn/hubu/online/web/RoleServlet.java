package cn.hubu.online.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.hubu.online.po.Login;

/**
 * @Since: JDK 1.8
 * @Author: zhangxiaoxin
 * @Description: 根据角色进入不同的修改界面
 * @Date: 2017/11/20
 **/

@WebServlet(name = "/RoleServlet", urlPatterns = "/RoleServlet")
public class RoleServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Login login = (Login) request.getSession().getAttribute("login");
		String role = login.getRole();
		// String role = request.getParameter("role");
		// System.out.println(role);
		// request.setAttribute("role", role);
		if (role.equals("1")) {
			request.getRequestDispatcher("/admin_alterInfo.jsp").forward(request, response);
		} else if (role.equals("2")) {
			request.getRequestDispatcher("/teacher_alterInfo.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("/student_alterInfo.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
