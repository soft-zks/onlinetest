package cn.hubu.online.service;

import java.util.List;

import cn.hubu.online.po.Course;
import cn.hubu.online.po.StudentCourse;
import cn.hubu.online.vo.QuerySelectVo;

/**
 * 
 * <p>
 * Description 管理员业务接口
 * </p>
 *
 * @author ZhaoKunsong
 * @date 2017年11月13日
 */
public interface IAdminService extends BaseService {

	/**
	 * 
	 * @param collegeName
	 * @param className
	 * @param cname
	 * @return
	 */
	List<StudentCourse> getStuScoreByCond(String collegeName, String className, String cname);

	/**
	 * 管理员条件查询学生成绩
	 * 
	 * @param qSelectVo
	 * @return
	 */
	List<StudentCourse> getStuScoreByCond(QuerySelectVo qSelectVo);

	/**
	 * 管理员更新学生成绩
	 * 
	 * @param stuCous
	 */
	void updateScore(StudentCourse stuCous);

	/**
	 * 添加课程
	 * 
	 * @param course
	 * 
	 */
	void addCourse(Course course);

	/**
	 * 设置系统开关
	 * 
	 * @param sCourse
	 */
	void updateTestStatus(StudentCourse sCourse);

	/**
	 * 设置考试开关
	 * 
	 * @param cno
	 * @param teststatus
	 */
	void setTestStatus(String[] cno, String[] teststatus);

}
