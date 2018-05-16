package cn.hubu.online.web.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import cn.hubu.online.factory.BasicFactory;
import cn.hubu.online.po.StudentCourse;
import cn.hubu.online.service.IAdminService;

/**
 * @Since: JDK 1.8
 * @Author: zhangxiaoxin
 * @Description: 管理员修改学生成绩
 * @Date: 2017/11/28
 **/
@WebServlet(name = "/GetUpdateInfoServlet", urlPatterns = "/getUpdateInfo")
public class GetUpdateInfoServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		IAdminService adminService = BasicFactory.getBasicFactory().getServiceInstance(IAdminService.class);
		try {
			StudentCourse stuCous = new StudentCourse();
			BeanUtils.populate(stuCous, request.getParameterMap());

			// System.out.println(stuCous.getSumScore());

			adminService.updateScore(stuCous);
			request.getRequestDispatcher("/AdminSeeScoreByCondServlet").forward(request, response);
		} catch (Exception e) {
			throw new RuntimeException("更新学生成绩失败！！！");
		}
	}

}
