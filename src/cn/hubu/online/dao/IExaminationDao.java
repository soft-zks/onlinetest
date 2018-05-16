package cn.hubu.online.dao;

import java.util.List;

import cn.hubu.online.po.Examination;
import cn.hubu.online.po.TestBank;

/**
 * 
 * <p>
 * Description examination表（试卷表）相关接口
 * </p>
 *
 * @author ZhaoKunsong
 * @date 2017年11月13日
 */
public interface IExaminationDao extends BaseDao {

	/**
	 * 向试卷表里面插入试题
	 * 
	 * @param testBank
	 * @param examinationNumber
	 * @return
	 */
	public int insertExamination(TestBank testBank, String examinationNumber);

	/**
	 * 查询某一套试卷
	 * 
	 * @param number
	 * @return 试卷所包含的试题列表
	 */
	public List<Examination> getExaminationListByNumber(String number);

	/**
	 * 查询没有序号的试卷
	 * 
	 * @return
	 */
	public List<Examination> getExaminationListNoNumber();

	/**
	 * 将带有试卷号的试题插入试卷表--手动生成的额
	 * 
	 * @param examination
	 * @return
	 */
	public int insertExaminations(Examination examination);

	/**
	 * 插入试卷号 ---手动出卷
	 * 
	 * @param id
	 * @param number
	 * @return
	 */
	public int insertNumber(int id, String number);

	/**
	 * 根据id从试卷表删除试题
	 * 
	 * @param id
	 * @return
	 */
	public int deleteExaById(int id);

	/**
	 * 根据cno查询试卷
	 * 
	 * @param cno
	 * @return
	 */
	public List<Examination> getExaminationListByCno(String cno);

	/**
	 * 根据tno获取试卷表中的试题
	 * 
	 * @param tno
	 * @return
	 */
	public Examination getExaminationByTno(Integer tno);

	/**
	 * 根据试卷号删除试卷
	 * 
	 * @param number
	 */
	public int deleteExaByExaNumber(String number);

}
