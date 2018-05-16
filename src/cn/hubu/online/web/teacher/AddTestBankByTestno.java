package cn.hubu.online.web.teacher;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import cn.hubu.online.factory.BasicFactory;
import cn.hubu.online.po.Course;
import cn.hubu.online.po.TestBank;
import cn.hubu.online.service.ITeacherService;

/**
 * @Since: JDK 1.8
 * @Author: zhangxiaoxin
 * @Description: 教师添加题库题目
 * @Date: 2017/11/15
 **/

@WebServlet(name = "/AddTestBankByTestno", urlPatterns = "/addTestBankByTestno")
public class AddTestBankByTestno extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ITeacherService teacherService = BasicFactory.getBasicFactory().getServiceInstance(ITeacherService.class);
		try {
			// 获取要添加的题目信息
			TestBank testBank = new TestBank();
			// 封装
			BeanUtils.populate(testBank, request.getParameterMap());
			// System.out.println(testBank.toString());
			// 如果是选择题，限制答案格式
			if (testBank.getTestType().equals("0")) {
				String[] refs = testBank.getRefanswer().split("|");
				int count = 0;
				for (String str : refs) {
					if (("|").equals(str)) {
						count++;
					}
				}
				if (count != 3) {
					request.setAttribute("msg", "参考答案格式不正确，请重新输入");
					// throw new RuntimeException("参考答案格式不正确");
					request.getRequestDispatcher("/getCnameServlet").forward(request, response);
					return;
				}
			}
			// 调用service层方法添加题目
			teacherService.addTestBand(testBank);
			request.getRequestDispatcher("/teacherTestBandServlet").forward(request, response);
		} catch (Exception e) {
			throw new RuntimeException("添加题目失败！！");
		}
	}

}
