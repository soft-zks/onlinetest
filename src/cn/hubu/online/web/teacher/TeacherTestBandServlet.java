package cn.hubu.online.web.teacher;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import cn.hubu.online.dao.ITeacherCourseDao;
import cn.hubu.online.factory.BasicFactory;
import cn.hubu.online.po.Course;
import cn.hubu.online.po.TestBank;
import cn.hubu.online.service.ITeacherService;

/**
 * @Since: JDK 1.8
 * @Author: zhangxiaoxin
 * @Description: 教师后台管理——题库管理
 * @Date: 2017/11/15
 **/
@WebServlet(name = "TeacherTestBandServlet", urlPatterns = "/teacherTestBandServlet")
public class TeacherTestBandServlet extends HttpServlet {

	ITeacherService teacherService = BasicFactory.getBasicFactory().getServiceInstance(ITeacherService.class);

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 根据条件查询题库
		ITeacherService service = BasicFactory.getBasicFactory().getServiceInstance(ITeacherService.class);
		try {
			// 获取条件查询
			TestBank testBank = new TestBank();
			BeanUtils.populate(testBank, request.getParameterMap());
			// 保存查询结果
			List<TestBank> list = service.getTestBandByCond(testBank);
			List<Course> courses = teacherService.getCourseName();
			// 请求转发到teacher_testband.jsp进行显示
			request.setAttribute("list", list);
			request.setAttribute("courses", courses);
			request.setAttribute("oldname", request.getParameter("cname"));
			request.getRequestDispatcher("/teacher_testband.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

}
