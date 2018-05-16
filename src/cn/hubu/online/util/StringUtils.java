package cn.hubu.online.util;

/**
 * 
 * <p>
 * Description 字符串操作工具类
 * </p>
 *
 * @author ZhaoKunsong
 * @date 2017年11月14日
 */
public class StringUtils {

	/**
	 * 判断是否为空
	 * 
	 * @param obj
	 * @return
	 */
	public static boolean isNotBlank(Object obj) {

		if (obj == null) {
			return false;
		} else if ("".equals(obj)) {
			return false;
		} else {
			return true;
		}
	}

}
