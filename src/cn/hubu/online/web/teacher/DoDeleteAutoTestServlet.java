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
@WebServlet(name = "DoDeleteAutoTestServlet", urlPatterns = "/doDeleteAutoTest")
public class DoDeleteAutoTestServlet extends HttpServlet {

	ITeacherService teacherService = BasicFactory.getBasicFactory().getServiceInstance(ITeacherService.class);

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {

			// 删除试卷内容
			String number = request.getParameter("examinationNumber");
			teacherService.deleteExaByExaNumber(number);

			// 回到选择教师首页
			request.getRequestDispatcher("/teacher.jsp").forward(request, response);

		} catch (Exception e) {
			throw new RuntimeException("自动生成试卷失败");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
