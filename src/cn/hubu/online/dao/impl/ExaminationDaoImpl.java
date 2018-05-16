package cn.hubu.online.dao.impl;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import cn.hubu.online.dao.IExaminationDao;
import cn.hubu.online.po.Examination;
import cn.hubu.online.po.TestBank;
import cn.hubu.online.util.TransactionManager;

/**
 * 
 * <p>
 * Description examination表（试卷表）相关操作
 * </p>
 *
 * @author ZhaoKunsong
 * @date 2017年11月13日
 */
public class ExaminationDaoImpl implements IExaminationDao {

	@Override
	public int insertExamination(TestBank testBank, String examinationNumber) {

		int result = 0;
		try {
			String sql = "insert into examination(testno,testType,content,refanswer,degree,chapter,score,examinationNumber,cno) values(?,?,?,?,?,?,?,?,?)";
			QueryRunner queryRunner = new QueryRunner(TransactionManager.getDataSource());
			result = queryRunner.update(sql, testBank.getTestno(), testBank.getTestType(), testBank.getContent(),
					testBank.getRefanswer(), testBank.getDegree(), testBank.getChapter(), testBank.getScore(),
					examinationNumber, testBank.getCno());

			return result;
		} catch (Exception e) {
			throw new RuntimeException("插入试卷表失败");
		}
	}

	@Override
	public List<Examination> getExaminationListByNumber(String number) {

		try {
			String sql = "select * from examination where examinationNumber = ?";
			QueryRunner queryRunner = new QueryRunner(TransactionManager.getDataSource());
			return queryRunner.query(sql, new BeanListHandler<Examination>(Examination.class), number);

		} catch (Exception e) {
			throw new RuntimeException("查询试卷失败");
		}

	}

	@Override
	public List<Examination> getExaminationListNoNumber() {

		try {
			String sql = "select * from examination where examinationNumber is null";
			QueryRunner queryRunner = new QueryRunner(TransactionManager.getDataSource());
			return queryRunner.query(sql, new BeanListHandler<Examination>(Examination.class));

		} catch (Exception e) {
			throw new RuntimeException("查询没有试卷号的试卷失败");
		}

	}

	@Override
	public int insertExaminations(Examination examination) {

		int result = 0;
		try {
			String sql = "insert into examination(testno,testType,content,refanswer,degree,chapter,score,examinationNumber,cno,cname)"
					+ " values(?,?,?,?,?,?,?,?,?,?)";
			QueryRunner queryRunner = new QueryRunner(TransactionManager.getDataSource());
			result = queryRunner.update(sql, examination.getTestno(), examination.getTestType(),
					examination.getContent(), examination.getRefanswer(), examination.getRefanswer(),
					examination.getDegree(), examination.getChapter(), examination.getScore(),
					examination.getExaminationNumber(), examination.getCno(), examination.getCname());

		} catch (Exception e) {
			throw new RuntimeException("插入试卷表失败");
		}
		return result;
	}

	@Override
	public int insertNumber(int id, String number) {

		int result = 0;
		try {
			String sql = "update examination set examinationNumber = ? where id = ?";
			QueryRunner queryRunner = new QueryRunner(TransactionManager.getDataSource());
			result = queryRunner.update(sql, number, id);
			return result;

		} catch (Exception e) {
			throw new RuntimeException("插入试卷号失败");
		}

	}

	@Override
	public int deleteExaById(int id) {

		int result = 0;
		try {
			String sql = "delete from examination where id = ?";
			QueryRunner queryRunner = new QueryRunner(TransactionManager.getDataSource());
			result = queryRunner.update(sql, id);
			return result;

		} catch (Exception e) {
			throw new RuntimeException("根据id删除试卷表中的题目失败");
		}

	}

	@Override
	public List<Examination> getExaminationListByCno(String cno) {

		try {
			String sql = "select * from examination where cno = ? ";
			QueryRunner queryRunner = new QueryRunner(TransactionManager.getDataSource());
			return queryRunner.query(sql, new BeanListHandler<Examination>(Examination.class), cno);

		} catch (Exception e) {
			throw new RuntimeException("根据cno查询试卷失败");
		}
	}

	@Override
	public Examination getExaminationByTno(Integer tno) {

		try {
			String sql = "select * from examination where testno = ? ";
			QueryRunner queryRunner = new QueryRunner(TransactionManager.getDataSource());
			return queryRunner.query(sql, new BeanHandler<Examination>(Examination.class), tno);

		} catch (Exception e) {
			throw new RuntimeException("根据tno查询试题失败");
		}
	}

	@Override
	public int deleteExaByExaNumber(String number) {

		try {
			int result = 0;
			String sql = "delete from examination where examinationNumber = ? ";
			QueryRunner queryRunner = new QueryRunner(TransactionManager.getDataSource());
			result = queryRunner.update(sql, number);
			return result;

		} catch (Exception e) {

			throw new RuntimeException("根据试卷号删除试卷失败");
		}
	}

}
