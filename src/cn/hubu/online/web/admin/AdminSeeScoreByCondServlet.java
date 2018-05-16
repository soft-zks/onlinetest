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
import cn.hubu.online.po.Student;
import cn.hubu.online.po.StudentCourse;
import cn.hubu.online.service.IAdminService;
import cn.hubu.online.vo.QuerySelectVo;

/**
 * @Since: JDK 1.8
 * @Author: zhangxiaoxin
 * @Description: 管理员根据条件查看学生成绩
 * @Date: 2017/11/24
 **/
@WebServlet(name = "/AdminSeeScoreByCondServlet", urlPatterns = "/AdminSeeScoreByCondServlet")
public class AdminSeeScoreByCondServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		IAdminService adminService = BasicFactory.getBasicFactory().getServiceInstance(IAdminService.class);
		try {
			// String collegeName = request.getParameter("college");
			// String className = request.getParameter("className");
			// String cname = request.getParameter("cname");
			QuerySelectVo qSelectVo = new QuerySelectVo();
			BeanUtils.populate(qSelectVo, request.getParameterMap());
			// System.out.println(collegeName+":"+className+":"+cname);
			// List<StudentCourse> stuCourlist =
			// adminService.getStuScoreByCond(collegeName,className,cname);
			List<StudentCourse> stuCourlist = adminService.getStuScoreByCond(qSelectVo);
			request.setAttribute("stuCourlist", stuCourlist);
			// request.getSession().setAttribute("stuCourlist", stuCourlist);
			request.getRequestDispatcher("/getInfoAuto").forward(request, response);
			/*
			 * for(StudentCourse studentCourse : stuCourlist) {
			 * System.out.println(studentCourse.getCname() + "  " +
			 * studentCourse.getSumScore()); }
			 */
		} catch (Exception e) {
			throw new RuntimeException("无法根据条件查询到学生成绩！！");
		}

	}

}
