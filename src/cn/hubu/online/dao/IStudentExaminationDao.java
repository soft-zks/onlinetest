package cn.hubu.online.dao;

import java.util.List;

import cn.hubu.online.po.Examination;
import cn.hubu.online.vo.SubjectTestVo;

/**
 * 
 * <p>
 * Description studentExamination表相关接口
 * </p>
 *
 * @author ZhaoKunsong
 * @date 2017年11月13日
 */
public interface IStudentExaminationDao extends BaseDao {

	/**
	 * 插入学生试卷表
	 * 
	 * @param examination
	 * @param sno
	 * @return
	 */
	int insertStuExa(Examination examination, String sno);

	/**
	 * 插入学生答案
	 * 
	 * @param stuAnswer
	 * @param practicalScore
	 * @param tno
	 * @return
	 */
	int updateStuAnswerAndScore(String stuAnswer, Integer practicalScore, Integer tno, String sno);

	/**
	 * 根据sno和cno获取所有的试题
	 * 
	 * @param sno
	 * @param cno
	 * @return
	 */
	List<SubjectTestVo> getAllTestBySno(String sno, String cno);

	/**
	 * 录入主观题的成绩
	 * 
	 * @param sno
	 * @param testno
	 * @param score
	 * @return
	 */
	int updateSubjectScore(String sno, Integer testno, Integer score);
}
