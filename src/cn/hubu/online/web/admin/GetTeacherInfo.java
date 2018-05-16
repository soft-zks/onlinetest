package cn.hubu.online.web.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.hubu.online.factory.BasicFactory;
import cn.hubu.online.po.Teacher;
import cn.hubu.online.service.ITeacherService;

/**
 * @Since: JDK 1.8
 * @Author: zhangxiaoxin
 * @Description: 管理员查看教师详细信息
 * @Date: 2017/12/1
 **/
@WebServlet(name = "/GetTeacherInfo", urlPatterns = "/GetTeacherInfo")
public class GetTeacherInfo extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ITeacherService teacherService = BasicFactory.getBasicFactory().getServiceInstance(ITeacherService.class);
		String tno = request.getParameter("tno");
		Teacher teacher = new Teacher();
		teacher = teacherService.getTeacherInfoByTno(tno);
		request.setAttribute("teacher", teacher);
		request.getRequestDispatcher("/admin_teacherInfoDetail.jsp").forward(request, response);
	}

}
