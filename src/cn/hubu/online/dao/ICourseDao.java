package cn.hubu.online.dao;

import java.util.List;

import cn.hubu.online.po.Course;

/**
 * 
 * <p>
 * Description course表相关接口
 * </p>
 *
 * @author ZhaoKunsong
 * @date 2017年11月13日
 */
public interface ICourseDao extends BaseDao {

	/**
	 * 查询课程信息
	 * 
	 * @return
	 */
	public List<Course> getCourse();

	/**
	 * 根据课程名称查找课程号
	 * 
	 * @param cname
	 * @return
	 */
	public String findCnoByCname(String cname);

	/**
	 * 添加课程
	 * 
	 * @param course
	 */
	public void addCourse(Course course);

	/**
	 * 设置考试开关
	 * 
	 * @param cno
	 * @param teststatus
	 */
	public void setTestStatus(String cno, String teststatus);

	/**
	 * 根据cno获取课程
	 * 
	 * @param cno
	 * @return
	 */
	public Course getCourseNameByCno(String cno);

	/**
	 * 获取课程信息最后一条记录
	 * @return
	 */
	public Course getLsatCourse();

}
