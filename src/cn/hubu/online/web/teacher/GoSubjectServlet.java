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
import cn.hubu.online.service.ITeacherService;
import cn.hubu.online.vo.StuTestVo;

/**
 * @Since: JDK 1.8
 * @Author: zhangxiaoxin
 * @Description: 前往改卷
 * @Date: 2017/11/15
 **/

@WebServlet(name = "/GoSubjectServlet", urlPatterns = "/goSubject")
public class GoSubjectServlet extends HttpServlet {

	private ITeacherService teacherService = BasicFactory.getBasicFactory().getServiceInstance(ITeacherService.class);

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {

			String cno = request.getParameter("cno");

			List<StuTestVo> allStuTestVoList = teacherService.getAllTestInfo(cno);
			List<StuTestVo> stuTestVoList = new ArrayList<>();
			for (StuTestVo stuTestVo : allStuTestVoList) {
				if (stuTestVo.getSubjectTestVoList().size() > 0) {
					stuTestVoList.add(stuTestVo);
				}
			}

			if (stuTestVoList.size() <= 0) {
				response.getWriter().println("已经全部改完..........3秒后回到主页");
				response.setHeader("Refresh", "3;url=teacher.jsp");
				return;
			}

			// 从session中获取stuTestVoList集合,并将返回的信息存入session
			// List<StuTestVo> sessionStuTestVoList = (List<StuTestVo>)
			// request.getSession().getAttribute("stuTestVoList");
			// sessionStuTestVoList.addAll(stuTestVoList);
			request.getSession().setAttribute("stuTestVoList", stuTestVoList);

			// 先把第一个学生的展示到页面上
			StuTestVo stuTestVo = stuTestVoList.get(0);
			request.setAttribute("stuTestVo", stuTestVo);
			request.getRequestDispatcher("/showExa.jsp").forward(request, response);

		} catch (Exception e) {
			throw new RuntimeException("去改卷失败");
		}
	}

}
