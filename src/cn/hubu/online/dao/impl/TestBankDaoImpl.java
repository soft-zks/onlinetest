package cn.hubu.online.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import cn.hubu.online.util.JDBCUtils;
import cn.hubu.online.util.StringUtils;
import cn.hubu.online.util.TransactionManager;
import cn.hubu.online.dao.ITestBankDao;
import cn.hubu.online.po.TestBank;

/**
 * 
 * <p>
 * Description testBank表（题库表）相关操作
 * </p>
 *
 * @author ZhaoKunsong
 * @date 2017年11月13日
 */
public class TestBankDaoImpl implements ITestBankDao {

	@Override
	public List<TestBank> findTestBank(TestBank testBank) {

		StringBuilder sql = new StringBuilder("select * from testbank where 1=1 ");
		List params = new ArrayList<>();

		if (testBank != null) {
			if (StringUtils.isNotBlank(testBank.getTestno())) {
				sql.append(" and testno = ?");
				params.add(testBank.getTestno());
			}
			if (StringUtils.isNotBlank(testBank.getTestType())) {
				sql.append(" and testtype = ?");
				params.add(testBank.getTestType());
			}
			if (StringUtils.isNotBlank(testBank.getChapter())) {
				sql.append(" and chapter = ?");
				params.add(testBank.getChapter());
			}
			if (StringUtils.isNotBlank(testBank.getContent())) {
				sql.append(" and content like ?");
				params.add("%" + testBank.getContent() + "%");
			}
			if (StringUtils.isNotBlank(testBank.getDegree())) {
				sql.append(" and degree = ?");
				params.add(testBank.getDegree());
			}
			if (StringUtils.isNotBlank(testBank.getScore())) {
				sql.append(" and score = ?");
				params.add(testBank.getScore().toString());
			}
			if (StringUtils.isNotBlank(testBank.getCno())) {
				sql.append(" and cno = ?");
				params.add(testBank.getCno());
			}
			if (StringUtils.isNotBlank(testBank.getCname())) {
				sql.append(" and cname = ?");
				params.add(testBank.getCname());
			}
		}
		try {

			QueryRunner queryRunner = new QueryRunner(TransactionManager.getDataSource());
			return queryRunner.query(sql.toString(), new BeanListHandler<TestBank>(TestBank.class), params.toArray());

		} catch (Exception e) {
			throw new RuntimeException("条件查询失败");
		}
	}

	@Override
	public List<TestBank> getTestBandByCond(TestBank testBank) {
		String sql = "select * from testbank where 1=1 ";
		List<Object> list = new ArrayList<Object>();
		if (testBank.getCname() != null && !"".equals(testBank.getCname())) {
			sql += " and cname like ? ";
			list.add("%" + testBank.getCname() + "%");
		}
		if (testBank.getTestType() != null && !"".equals(testBank.getTestType())) {
			sql += " and testType = ? ";
			list.add(testBank.getTestType());
		}
		if (testBank.getChapter() != null && !"".equals(testBank.getChapter()) && testBank.getChapter() != 0) {
			sql += " and chapter = ? ";
			list.add(testBank.getChapter());
		}
		try {
			QueryRunner runner = new QueryRunner(TransactionManager.getDataSource());
			if (list.size() <= 0) {
				return runner.query(sql, new BeanListHandler<TestBank>(TestBank.class));
			} else {
				return runner.query(sql, new BeanListHandler<TestBank>(TestBank.class), list.toArray());
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("条件查询题目失败！！");
		}
	}

	@Override
	public void delTestBankByTestno(String testno) {
		String sql = "delete from testbank where testno = ?";
		try {
			QueryRunner runner = new QueryRunner(TransactionManager.getDataSource());
			runner.update(sql, testno);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("删除题目失败！！！");
		}
	}

	@Override
	public void addTestBand(TestBank testBank) {
		String sql = "insert into testbank values(null,?,?,?,?,?,?,?,?)";
		try {
			QueryRunner runner = new QueryRunner(TransactionManager.getDataSource());
			runner.update(sql, testBank.getTestType(), testBank.getContent(), testBank.getRefanswer(),
					testBank.getDegree(), testBank.getChapter(), testBank.getScore(), testBank.getCno(),
					testBank.getCname());
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("添加题目失败！！！");
		}
	}

	@Override
	public List<TestBank> getTestByTypeAndChapter(int type, int chapter, String cno) {

		try {
			String sql = "select * from testbank where testType = ? and chapter = ? and cno = ?";
			QueryRunner queryRunner = new QueryRunner(TransactionManager.getDataSource());
			return queryRunner.query(sql, new BeanListHandler<TestBank>(TestBank.class), type, chapter, cno);
		} catch (Exception e) {
			throw new RuntimeException("根据类型查询试题失败");
		}
	}

	@Override
	public List<TestBank> getTestByDegreeAndScore(int startDegree, int endDegree, int score, String cno) {
		try {
			String sql = "select * from testbank where testType = 2 and score = ? and ( degree between ? and ? ) and cno = ?";
			QueryRunner queryRunner = new QueryRunner(TransactionManager.getDataSource());
			return queryRunner.query(sql, new BeanListHandler<TestBank>(TestBank.class), score, startDegree, endDegree,
					cno);
		} catch (Exception e) {
			throw new RuntimeException("查询某难度范围试题失败");
		}

	}

	@Override
	public TestBank getTestBankById(Integer id) {

		try {
			String sql = "select * from testbank where testno = ?";
			QueryRunner queryRunner = new QueryRunner(TransactionManager.getDataSource());
			return queryRunner.query(sql, new BeanHandler<TestBank>(TestBank.class), id);
		} catch (Exception e) {
			throw new RuntimeException("根据id查询题目失败");
		}
	}

	/*
	 * @Override public List<Examination> selectTestByTypeAndScore(String type,
	 * Integer score) {
	 * 
	 * try { String sql =
	 * "select * from testbank where testType = ? and score = ?"; QueryRunner
	 * queryRunner = new QueryRunner(TransactionManager.getDataSource()); return
	 * queryRunner.query(sql, new
	 * BeanListHandler<Examination>(Examination.class), type, score); } catch
	 * (Exception e) { throw new RuntimeException("根据类型查询试题失败"); } }
	 */
}
