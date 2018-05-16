package cn.hubu.online.web.student;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.hubu.online.dao.IStudentCourseDao;
import cn.hubu.online.factory.BasicFactory;
import cn.hubu.online.po.Login;
import cn.hubu.online.po.StudentCourse;
import cn.hubu.online.service.IStudentService;

/**
 * @Since: JDK 1.8
 * @Author: zhangxiaoxin
 * @Description: 学生交卷
 * @Date: 2017/11/30
 **/
@WebServlet(name = "/FinishTestServlet", urlPatterns = "/finishTest")
public class FinishTestServlet extends HttpServlet {

	private IStudentService studentService = BasicFactory.getBasicFactory().getServiceInstance(IStudentService.class);

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {

			Login login = (Login) request.getSession().getAttribute("login");
			String sno = login.getUsercode();

			String cno = request.getParameter("cno");

			// 选择题
			String[] choiceNumbers = request.getParameterValues("choiceNumber");
			String[] choiceAnswers = new String[choiceNumbers.length];
			for (int i = 0; i < choiceNumbers.length; i++) {
				String str = request.getParameter("choiceAnswer" + i);
				choiceAnswers[i] = str;
			}

			// 填空题
			String[] blankNumbers = request.getParameterValues("blankNumber");
			String[] blankAnswers = request.getParameterValues("blankAnswer");

			// 主观题
			String[] subjectNumbers = request.getParameterValues("subjectNumber");
			String[] subjectAnswers = request.getParameterValues("subjectAnswer");

			studentService.doFinishTest(choiceNumbers, choiceAnswers, blankNumbers, blankAnswers, subjectNumbers,
					subjectAnswers, sno, cno);

			// 转到所选课程页面
			request.getRequestDispatcher("/getSelectedCourse").forward(request, response);

		} catch (Exception e) {
			throw new RuntimeException("提交试题失败");
		}
	}

}
