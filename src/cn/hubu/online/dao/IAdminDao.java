package cn.hubu.online.dao;

import cn.hubu.online.po.Admin;

/**
 * 
 * <p>
 * Description admin表相关接口
 * </p>
 *
 * @author ZhaoKunsong
 * @date 2017年11月13日
 */
public interface IAdminDao extends BaseDao {

	/**
	 * 修改管理员个人信息
	 * 
	 * @param obj
	 * @param usercode
	 */
	void alterInfo(Admin obj, String usercode);

}
