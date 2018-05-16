package cn.hubu.online.dao;

import java.util.List;

import cn.hubu.online.po.Student;
import cn.hubu.online.po.StudentCourse;

/**
 * 
 * <p>
 * Description student表相关接口
 * </p>
 *
 * @author ZhaoKunsong
 * @date 2017年11月13日
 */
public interface IStudentDao extends BaseDao {

	/**
	 * 修改学生基本信息
	 * 
	 * @param obj
	 * @param usercode
	 */
	void alterInfo(Student obj, String usercode);

	/**
	 * 获取学生信息
	 * 
	 * @return
	 */
	List<Student> getStudentInfo();

	/**
	 * 根据sno获取选课信息
	 * 
	 * @param sno
	 * @return
	 */
	List<StudentCourse> getStudentCourseBySno(String sno);
}
