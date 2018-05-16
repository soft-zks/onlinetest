package cn.hubu.online.web.teacher;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.hubu.online.factory.BasicFactory;
import cn.hubu.online.po.Examination;
import cn.hubu.online.service.ITeacherService;

/**
 * 
 * <p>
 * Description 手动生成试卷
 * </p>
 *
 * @author ZhaoKunsong
 * @date 2017年11月26日
 */
@WebServlet(name = "HandProduceServlet", urlPatterns = "/handProduce")
public class HandProduceServlet extends HttpServlet {

	ITeacherService teacherService = BasicFactory.getBasicFactory().getServiceInstance(ITeacherService.class);

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 页面传来的id值,修改试卷号
		String[] ids = request.getParameterValues("idParms");

		if (ids != null) {

			List<Examination> examinationList = teacherService.insertNumber(ids);

			// 带到页面显示
			List<Examination> choiceTestList = new ArrayList<>();
			List<Examination> blankTestList = new ArrayList<>();
			List<Examination> subjectiveTestList = new ArrayList<>();

			for (Examination examination : examinationList) {
				if ("0".equals(examination.getTestType())) {
					choiceTestList.add(examination);
				}
				if ("1".equals(examination.getTestType())) {
					blankTestList.add(examination);
				}
				if ("2".equals(examination.getTestType())) {
					subjectiveTestList.add(examination);
				}
			}

			request.setAttribute("choiceTestList", choiceTestList);
			request.setAttribute("blankTestList", blankTestList);
			request.setAttribute("subjectiveTestList", subjectiveTestList);

			request.getRequestDispatcher("teacher_exam.jsp").forward(request, response);

		} else {
			throw new RuntimeException("手动出卷失败");
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
