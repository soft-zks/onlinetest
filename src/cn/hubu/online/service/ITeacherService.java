package cn.hubu.online.service;

import java.util.List;

import cn.hubu.online.po.Course;
import cn.hubu.online.po.Examination;
import cn.hubu.online.po.StudentCourse;
import cn.hubu.online.po.Teacher;
import cn.hubu.online.po.TestBank;
import cn.hubu.online.vo.StuTestVo;
import cn.hubu.online.po.TeacherCourse;

/**
 * 
 * <p>
 * Description 教师业务接口
 * </p>
 *
 * @author ZhaoKunsong
 * @date 2017年11月13日
 */
public interface ITeacherService extends BaseService {

	/**
	 * 条件查询题库
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
	 * 添加题目
	 * 
	 * @param testBank
	 */
	public void addTestBand(TestBank testBank);

	/**
	 * 查询课程名字
	 */
	public List<Course> getCourseName();

	/**
	 * 根据tno查询该老师所选的全部课程
	 * 
	 * @param tno
	 * @return
	 */
	public List<TeacherCourse> getCourseByTno(String tno);

	/**
	 * 更新学生平时成绩和总成绩
	 * 
	 * @param studentcourses
	 */
	public void updateStudentScore(StudentCourse studentcourses);

	/**
	 * 模板一生成试卷
	 * 
	 * 选择题 10题 每题2分 填空题 5题 每题2分 大题 5分的题4个 10分的题5个
	 * 
	 * @return
	 */
	public List<Examination> produceExaminationByModelOne(String cno) throws Exception;

	/**
	 * 模板二生成试卷 /** 选择题 10题 每题2分 填空题 10题 每题2分 大题 5分的题6个 10分的题3个
	 * 
	 * @return
	 * @throws Exception
	 */
	public List<Examination> produceExaminationByModelTwo(String cno) throws Exception;

	/**
	 * 模板三生成试卷
	 * 
	 * @return
	 * @throws Exception
	 */
	public List<Examination> produceExaminationByModelThree(String cno) throws Exception;

	/**
	 * 手动生成试卷
	 * 
	 * @return
	 */
	public List<Examination> TempInsertExamination();

	/**
	 * 条件查询试题
	 * 
	 * @param testBank
	 * @return
	 */
	public List<TestBank> selectTestBank(TestBank testBank);

	/**
	 * 把试题插入到试卷表
	 * 
	 * @param exam
	 */
	public void insertExamination(TestBank testBank);

	/**
	 * 把试题插入试题表，手动生成试题
	 * 
	 * @param examinationList
	 * @return
	 */
	public List<Examination> insertExaminations(List<Examination> examinationList);

	/**
	 * 根据id查询
	 * 
	 * @param id
	 * @return
	 */
	public TestBank getTestBankById(Integer id);

	/**
	 * 将试卷号插入试卷表并返回试卷
	 * 
	 * @param ids
	 * @return
	 */
	public List<Examination> insertNumber(String[] ids);

	/**
	 * 根据id从试卷表里面删除试题
	 * 
	 * @param id
	 */
	public void deleteExaById(int id);

	/**
	 * 获取教师详细信息
	 * 
	 * @return
	 */
	public List<Teacher> getTeacherInfo();

	/**
	 * 根据tno获取教师信息
	 * 
	 * @return
	 */
	public Teacher getTeacherInfoByTno(String tno);

	/**
	 * 获取所有学生的答题信息
	 * 
	 * @param cno
	 * @return
	 */
	public List<StuTestVo> getAllTestInfo(String cno);

	/**
	 * 更新学生主观题
	 * 
	 * @param sno
	 * @param testNumbers
	 * @param practicalScores
	 * @param cno
	 */
	public void updateSubjectScore(String sno, String[] testNumbers, String[] practicalScores, String cno);

	/**
	 * 根据试卷号删除试卷
	 * 
	 * @param number
	 */
	public void deleteExaByExaNumber(String number);
}
