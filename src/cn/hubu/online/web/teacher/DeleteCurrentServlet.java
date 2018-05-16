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
 * Description 删除当前已经添加的试题
 * </p>
 *
 * @author ZhaoKunsong
 * @date 2017年11月26日
 */
@WebServlet(name = "DeleteCurrentServlet", urlPatterns = "/deleteCurrent")
public class DeleteCurrentServlet extends HttpServlet {

	ITeacherService teacherService = BasicFactory.getBasicFactory().getServiceInstance(ITeacherService.class);

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {

			String par = request.getParameter("deleteNo");
			if (par != null) {
				teacherService.deleteExaById(Integer.parseInt(par));
			}

			request.getRequestDispatcher("/getCurrent").forward(request, response);

		} catch (Exception e) {
			throw new RuntimeException("根据id删除试卷表的试题失败");
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
