package cn.hubu.online.dao;

import java.util.List;

import cn.hubu.online.po.StudentCourse;
import cn.hubu.online.vo.QuerySelectVo;

/**
 * 
 * <p>
 * Description studentCourse表相关接口
 * </p>
 *
 * @author ZhaoKunsong
 * @date 2017年11月13日
 */
public interface IStudentCourseDao extends BaseDao {

	/**
	 * 根据课程号查询选修了这门课的学生
	 * 
	 * @param cno
	 * @return
	 */
	List<StudentCourse> getCourseByCno(String cno);

	/**
	 * 更新学生成绩
	 * 
	 * @param studentcourses
	 */
	void updateStudentScore(StudentCourse studentcourses);

	/**
	 * 根据学号查找对应的学生信息
	 * 
	 * @param usercode
	 * @return
	 */
	List<StudentCourse> getSelsctScore(String usercode);

	/**
	 * 条件查询学生成绩
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
	 * 更新学生成绩
	 * 
	 * @param stuCous
	 * @return
	 */
	void updateScore(StudentCourse stuCous);

	/**
	 * 修改学生考试状态
	 * 
	 * @param sno
	 * @param status
	 * @param cno
	 * @return
	 */
	int changeStatus(String sno, String status, String cno);

	/**
	 * 根据cno获取所有选课学生的学号
	 * 
	 * @param cno
	 * @return
	 */
	String[] getAllSnoByCno(String cno);

	/**
	 * 插入学生卷面成绩
	 * 
	 * @param sno
	 * @param cno
	 * @return
	 */
	int updatePaperScore(String sno, String cno);

	/**
	 * 设置系统开关
	 * 
	 * @param sCourse
	 */
	void updateTestStatus(StudentCourse sCourse);

	/**
	 * 设置考试开关
	 * 
	 * @param string
	 * @param string2
	 */
	void setTestStatus(String string, String string2);

}
