package cn.hubu.online.service;

import java.util.List;

import cn.hubu.online.po.Course;
import cn.hubu.online.po.Examination;
import cn.hubu.online.po.Student;
import cn.hubu.online.po.StudentCourse;

/**
 * 
 * <p>
 * Description 学生业务接口
 * </p>
 *
 * @author ZhaoKunsong
 * @date 2017年11月13日
 */
public interface IStudentService extends BaseService {

	/**
	 * 根据课程号查询选了这门课的所有学生
	 * 
	 * @param cno
	 * @return
	 */
	List<StudentCourse> getCourseByCno(String cno);

	/**
	 * 根据学号查找选了这门课的学生信息、成绩
	 * 
	 * @param usercode
	 * @return
	 */
	List<StudentCourse> getSelsctScore(String usercode);

	/**
	 * 获取学生信息
	 * 
	 * @return
	 */
	List<Student> getStudentInfo();

	/**
	 * 获取学生班级信息
	 * 
	 * @return
	 */
	List<String> getClassName();

	/**
	 * 获取学生院系信息
	 * 
	 * @return
	 */
	List<String> getCollegeName();

	/**
	 * 获取学生院系信息
	 * 
	 * @return
	 */
	List<String> getCollege();

	/**
	 * 根据sno获取选课信息
	 * 
	 * @param sno
	 * @return
	 */
	List<StudentCourse> getStudentCourseBySno(String sno);

	/**
	 * 处理考试业务
	 * 
	 * @param cno
	 * @param sno
	 * @return
	 * @throws Exception
	 */
	List<Examination> doTest(String cno, String sno) throws Exception;

	/**
	 * 学生交卷
	 * 
	 * @param choiceNumbers
	 * @param choiceAnswers
	 * @param blankNumbers
	 * @param blankAnswers
	 * @param subjectNumbers
	 * @param subjectAnswers
	 * @param sno
	 * @param cno
	 */
	void doFinishTest(String[] choiceNumbers, String[] choiceAnswers, String[] blankNumbers, String[] blankAnswers,
			String[] subjectNumbers, String[] subjectAnswers, String sno, String cno);

	/**
	 * 根据cno获取课程
	 * 
	 * @param cno
	 * @return
	 */
	Course getCourseNameByCno(String cno);
}
