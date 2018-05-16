package cn.hubu.online.web.teacher;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.hubu.online.factory.BasicFactory;
import cn.hubu.online.service.ITeacherService;

/**
 * @Since: JDK 1.8
 * @Author: zhangxiaoxin
 * @Description: 根据id删除题库
 * @Date: 2017/11/15
 **/

@WebServlet(name = "/DelTestBankByTestno", urlPatterns = "/delTestBankByTestno")
public class DelTestBankByTestno extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ITeacherService service = BasicFactory.getBasicFactory().getServiceInstance(ITeacherService.class);
		String testno = request.getParameter("testno");
		service.delTestBankByTestno(testno);
		request.getRequestDispatcher("/teacherTestBandServlet").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
