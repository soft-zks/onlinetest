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
@WebServlet(name = "DoProduceServlet", urlPatterns = "/doProduce")
public class DoProduceTestServlet extends HttpServlet {

	ITeacherService teacherService = BasicFactory.getBasicFactory().getServiceInstance(ITeacherService.class);

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {

			String cno = request.getParameter("cno");

			request.setAttribute("cno", cno);

			String type = request.getParameter("type");

			if ("1".equals(type)) {
				// 自动出卷
				request.getRequestDispatcher("/autoProduce.jsp").forward(request, response);
			} else {
				//手动出卷
				request.getRequestDispatcher("/selectTestBank").forward(request, response);
			}

		} catch (Exception e) {
			throw new RuntimeException("生成试卷失败");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
