package cn.hubu.online.dao;

import java.util.List;

import org.apache.tomcat.util.buf.StringCache;

import cn.hubu.online.po.TestBank;

/**
 * 
 * <p>
 * Description testBank表（题库表）相关接口
 * </p>
 *
 * @author ZhaoKunsong
 * @date 2017年11月13日
 */
public interface ITestBankDao extends BaseDao {

	/**
	 * 条件查询试题
	 * 
	 * @param testBank
	 *            封装查询条件
	 * @return
	 */
	public List<TestBank> findTestBank(TestBank testBank);

	/**
	 * 根据条件查询题库
	 * 
	 * @param testBank
	 * @return
	 */
	public List<TestBank> getTestBandByCond(TestBank testBank);

	/**
	 * 根据题号删除题目
	 * 
	 * @param testno
	 */
	public void delTestBankByTestno(String testno);

	/**
	 * 添加题目到题库中
	 * 
	 * @param testBank
	 */
	public void addTestBand(TestBank testBank);

	/**
	 * 根据类型和章节选择试题
	 * 
	 * @param type
	 * @param chapter
	 * @return
	 */
	public List<TestBank> getTestByTypeAndChapter(int type, int chapter, String cno);

	/**
	 * 根据难度和分数选择分数小于某个值的主观题
	 * 
	 * @param degree
	 * @param score
	 * @return
	 */
	public List<TestBank> getTestByDegreeAndScore(int startDegree, int endDegree, int score, String cno);

	/**
	 * 根据id查询题目
	 * 
	 * @param id
	 * @return
	 */
	public TestBank getTestBankById(Integer id);

}
