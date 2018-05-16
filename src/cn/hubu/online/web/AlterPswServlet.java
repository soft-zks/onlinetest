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
 * @Author: zhangxiaoxin
 * @Description: 修改密码
 * @Date: 2017/11/17
 **/

@WebServlet(name = "/AlterPswServlet", urlPatterns = "/alterPswServlet")
public class AlterPswServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		IUserService service = BasicFactory.getBasicFactory().getServiceInstance(IUserService.class);
		// 获取账号和密码
		// String usercode = request.getParameter("usercode");
		Login mylogin = (Login) request.getSession().getAttribute("login");
		String usercode = mylogin.getUsercode();
		 String password = MD5Utils.md5(request.getParameter("password"));
		//String password = request.getParameter("password");

		// 获取新密码
		String newpassword = request.getParameter("newpassword");
		// String newpassword =
		// MD5Utils.md5(request.getParameter("newpassword"));
		// 调用service层方法登录·
		Login login = service.getUserByNameAndPsw(usercode, password);
		// 如果账号密码不正确，请求转发到login.jsp提示错误
		if (login == null) {
			request.setAttribute("msg", "账号或密码错误！！");
			request.getRequestDispatcher("/alterPsw.jsp").forward(request, response);
			return;
		} else {
			// 该用户存在允许修改密码,修改成功后重新登录
			service.alterPsw(usercode, newpassword);
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}

	}

}
