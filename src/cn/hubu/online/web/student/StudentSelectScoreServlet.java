package cn.hubu.online.web.student;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.hubu.online.factory.BasicFactory;
import cn.hubu.online.po.Login;
import cn.hubu.online.po.StudentCourse;
import cn.hubu.online.service.IStudentService;

/**
 * @Since: JDK 1.8
 * @Author: zhangxiaoxin
 * @Description: 学生查看考试成绩
 * @Date: 2017/11/23
 **/
@WebServlet(name = "/StudentSelectScoreServlet", urlPatterns = "/studentSelectScore")
public class StudentSelectScoreServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		IStudentService service = BasicFactory.getBasicFactory().getServiceInstance(IStudentService.class);
		Login login = (Login) request.getSession().getAttribute("login");
		String usercode = login.getUsercode();
		// String username = request.getParameter("username");
		// 根据学号查找学生所选的课程
		List<StudentCourse> studentCourses = service.getSelsctScore(usercode);
		// 成绩信息
		request.setAttribute("studentCourses", studentCourses);
		// 学号
		// request.setAttribute("sno", usercode);
		// 姓名
		// request.setAttribute("sname", username);
		request.getRequestDispatcher("/StudentSelectScore.jsp").forward(request, response);
	}

}
