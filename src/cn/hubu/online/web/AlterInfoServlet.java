package cn.hubu.online.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import cn.hubu.online.factory.BasicFactory;
import cn.hubu.online.po.Admin;
import cn.hubu.online.po.Student;
import cn.hubu.online.po.Teacher;
import cn.hubu.online.service.IUserService;

/**
 * @Since: JDK 1.8
 * @Author: zhangxiaoxin
 * @Description: 修改个人信息
 * @Date: 2017/11/20
 **/

@WebServlet(name = "/AlterInfoServlet", urlPatterns = "/alterInfo")
public class AlterInfoServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		IUserService service = BasicFactory.getBasicFactory().getServiceInstance(IUserService.class);
		try {
			Object obj = null;
			// 获取角色
			String role = request.getParameter("role");
			// 获取账号
			String usercode = request.getParameter("usercode");
			// System.out.println(role+":"+usercode);
			if (role.equals("teacher")) {
				obj = new Teacher();
			} else if (role.equals("admin")) {
				obj = new Admin();
			} else {
				obj = new Student();
			}
			BeanUtils.populate(obj, request.getParameterMap());
			// System.out.println(obj.toString());
			// 修改个人信息
			service.alterInfo(obj, role, usercode);
			// 如果修改成功，则请求转发到teacher.jsp
			request.setAttribute("msg", "个人信息修改成功！！！");
			// request.getRequestDispatcher("/teacher.jsp").forward(request,
			// response);
			if (role.equals("teacher")) {
				request.getRequestDispatcher("/teacher.jsp").forward(request, response);
			} else if (role.equals("admin")) {
				request.getRequestDispatcher("/admin.jsp").forward(request, response);
			} else {
				request.getRequestDispatcher("/student.jsp").forward(request, response);
			}
		} catch (Exception e) {
			throw new RuntimeException("修改信息不成功");
		}
	}

}
