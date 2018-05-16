package cn.hubu.online.dao;

import cn.hubu.online.po.Login;

/**
 * 
 * <p>
 * Description login表相关接口
 * </p>
 *
 * @author ZhaoKunsong
 * @date 2017年11月13日
 */
public interface ILoginDao extends BaseDao {

	/**
	 * 根据账号和密码进行登录
	 * 
	 * @param usercode
	 *            账号
	 * @param password
	 *            密码
	 * @return 登录成功返回Login对象，否则返回null
	 */
	Login getUserByNameAndPsw(String usercode, String password);

	/**
	 * 修改密码
	 * 
	 * @param usercode
	 * @param newpassword
	 * @return
	 */
	void alterPsw(String usercode, String newpassword);

}
