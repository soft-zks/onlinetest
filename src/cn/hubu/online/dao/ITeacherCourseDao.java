package cn.hubu.online.dao;

import java.util.List;

import cn.hubu.online.po.TeacherCourse;

/**
 * 
 * <p>
 * Description teacherCourse表相关接口
 * </p>
 *
 * @author ZhaoKunsong
 * @date 2017年11月13日
 */
public interface ITeacherCourseDao extends BaseDao {

	/**
	 * 根据教师id获取其教授的全部课程
	 * 
	 * @param tno
	 * @return
	 */
	List<TeacherCourse> getCourseByTno(String tno);

}
