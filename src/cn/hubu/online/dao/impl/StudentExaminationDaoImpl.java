package cn.hubu.online.dao.impl;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import cn.hubu.online.dao.IStudentExaminationDao;
import cn.hubu.online.po.Examination;
import cn.hubu.online.util.TransactionManager;
import cn.hubu.online.vo.SubjectTestVo;

/**
 * 
 * <p>
 * Description studentExamination表相关操作
 * </p>
 *
 * @author ZhaoKunsong
 * @date 2017年11月13日
 */
public class StudentExaminationDaoImpl implements IStudentExaminationDao {

	@Override
	public int insertStuExa(Examination examination, String sno) {

		try {

			int result = 0;

			String sql = "insert into studentexamination(sno,testno,score,refanswer,examinationNumber,cno,status) values(?,?,?,?,?,?,?)";
			QueryRunner queryRunner = new QueryRunner(TransactionManager.getDataSource());
			result = queryRunner.update(sql, sno, examination.getTestno(), examination.getScore(),
					examination.getRefanswer(), examination.getExaminationNumber(), examination.getCno(), "0");

			return result;

		} catch (Exception e) {
			throw new RuntimeException("插入学生试卷表失败");
		}

	}

	@Override
	public int updateStuAnswerAndScore(String stuAnswer, Integer practicalScore, Integer tno, String sno) {

		try {

			int result = 0;

			String sql = "update studentexamination set stuAnswer = ? , practicalScore = ? where testno = ? and sno = ?";
			QueryRunner queryRunner = new QueryRunner(TransactionManager.getDataSource());
			result = queryRunner.update(sql, stuAnswer, practicalScore, tno, sno);

			return result;

		} catch (Exception e) {
			throw new RuntimeException("插入学生答案失败");
		}
	}

	@Override
	public List<SubjectTestVo> getAllTestBySno(String sno, String cno) {

		try {

			String sql = "select se.testno testno, se.score score, e.content content, se.refanswer refanswer, se.stuAnswer stuAnswer, se.cno cno  "
					+ " from studentexamination se, examination e "
					+ " where se.sno = ?  and se.testno = e.testno and se.cno = ? and se.status = ? and e.testType = ? and se.status = ? ";
			QueryRunner queryRunner = new QueryRunner(TransactionManager.getDataSource());
			return queryRunner.query(sql, new BeanListHandler<SubjectTestVo>(SubjectTestVo.class), sno, cno, "0", "2",
					"0");

		} catch (Exception e) {
			throw new RuntimeException("根据学号查试题列表失败");
		}

	}

	@Override
	public int updateSubjectScore(String sno, Integer testno, Integer score) {

		try {

			int result = 0;

			String sql = "update studentexamination set practicalScore = ? ,status = ? where testno = ? and sno = ? ";
			QueryRunner queryRunner = new QueryRunner(TransactionManager.getDataSource());
			result = queryRunner.update(sql, score, "1", testno, sno);

			return result;

		} catch (Exception e) {
			throw new RuntimeException("插入学生主观题分数失败");
		}
	}

}
