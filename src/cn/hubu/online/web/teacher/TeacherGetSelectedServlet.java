package cn.hubu.online.web.teacher;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import cn.hubu.online.factory.BasicFactory;
import cn.hubu.online.po.Course;
import cn.hubu.online.po.TestBank;
import cn.hubu.online.service.ITeacherService;

/**
 * @Since: JDK 1.8
 * @Author: zhangxiaoxin
 * @Description: 教师添加题库题目
 * @Date: 2017/11/15
 **/

@WebServlet(name = "/TeacherGetSelectedServlet", urlPatterns = "/teacherGetSelected")
public class TeacherGetSelectedServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ITeacherService teacherService = BasicFactory.getBasicFactory().getServiceInstance(ITeacherService.class);
		try {

			request.getSession().setAttribute("cno", request.getParameter("cno"));
			request.getSession().setAttribute("cname", request.getParameter("cname"));
			request.getRequestDispatcher("/goSubject").forward(request, response);
		} catch (Exception e) {
			throw new RuntimeException("添加题目失败！！");
		}
	}

}
