package cn.hubu.online.web.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.hubu.online.factory.BasicFactory;
import cn.hubu.online.po.Course;
import cn.hubu.online.po.Student;
import cn.hubu.online.po.StudentCourse;
import cn.hubu.online.service.IAdminService;

/**
 * @Since: JDK 1.8
 * @Author: zhangxiaoxin
 * @Description: 管理员设置系统开关
 * @Date: 2017/11/30
 **/
@WebServlet(name = "/ChangeSystemClick", urlPatterns = "/ChangeSystemClick")
public class ChangeSystemClick extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		IAdminService adminService = BasicFactory.getBasicFactory().getServiceInstance(IAdminService.class);

		String[] cno = request.getParameterValues("cno");
		String[] teststatus = request.getParameterValues("testss");

		adminService.setTestStatus(cno, teststatus);

		response.getWriter().println("考试开关设置成功..........3秒后回个人中心");
		response.setHeader("Refresh", "3;url=admin.jsp");
		/*
		 * String []mystatus = request.getParameterValues("mystatus");
		 * 
		 * if (mystatus!=null) { for (String str : mystatus) { String cno = "";
		 * String teststatus = "0"; if(str.split(":").length==2){ cno =
		 * str.split(":")[0]; teststatus = str.split(":")[1]; }else{ cno = str;
		 * // teststatus = "0"; } StudentCourse sCourse = new StudentCourse();
		 * sCourse.setCno(cno); sCourse.setTeststatus(teststatus);
		 * adminService.updateTestStatus(sCourse); } }
		 */

		response.getWriter().println("设置完毕..........3秒后回到主页");
		response.setHeader("Refresh", "3;url=admin.jsp");
	}

}
