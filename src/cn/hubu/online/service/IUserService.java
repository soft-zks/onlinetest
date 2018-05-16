package cn.hubu.online.service;

import cn.hubu.online.po.Login;

/**
 * 
 * <p>
 * Description 登录等业务接口
 * </p>
 *
 * @author ZhaoKunsong
 * @date 2017年11月13日
 */
public interface IUserService extends BaseService {

	/**
	 * 根据账号和密码登录
	 * 
	 * @param usercode
	 *            账号
	 * @param password
	 *            密码
	 * @return 账号和密码正确返回login，否则返回null
	 */
	Login getUserByNameAndPsw(String usercode, String password);

	/**
	 * 修改密码
	 * 
	 * @param usercode
	 * @param newpassword
	 */
	void alterPsw(String usercode, String newpassword);

	/**
	 * 修改个人信息
	 * 
	 * @param obj
	 *            个人信息
	 * @param rol
	 *            角色
	 * @param usercode
	 *            账号
	 */
	void alterInfo(Object obj, String role, String usercode);

}
