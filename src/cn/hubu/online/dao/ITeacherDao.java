package cn.hubu.online.dao;

import java.util.List;

import cn.hubu.online.po.Teacher;

/**
 * 
 * <p>
 * Description teacher表相关接口
 * </p>
 *
 * @author ZhaoKunsong
 * @date 2017年11月13日
 */
public interface ITeacherDao extends BaseDao {
	/**
	 * 修改教师基本信息
	 * 
	 * @param obj
	 * @param usercode
	 */
	void alterInfo(Teacher obj, String usercode);

	/**
	 * 获取教师信息
	 * 
	 * @return
	 */
	List<Teacher> getTeacherInfo();

	/**
	 * 根据tno获取教师信息
	 * 
	 * @return
	 */
	Teacher etTeacherInfoByTno(String tno);

}
