package cn.hubu.online.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.apache.commons.beanutils.BeanUtils;

import com.sun.org.apache.bcel.internal.generic.DALOAD;

import cn.hubu.online.annotation.Transaction;
import cn.hubu.online.dao.ICourseDao;
import cn.hubu.online.dao.IExaminationDao;
import cn.hubu.online.dao.IStudentCourseDao;
import cn.hubu.online.dao.IStudentExaminationDao;
import cn.hubu.online.dao.ITeacherCourseDao;
import cn.hubu.online.dao.ITeacherDao;
import cn.hubu.online.dao.ITestBankDao;
import cn.hubu.online.dao.impl.CourseDaoImpl;
import cn.hubu.online.dao.impl.StudentCourseDaoImpl;
import cn.hubu.online.factory.BasicFactory;
import cn.hubu.online.po.Course;
import cn.hubu.online.po.Examination;
import cn.hubu.online.po.StudentCourse;
import cn.hubu.online.po.Teacher;
import cn.hubu.online.po.TeacherCourse;
import cn.hubu.online.po.TestBank;
import cn.hubu.online.service.ITeacherService;
import cn.hubu.online.util.RandomUtils;
import cn.hubu.online.vo.StuTestVo;
import cn.hubu.online.vo.SubjectTestVo;
import sun.print.resources.serviceui;

/**
 * 
 * <p>
 * Description 教师业务
 * </p>
 *
 * @author ZhaoKunsong
 * @date 2017年11月13日
 */
public class TeacherServiceImpl implements ITeacherService {

	/*
	 * 注入dao
	 */
	private IExaminationDao examinationDao = BasicFactory.getBasicFactory().getDaoInstance(IExaminationDao.class);
	private ITestBankDao testBankDao = BasicFactory.getBasicFactory().getDaoInstance(ITestBankDao.class);
	private ICourseDao CourseDaoImpl = BasicFactory.getBasicFactory().getDaoInstance(ICourseDao.class);
	private ITeacherCourseDao teacherCourseDao = BasicFactory.getBasicFactory().getDaoInstance(ITeacherCourseDao.class);
	private IStudentCourseDao studentCourseDao = BasicFactory.getBasicFactory().getDaoInstance(IStudentCourseDao.class);
	private ITeacherDao teacherDao = BasicFactory.getBasicFactory().getDaoInstance(ITeacherDao.class);
	private IStudentExaminationDao studentExaminationDao = BasicFactory.getBasicFactory()
			.getDaoInstance(IStudentExaminationDao.class);

	@Override
	public List<TestBank> getTestBandByCond(TestBank testBank) {
		return testBankDao.getTestBandByCond(testBank);
	}

	@Override
	public void delTestBankByTestno(String testno) {
		testBankDao.delTestBankByTestno(testno);
	}

	@Override
	public void addTestBand(TestBank testBank) {
		// 如果是选择题或者填空题，自动设置分值为2分
		if (testBank.getTestType().equals("选择题") || testBank.getTestType().equals("填空题")) {
			testBank.setScore(2);
		} else {
			// 如果是主观题，根据难度系数设置分数
			// 难度系数1~5 分值：5分
			int degree = testBank.getDegree();
			if (degree >= 1 && degree <= 5) {
				testBank.setScore(5);
			} else {
				testBank.setScore(10);
			}
		}
		// 设置课程号
		String cno = CourseDaoImpl.findCnoByCname(testBank.getCname());
		// System.out.println(cno);
		testBank.setCno(cno);
		testBankDao.addTestBand(testBank);
		// System.out.println("service"+testBank.toString());
	}

	@Override
	public List<Course> getCourseName() {

		return CourseDaoImpl.getCourse();
		/*
		 * List<String> couseNames = new ArrayList<>(); if(courseList != null) {
		 * for(Course course : courseList) { couseNames.add(course.getCname());
		 * } } return couseNames;
		 */
	}

	@Override
	public List<TeacherCourse> getCourseByTno(String tno) {
		return teacherCourseDao.getCourseByTno(tno);
	}

	@Override
	public void updateStudentScore(StudentCourse studentcourses) {
		studentCourseDao.updateStudentScore(studentcourses);
	}

	@Override
	@Transaction
	public List<Examination> produceExaminationByModelOne(String cno) throws Exception {

		/**
		 * 选择题 10题 每题2分 1-10章 每章一个题 填空题 5题 每题2分 1-10章 每章一个题 大题 5分的题4个 难度系数<6
		 * 10分的题4个 三题难度系数<6,一题难度系数8-10
		 */
		List<TestBank> returnList = new ArrayList<>(); // 最终的题目列表

		/**
		 * 从题库表里面获取题目
		 */
		// 选择题
		List<TestBank> choiceTest = getTestByCNT(1, 10, 1, 0, cno);
		returnList.addAll(choiceTest);
		// 填空题
		List<TestBank> blankTest = getTestByCNT(1, 10, 1, 1, cno);
		returnList.addAll(blankTest);
		// 主观题
		List<TestBank> subjectTest1 = getTestByDNS(0, 5, 4, 5, cno);
		returnList.addAll(subjectTest1);
		List<TestBank> subjectTest2 = getTestByDNS(0, 5, 3, 10, cno);
		returnList.addAll(subjectTest2);
		List<TestBank> subjectTest3 = getTestByDNS(8, 10, 1, 10, cno);
		returnList.addAll(subjectTest3);

		/**
		 * 将所有的题目插入到试卷表里面
		 */

		return insertExamination(returnList);
	}

	@Override
	@Transaction
	public List<Examination> produceExaminationByModelTwo(String cno) throws Exception {

		/**
		 * 选择题 15题 每题2分 1-5章每章2题，6-10章每章1题 填空题 10题 每题2分 1-10章每章一题 大题 5分的题4个
		 * 难度系数<6 10分的题3个 两题难度系数<8 一题难度系数8-10
		 */

		List<TestBank> returnList = new ArrayList<>(); // 最终的题目列表

		/**
		 * 从题库表里面获取题目
		 */
		// 选择题
		List<TestBank> choiceTest1 = getTestByCNT(1, 5, 2, 0, cno);
		returnList.addAll(choiceTest1);
		List<TestBank> choiceTest2 = getTestByCNT(6, 10, 1, 0, cno);
		returnList.addAll(choiceTest2);
		// 填空题
		List<TestBank> blankTest = getTestByCNT(1, 10, 1, 1, cno);
		returnList.addAll(blankTest);
		// 主观题
		List<TestBank> subjectTest1 = getTestByDNS(0, 5, 4, 5, cno);
		returnList.addAll(subjectTest1);
		List<TestBank> subjectTest2 = getTestByDNS(0, 7, 2, 10, cno);
		returnList.addAll(subjectTest2);
		List<TestBank> subjectTest3 = getTestByDNS(8, 10, 1, 10, cno);
		returnList.addAll(subjectTest3);

		/**
		 * 将所有的题目插入到试卷表里面
		 */

		return insertExamination(returnList);
	}

	@Override
	@Transaction
	public List<Examination> produceExaminationByModelThree(String cno) throws Exception {

		/**
		 * 选择题 10题 每题2分 1-10章每章1题 填空题 5题 每题2分 1-5章每章一题 大题 5分的题6个 难度系数<6 10分的题4个
		 * 两题难度系数<8 两题难度系数8-10
		 */

		List<TestBank> returnList = new ArrayList<>(); // 最终的题目列表

		/**
		 * 从题库表里面获取题目
		 */
		// 选择题
		List<TestBank> choiceTest = getTestByCNT(1, 10, 1, 0, cno);
		returnList.addAll(choiceTest);
		// 填空题
		List<TestBank> blankTest = getTestByCNT(1, 5, 1, 1, cno);
		returnList.addAll(blankTest);
		// 主观题
		List<TestBank> subjectTest1 = getTestByDNS(0, 5, 6, 5, cno);
		returnList.addAll(subjectTest1);
		List<TestBank> subjectTest2 = getTestByDNS(0, 7, 2, 10, cno);
		returnList.addAll(subjectTest2);
		List<TestBank> subjectTest3 = getTestByDNS(8, 10, 2, 10, cno);
		returnList.addAll(subjectTest3);

		/**
		 * 将所有的题目插入到试卷表里面
		 */

		return insertExamination(returnList);
	}

	@Override
	@Transaction
	public List<Examination> TempInsertExamination() {

		return examinationDao.getExaminationListNoNumber();
	}

	/**
	 * 根据不同的章节和每个章节的题目数获取选择题和填空题 CNT分别指章节、数量、类型
	 * 
	 * @param startChapter
	 * @param endChapter
	 * @param number
	 * @param type
	 * @param cno
	 * @return
	 */
	protected List<TestBank> getTestByCNT(int startChapter, int endChapter, int number, int type, String cno) {

		List<TestBank> returnList = new ArrayList<>();

		for (int i = startChapter; i <= endChapter; i++) {
			List<TestBank> testList = testBankDao.getTestByTypeAndChapter(type, i, cno);
			if (testList.size() < number) {
				throw new RuntimeException("题目数量不够");
			}
			for (int j = 0; j < number; j++) {
				TestBank testBank = testList.get(RandomUtils.getRandomNumber(testList.size()));
				if (!returnList.contains(testBank)) {
					returnList.add(testBank);
				} else {
					j--;
				}
			}
		}

		return returnList;
	}

	/**
	 * 根据不同的难度系数、数量、分数获取主观题 DNS分别指难度系数、数量、分数
	 * 
	 * @param startDegree
	 * @param endDegree
	 * @param number
	 * @param score
	 * @return
	 */
	protected List<TestBank> getTestByDNS(int startDegree, int endDegree, int number, int score, String cno) {

		List<TestBank> returnList = new ArrayList<>();

		List<TestBank> testList = testBankDao.getTestByDegreeAndScore(startDegree, endDegree, score, cno);
		if (testList.size() < number) {
			throw new RuntimeException("题目数量不够");
		}
		for (int i = 0; i < number; i++) {
			TestBank testBank = testList.get(RandomUtils.getRandomNumber(testList.size()));
			if (!returnList.contains(testBank)) {
				returnList.add(testBank);
			} else {
				i--;
			}
		}

		return returnList;
	}

	/**
	 * 将试题列表插入试卷表并且返回
	 * 
	 * @param testBankList
	 * @return
	 * @throws InvocationTargetException
	 * @throws IllegalAccessException
	 */
	protected List<Examination> insertExamination(List<TestBank> testBankList) throws Exception {

		List<Examination> returnList = new ArrayList<>();
		String number = UUID.randomUUID().toString();
		for (TestBank testBank : testBankList) {
			Examination examination = new Examination();
			BeanUtils.copyProperties(examination, testBank);
			examination.setExaminationNumber(number);
			returnList.add(examination);
			examinationDao.insertExamination(testBank, number);
		}

		return returnList;
	}

	/**
	 * 随机生成试题
	 * 
	 * @param examinationList
	 * @param count
	 * @return
	 */
	/*
	 * protected List<Examination> getExaminationForType(List<Examination>
	 * examinationList, int count) {
	 * 
	 * List<Examination> returnList = new ArrayList<>(); int currentNumber = 0;
	 * if(examinationList.size() < count) { throw new
	 * RuntimeException("没有这么多题"); } while(true) { if(currentNumber == count) {
	 * break; } int temp = RandomUtils.getRandomNumber(count);
	 * if(!returnList.contains(examinationList.get(temp))) {
	 * returnList.add(examinationList.get(temp)); currentNumber ++ ; } } return
	 * returnList; }
	 */

	/**
	 * 按照模板返回试题
	 * 
	 * @param choiceNumber
	 * @param blankNumber
	 * @param fiveSubjectNumber
	 * @param tenSubjectNumber
	 * @return
	 */
	/*
	 * protected List<Examination> getExaminationForModel(int choiceNumber, int
	 * blankNumber, int fiveSubjectNumber, int tenSubjectNumber) {
	 * 
	 * List<Examination> examinationList = new ArrayList<>(); //包含所有试题
	 * 
	 * //选择题 List<Examination> choiceTestList =
	 * getExaminationForType(testBankDao.selectTestByTypeAndScore("0",2),
	 * choiceNumber); examinationList.addAll(choiceTestList); //填空题
	 * List<Examination> blankTestList =
	 * getExaminationForType(testBankDao.selectTestByTypeAndScore("1",2),
	 * blankNumber); examinationList.addAll(blankTestList); //5分的大题
	 * List<Examination> subjectiveTestListFive =
	 * getExaminationForType(testBankDao.selectTestByTypeAndScore("2",5),
	 * fiveSubjectNumber); examinationList.addAll(subjectiveTestListFive);
	 * //10分的大题 List<Examination> subjectiveTestListTen =
	 * getExaminationForType(testBankDao.selectTestByTypeAndScore("2",10),
	 * tenSubjectNumber); examinationList.addAll(subjectiveTestListTen);
	 * 
	 * return examinationList; }
	 */

	@Override
	public List<TestBank> selectTestBank(TestBank testBank) {

		return testBankDao.findTestBank(testBank);

	}

	@Override
	public void insertExamination(TestBank testBank) {

		examinationDao.insertExamination(testBank, null);

	}

	@Override
	@Transaction
	public List<Examination> insertExaminations(List<Examination> examinationList) {

		List<Examination> returnList = new ArrayList<>();

		String number = UUID.randomUUID().toString();
		for (Examination examination : examinationList) {
			examination.setExaminationNumber(number);
			examinationDao.insertExaminations(examination);
			returnList.add(examination);
		}

		return returnList;

	}

	@Override
	public TestBank getTestBankById(Integer id) {

		return testBankDao.getTestBankById(id);
	}

	@Override
	@Transaction
	public List<Examination> insertNumber(String[] ids) {

		String number = UUID.randomUUID().toString();
		for (String str : ids) {
			examinationDao.insertNumber(Integer.parseInt(str), number);
		}

		List<Examination> returnList = examinationDao.getExaminationListByNumber(number);

		return returnList;

	}

	@Override
	public void deleteExaById(int id) {
		examinationDao.deleteExaById(id);
	}

	@Override
	public List<Teacher> getTeacherInfo() {
		return teacherDao.getTeacherInfo();
	}

	@Override
	public Teacher getTeacherInfoByTno(String tno) {
		return teacherDao.etTeacherInfoByTno(tno);
	}

	@Override
	public List<StuTestVo> getAllTestInfo(String cno) {

		List<StuTestVo> stuTestVoList = new ArrayList<>();

		// 先从学生课程表里面查出所有的选了这么课的学生
		String[] snos = studentCourseDao.getAllSnoByCno(cno);

		// 然后根据学号将这个学生的试卷信息封装到vo里面去
		for (String sno : snos) {

			StuTestVo stuTestVo = new StuTestVo();
			stuTestVo.setSno(sno);
			List<SubjectTestVo> subjectTestVoList = studentExaminationDao.getAllTestBySno(sno, cno);
			stuTestVo.setSubjectTestVoList(subjectTestVoList);
			stuTestVoList.add(stuTestVo);

		}

		// 将所有的信息返回给controller
		return stuTestVoList;
	}

	@Override
	@Transaction
	public void updateSubjectScore(String sno, String[] testNumbers, String[] practicalScores, String cno) {

		// 先将主观题的分存入学生试卷表
		// 将总分存入学生选课表
		for (int i = 0; i < testNumbers.length; i++) {
			Integer number = Integer.parseInt(testNumbers[i]);
			Integer score = Integer.parseInt(practicalScores[i]);
			studentExaminationDao.updateSubjectScore(sno, number, score);
			studentCourseDao.updatePaperScore(sno, cno);
		}

	}

	@Override
	public void deleteExaByExaNumber(String number) {

		examinationDao.deleteExaByExaNumber(number);

	}

}
