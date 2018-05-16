package cn.hubu.online.web.teacher;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import cn.hubu.online.factory.BasicFactory;
import cn.hubu.online.po.Examination;
import cn.hubu.online.po.TestBank;
import cn.hubu.online.service.ITeacherService;

/**
 * 
 * <p>
 * Description 获取当前已经添加的试题
 * </p>
 *
 * @author ZhaoKunsong
 * @date 2017年11月26日
 */
@WebServlet(name = "GetCurrentServlet", urlPatterns = "/getCurrent")
public class GetCurrentServlet extends HttpServlet {

	ITeacherService teacherService = BasicFactory.getBasicFactory().getServiceInstance(ITeacherService.class);

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			// 将添加的题存入数据库
			// TestBank testBank = new TestBank();
			// BeanUtils.populate(testBank, request.getParameterMap());
			String par = request.getParameter("tno");
			if (par != null) {
				TestBank testBank = teacherService.getTestBankById(Integer.parseInt(par));
				teacherService.insertExamination(testBank);
			}

			String sumPar = request.getParameter("sum");

			// 在页面显示
			List<Examination> examinationList = teacherService.TempInsertExamination();
			Integer sum = 0;
			/*
			 * if(sumPar != null) { sum = Integer.parseInt(sumPar); }
			 */

			List<Examination> choiceTestList = new ArrayList<>();
			List<Examination> blankTestList = new ArrayList<>();
			List<Examination> subjectiveTestList = new ArrayList<>();
			for (Examination examination : examinationList) {
				if ("0".equals(examination.getTestType())) {
					sum += examination.getScore();
					choiceTestList.add(examination);
				}
				if ("1".equals(examination.getTestType())) {
					sum += examination.getScore();
					blankTestList.add(examination);
				}
				if ("2".equals(examination.getTestType())) {
					sum += examination.getScore();
					subjectiveTestList.add(examination);
				}
			}

			request.setAttribute("choiceTestList", choiceTestList);
			request.setAttribute("blankTestList", blankTestList);
			request.setAttribute("subjectiveTestList", subjectiveTestList);
			request.setAttribute("sum", sum);

			request.getRequestDispatcher("/selectTestBank").forward(request, response);

		} catch (Exception e) {
			throw new RuntimeException("封装javabean失败");
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
