package cn.hubu.online.web.admin;

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
import cn.hubu.online.service.IAdminService;
import cn.hubu.online.service.ITeacherService;

/**
 * @Since: JDK 1.8
 * @Author: zhangxiaoxin
 * @Description: 管理员--课程管理
 * @Date: 2017/11/30
 **/
@WebServlet(name = "/AdminAddCourse", urlPatterns = "/AdminAddCourse")
public class AdminAddCourse extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		IAdminService adminService = BasicFactory.getBasicFactory().getServiceInstance(IAdminService.class);
		try {
			Course course = new Course();
			BeanUtils.populate(course, request.getParameterMap());

			adminService.addCourse(course);

			// 添加成功后在课程管理里面查看课程信息
			request.getRequestDispatcher("/GetCoursInfo").forward(request, response);
		} catch (Exception e) {
			throw new RuntimeException("添加课程失败！！");
		}
	}

}
