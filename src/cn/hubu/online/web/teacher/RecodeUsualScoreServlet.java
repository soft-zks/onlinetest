package cn.hubu.online.web.teacher;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.hubu.online.factory.BasicFactory;
import cn.hubu.online.po.StudentCourse;
import cn.hubu.online.service.IStudentService;

/**
 * @Since: JDK 1.8
 * @Author: zhangxiaoxin
 * @Description: 平时成绩打分
 * @Date: 2017/11/21
 **/
@WebServlet(name = "/RecodeUsualScoreServlet", urlPatterns = "/recodeUsualScore")
public class RecodeUsualScoreServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		IStudentService studentservice = BasicFactory.getBasicFactory().getServiceInstance(IStudentService.class);
		// 获取课程号
		String cno = request.getParameter("cno");
		// 获取课程号
		String cname = request.getParameter("cname");
		// 根据课程号查询选了这门课的学生
		List<StudentCourse> studentCourses = studentservice.getCourseByCno(cno);
		request.setAttribute("studentCourses", studentCourses);
		request.setAttribute("cname", cname);
		request.getRequestDispatcher("/usualScoreDetail.jsp").forward(request, response);
	}

}
