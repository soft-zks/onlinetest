package cn.hubu.online.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.hubu.online.factory.BasicFactory;
import cn.hubu.online.po.Login;
import cn.hubu.online.service.IUserService;
import cn.hubu.online.util.MD5Utils;

/**
 * @Since: JDK 1.8
 * @Author: zxx
 * @Description: 用户登录
 * @Date: 2017/11/15
 **/
@WebServlet(name = "LoginServlet", urlPatterns = "/loginServlet")
public class LoginServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		IUserService service = BasicFactory.getBasicFactory().getServiceInstance(IUserService.class);
		// 获取账号和密码
		String usercode = request.getParameter("username");
		 String password = MD5Utils.md5(request.getParameter("password"));
		//String password = request.getParameter("password");

		// 调用service层方法登录·
		Login login = service.getUserByNameAndPsw(usercode, password);

		// 如果账号密码不正确，请求转发到login.jsp提示错误
		if (login == null) {
			request.setAttribute("msg", "账号或密码错误！！");
			request.getRequestDispatcher("/login.jsp").forward(request, response);
			return;
		} else {
			request.getSession().setAttribute("login", login);
			// System.out.println(login.getRole());
			if ("1".equals(login.getRole())) {// 管理员
				request.getRequestDispatcher("/admin.jsp").forward(request, response);
			} else if ("2".equals(login.getRole())) {// 教师
				request.getRequestDispatcher("/teacher.jsp").forward(request, response);
			} else {// 学生
				request.getRequestDispatcher("/student.jsp").forward(request, response);
			}
		}
	}

}
