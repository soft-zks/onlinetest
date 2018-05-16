package cn.hubu.online.web.student;

import java.io.IOException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.hubu.online.factory.BasicFactory;
import cn.hubu.online.po.Course;
import cn.hubu.online.po.Examination;
import cn.hubu.online.po.Login;
import cn.hubu.online.service.IStudentService;
import cn.hubu.online.util.RandomUtils;
import cn.hubu.online.vo.ChoiceVo;

/**
 * @Since: JDK 1.8
 * @Author: zhangxiaoxin
 * @Description: 学生在线考试
 * @Date: 2017/11/30
 **/
@WebServlet(name = "/StudentTestQuestion", urlPatterns = "/studentTestQuestion")
public class StudentTestQuestion extends HttpServlet {

	private IStudentService studentService = BasicFactory.getBasicFactory().getServiceInstance(IStudentService.class);

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cno = request.getParameter("cno");
		request.setAttribute("cno", cno);
		Course course = studentService.getCourseNameByCno(cno);
		// request.setAttribute("cname",
		// URLDecoder.decode(request.getParameter("cname")));
		request.setAttribute("cname", course.getCname());
		// 从session中获取当前登录的信息
		Login login = (Login) request.getSession().getAttribute("login");
		String sno = login.getUsercode();

		if (cno != null) {
			// 将该考生试卷插入考生试卷表并且将试卷展示到页面
			try {
				List<Examination> examinationList = studentService.doTest(cno, sno);

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

				// 处理选择题的选项
				List<ChoiceVo> choiceVoList = new ArrayList<>();
				for (Examination examination : choiceTestList) {

					String refanswer = examination.getRefanswer();
					// String[] choices = refanswer.split("|");

					List<String> strList = new ArrayList<>();

					String strings = refanswer.substring(0, refanswer.indexOf("|"));
					refanswer = refanswer.substring(refanswer.indexOf("|") + 1);
					strList.add(strings);

					strings = refanswer.substring(0, refanswer.indexOf("|"));
					refanswer = refanswer.substring(refanswer.indexOf("|") + 1);
					strList.add(strings);

					strings = refanswer.substring(0, refanswer.indexOf("|"));
					// refanswer = refanswer.substring(refanswer.indexOf("|") +
					// 1);
					strList.add(strings);

					String string = "";
					strList.add(refanswer.substring(refanswer.indexOf("|") + 1));

					ChoiceVo choiceVo = new ChoiceVo();
					choiceVo.setTestno(examination.getTestno());
					choiceVo.setContent(examination.getContent());

					// 随机选取一个答案并且从集合里面删除
					int index1 = RandomUtils.getRandomNumber(strList.size());
					String choice1 = strList.get(index1);
					choiceVo.setChoiceOne(choice1);
					strList.remove(index1);

					int index2 = RandomUtils.getRandomNumber(strList.size());
					String choice2 = strList.get(index2);
					choiceVo.setChoiceTwo(choice2);
					strList.remove(index2);

					int index3 = RandomUtils.getRandomNumber(strList.size());
					String choice3 = strList.get(index3);
					choiceVo.setChoiceThree(choice3);
					strList.remove(index3);

					int index4 = RandomUtils.getRandomNumber(strList.size());
					String choice4 = strList.get(index4);
					choiceVo.setChoiceFour(choice4);
					strList.remove(index4);

					choiceVoList.add(choiceVo);
				}

				request.setAttribute("choiceVoList", choiceVoList);
				request.setAttribute("blankTestList", blankTestList);
				request.setAttribute("subjectiveTestList", subjectiveTestList);

				request.getRequestDispatcher("studentDoExa.jsp").forward(request, response);

			} catch (Exception e) {
				throw new RuntimeException("在线考试失败");
			}
		} else {
			throw new RuntimeException("参数不存在");
		}
	}

}
