package cn.hubu.online.service.impl;

import com.sun.org.apache.bcel.internal.generic.DALOAD;
import com.sun.swing.internal.plaf.basic.resources.basic;

import cn.hubu.online.dao.IAdminDao;
import cn.hubu.online.dao.ILoginDao;
import cn.hubu.online.dao.IStudentDao;
import cn.hubu.online.dao.ITeacherDao;
import cn.hubu.online.dao.impl.AdminDaoImpl;
import cn.hubu.online.dao.impl.TeacherDaoImpl;
import cn.hubu.online.factory.BasicFactory;
import cn.hubu.online.po.Admin;
import cn.hubu.online.po.Login;
import cn.hubu.online.po.Student;
import cn.hubu.online.po.Teacher;
import cn.hubu.online.service.IUserService;
import cn.hubu.online.util.MD5Utils;

/**
 * 
 * <p>
 * Description 登录等业务
 * </p>
 *
 * @author ZhaoKunsong
 * @date 2017年11月13日
 */
public class UserServiceImpl implements IUserService {
	private ILoginDao dao = BasicFactory.getBasicFactory().getDaoInstance(ILoginDao.class);
	private ITeacherDao teacherdao = BasicFactory.getBasicFactory().getDaoInstance(ITeacherDao.class);
	private IAdminDao admindao = BasicFactory.getBasicFactory().getDaoInstance(IAdminDao.class);
	private IStudentDao studentdao = BasicFactory.getBasicFactory().getDaoInstance(IStudentDao.class);

	@Override
	public Login getUserByNameAndPsw(String usercode, String password) {
		return dao.getUserByNameAndPsw(usercode, password);
	}

	@Override
	public void alterPsw(String usercode, String newpassword) {
		newpassword = MD5Utils.md5(newpassword);
		dao.alterPsw(usercode, newpassword);
	}

	@Override
	public void alterInfo(Object obj, String role, String usercode) {
		if (role.equals("teacher")) {
			Teacher teacher = (Teacher) obj;
			teacher.setTno(usercode);
			teacherdao.alterInfo((Teacher) obj, usercode);
		} else if (role.equals("admin")) {
			Admin admin = (Admin) obj;
			admin.setAno(usercode);
			admindao.alterInfo(admin, usercode);
		} else {
			Student student = (Student) obj;
			student.setSno(usercode);
			studentdao.alterInfo(student, usercode);
		}
	}

}
