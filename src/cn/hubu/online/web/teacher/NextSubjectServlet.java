package cn.hubu.online.web.teacher;

import java.io.IOException;
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
 * @Description: 改下一张卷
 * @Date: 2017/11/15
 **/

@WebServlet(name = "/NextSubjectServlet", urlPatterns = "/nextSubject")
public class NextSubjectServlet extends HttpServlet {

	private ITeacherService teacherService = BasicFactory.getBasicFactory().getServiceInstance(ITeacherService.class);

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {

			// 保存上一张卷子的打分信息到数据库
			String sno = request.getParameter("sno");
			String cno = (String) request.getSession().getAttribute("cno");
			String[] testNumbers = request.getParameterValues("testNumber");
			String[] practicalScores = request.getParameterValues("practicalScore");
			teacherService.updateSubjectScore(sno, testNumbers, practicalScores, cno);

			// 读取下一张卷子的信息显示到页面
			List<StuTestVo> sessionList = (List<StuTestVo>) request.getSession().getAttribute("stuTestVoList");
			if (sessionList.size() > 0) {
				sessionList.remove(0);
				request.getSession().setAttribute("stuTestVoList", sessionList);
				if (sessionList.size() > 0) {
					StuTestVo stuTestVo = sessionList.get(0);
					if (stuTestVo.getSubjectTestVoList().size() > 0) {
						request.setAttribute("stuTestVo", stuTestVo);
						request.getRequestDispatcher("/showExa.jsp").forward(request, response);
					} else {
						response.getWriter().println("已经全部改完..........3秒后回到主页");
						response.setHeader("Refresh", "3;url=teacher.jsp");
					}
				} else {
					response.getWriter().println("已经全部改完..........3秒后回到主页");
					response.setHeader("Refresh", "3;url=teacher.jsp");
				}
			} else {
				// 回到打分首页
				response.getWriter().println("已经全部改完..........3秒后回到主页");
				response.setHeader("Refresh", "3;url=teacher.jsp");
			}

		} catch (Exception e) {
			throw new RuntimeException("改下一张卷子失败");
		}
	}

}
