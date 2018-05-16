package cn.hubu.online.util;

import java.util.Random;

/**
 * 
 * <p>
 * Description 生成随机数
 * </p>
 *
 * @author ZhaoKunsong
 * @date 2017年11月17日
 */
public class RandomUtils {

	private static final Random random = new Random();

	public static Integer getRandomNumber(int count) {

		return random.nextInt(count);
	}

	public static void main(String[] args) {

		for (int i = 0; i < 100; i++) {
			System.out.println(new RandomUtils().getRandomNumber(5) == 5);
		}
	}

}
