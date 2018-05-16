package cn.hubu.online.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @Since: JDK 1.8
 * @Author: zhangxiaoxin
 * @Description: 注销登录
 * @Date: 2017/11/21
 **/

@WebServlet(name = "/LoginOutServlet", urlPatterns = "/LoginOutServlet")
public class LoginOutServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getSession(false) != null) {
			request.getSession().invalidate();
			// 修改cookie生命周期
			Cookie autologinC = new Cookie("autologin", "");
			autologinC.setMaxAge(0);
			autologinC.setPath(request.getContextPath());
			response.addCookie(autologinC);
		}
		response.sendRedirect(request.getContextPath() + "/login.jsp");
	}

}
