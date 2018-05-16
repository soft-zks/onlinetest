package cn.hubu.online.web.teacher;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
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
 * 
 * <p>
 * Description 条件查询试题
 * </p>
 *
 * @author ZhaoKunsong
 * @date 2017年11月26日
 */
@WebServlet(name = "SelectTestbankServlet", urlPatterns = "/selectTestBank")
public class SelecTestBankServlet extends HttpServlet {

	ITeacherService teacherService = BasicFactory.getBasicFactory().getServiceInstance(ITeacherService.class);

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/*
		 * TestBank testBank = new TestBank(); try {
		 * BeanUtils.populate(testBank, request.getParameterMap());
		 * List<TestBank> testBankList =
		 * teacherService.selectTestBank(testBank);
		 * request.setAttribute("testBankList", testBankList);
		 * request.getRequestDispatcher("").forward(request, response); } catch
		 * (Exception e) { throw new RuntimeException("封装javabean失败"); }
		 */

		// 根据条件查询题库
		ITeacherService service = BasicFactory.getBasicFactory().getServiceInstance(ITeacherService.class);
		try {
			// 获取条件查询
			TestBank testBank = new TestBank();
			BeanUtils.populate(testBank, request.getParameterMap());
			// 保存查询结果
			List<TestBank> list = service.getTestBandByCond(testBank);
			List<Course> courses = teacherService.getCourseName();

			request.setAttribute("list", list);
			request.setAttribute("courses", courses);
			request.setAttribute("oldname", request.getParameter("cname"));

			request.getRequestDispatcher("/handProduce.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("查题失败");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
