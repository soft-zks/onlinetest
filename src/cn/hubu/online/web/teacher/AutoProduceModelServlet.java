package cn.hubu.online.web.teacher;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.javafx.collections.MappingChange.Map;

import cn.hubu.online.factory.BasicFactory;
import cn.hubu.online.po.Examination;
import cn.hubu.online.service.ITeacherService;

/**
 * 
 * <p>
 * Description 自动生成模板试卷
 * </p>
 *
 * @author ZhaoKunsong
 * @date 2017年11月15日
 */
@WebServlet(name = "ProduceModel", urlPatterns = "/produceModel")
public class AutoProduceModelServlet extends HttpServlet {

	ITeacherService teacherService = BasicFactory.getBasicFactory().getServiceInstance(ITeacherService.class);

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String number = request.getParameter("number");
		String cno = request.getParameter("cno");
		List<Examination> examinationList = null;
		try {
			if (number != null) {
				if ("1".equals(number)) {
					examinationList = teacherService.produceExaminationByModelOne(cno);
				}
				if ("2".equals(number)) {
					examinationList = teacherService.produceExaminationByModelTwo(cno);
				}
				if ("3".equals(number)) {
					examinationList = teacherService.produceExaminationByModelThree(cno);
				}
			}
			List<Examination> choiceTestList = new ArrayList<>();
			List<Examination> blankTestList = new ArrayList<>();
			List<Examination> subjectiveTestList = new ArrayList<>();
			if (examinationList != null) {
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
			}

			request.setAttribute("choiceTestList", choiceTestList);
			request.setAttribute("blankTestList", blankTestList);
			request.setAttribute("subjectiveTestList", subjectiveTestList);
			request.setAttribute("number", choiceTestList.get(0).getExaminationNumber());

			request.getRequestDispatcher("/teacher_exam.jsp").forward(request, response);

		} catch (Exception e) {
			throw new RuntimeException("自动生成试卷失败");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
