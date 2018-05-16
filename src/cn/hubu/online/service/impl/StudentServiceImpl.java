package cn.hubu.online.service.impl;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import cn.hubu.online.annotation.Transaction;
import cn.hubu.online.dao.ICourseDao;
import cn.hubu.online.dao.IExaminationDao;
import cn.hubu.online.dao.IStudentCourseDao;
import cn.hubu.online.dao.IStudentDao;
import cn.hubu.online.dao.IStudentExaminationDao;
import cn.hubu.online.dao.impl.StudentDaoImpl;
import cn.hubu.online.factory.BasicFactory;
import cn.hubu.online.po.Course;
import cn.hubu.online.po.Examination;
import cn.hubu.online.po.Student;
import cn.hubu.online.po.StudentCourse;
import cn.hubu.online.service.IStudentService;

/**
 * 
 * <p>
 * Description 学生业务
 * </p>
 *
 * @author ZhaoKunsong
 * @date 2017年11月13日
 */
public class StudentServiceImpl implements IStudentService {
	private IStudentCourseDao studentcoursedao = BasicFactory.getBasicFactory().getDaoInstance(IStudentCourseDao.class);
	private IStudentDao studentDao = BasicFactory.getBasicFactory().getDaoInstance(IStudentDao.class);
	private ICourseDao courseDao = BasicFactory.getBasicFactory().getDaoInstance(ICourseDao.class);
	private IExaminationDao examinationDao = BasicFactory.getBasicFactory().getDaoInstance(IExaminationDao.class);
	private IStudentExaminationDao studentExaminationDao = BasicFactory.getBasicFactory()
			.getDaoInstance(IStudentExaminationDao.class);

	@Override
	public List<StudentCourse> getCourseByCno(String cno) {
		return studentcoursedao.getCourseByCno(cno);
	}

	@Override
	public List<StudentCourse> getSelsctScore(String usercode) {
		return studentcoursedao.getSelsctScore(usercode);
	}

	@Override
	public List<Student> getStudentInfo() {
		return studentDao.getStudentInfo();
	}

	@Override
	public List<String> getClassName() {
		List<Student> studentsInfo = studentDao.getStudentInfo();
		List<String> classNames = new ArrayList<>();
		Set set = new HashSet();
		if (studentsInfo != null) {
			for (Student student : studentsInfo) {
				if (set.add(student.getClassName())) {
					classNames.add(student.getClassName());
				}
			}
		}
		return classNames;
	}

	@Override
	public List<String> getCollegeName() {
		List<Student> studentsInfo = studentDao.getStudentInfo();
		List<String> collageNames = new ArrayList<>();
		Set set = new HashSet();
		if (studentsInfo != null) {
			for (Student student : studentsInfo) {
				if (set.add(student.getCollege())) {
					collageNames.add(student.getCollege());
				}
			}
		}
		return collageNames;
	}

	@Override
	public List<String> getCollege() {
		List<Course> courses = courseDao.getCourse();
		List<String> collageNames = new ArrayList<>();
		Set set = new HashSet();
		if (courses != null) {
			for (Course cour : courses) {
				if (set.add(cour.getCollege())) {
					collageNames.add(cour.getCollege());
				}
			}
		}
		return collageNames;
	}

	@Override
	public List<StudentCourse> getStudentCourseBySno(String sno) {

		return studentDao.getStudentCourseBySno(sno);
	}

	@Override
	@Transaction
	public List<Examination> doTest(String cno, String sno) throws Exception {

		List<Examination> examinationList = examinationDao.getExaminationListByCno(cno);
		for (Examination examination : examinationList) {
			studentExaminationDao.insertStuExa(examination, sno);
		}

		return examinationList;
	}

	@Override
	@Transaction
	public void doFinishTest(String[] choiceNumbers, String[] choiceAnswers, String[] blankNumbers,
			String[] blankAnswers, String[] subjectNumbers, String[] subjectAnswers, String sno, String cno) {

		// 对于选择题和填空题，根据标准答案计算分数
		for (int i = 0; i < choiceNumbers.length; i++) {

			Integer tno = Integer.parseInt(choiceNumbers[i]);
			Examination examination = examinationDao.getExaminationByTno(tno);
			Integer practicalScore = 0;
			String str = examination.getRefanswer();
			if (choiceAnswers[i] != null && choiceAnswers[i] != ""
					&& (choiceAnswers[i].trim()).equals((str.substring(0, str.indexOf("|"))))) {
				practicalScore = examination.getScore();
			}
			studentExaminationDao.updateStuAnswerAndScore(choiceAnswers[i], practicalScore, tno, sno);

		}

		for (int i = 0; i < blankNumbers.length; i++) {

			Integer tno = Integer.parseInt(blankNumbers[i]);
			Examination examination = examinationDao.getExaminationByTno(tno);
			Integer practicalScore = 0;
			if (blankAnswers[i] != null && blankAnswers[i] != ""
					&& (blankAnswers[i].trim()).equals(examination.getRefanswer())) {
				practicalScore = examination.getScore();
			}
			studentExaminationDao.updateStuAnswerAndScore(blankAnswers[i], practicalScore, tno, sno);

		}

		// 对于主观题，插入学生答案由老师改卷
		for (int i = 0; i < subjectNumbers.length; i++) {

			Integer tno = Integer.parseInt(subjectNumbers[i]);

			studentExaminationDao.updateStuAnswerAndScore(subjectAnswers[i], null, tno, sno);

		}

		// 修改考试状态
		studentcoursedao.changeStatus(sno, "2", cno);

	}

	@Override
	public Course getCourseNameByCno(String cno) {

		return courseDao.getCourseNameByCno(cno);

	}
}
