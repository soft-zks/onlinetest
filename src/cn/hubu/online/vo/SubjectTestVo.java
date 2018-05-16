package cn.hubu.online.vo;

import java.io.Serializable;

/**
 * 
 * <p>
 * Description 封装要显示到页面的试卷信息
 * </p>
 *
 * @author ZhaoKunsong
 * @date 2017年12月2日
 */
public class SubjectTestVo implements Serializable {

	private String testno;
	private Integer score;
	private String content;
	private String refanswer;
	private String stuAnswer;
	private String cno;

	public String getTestno() {
		return testno;
	}

	public void setTestno(String testno) {
		this.testno = testno;
	}

	public Integer getScore() {
		return score;
	}

	public void setScore(Integer score) {
		this.score = score;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getRefanswer() {
		return refanswer;
	}

	public void setRefanswer(String refanswer) {
		this.refanswer = refanswer;
	}

	public String getStuAnswer() {
		return stuAnswer;
	}

	public void setStuAnswer(String stuAnswer) {
		this.stuAnswer = stuAnswer;
	}

	public String getCno() {
		return cno;
	}

	public void setCno(String cno) {
		this.cno = cno;
	}

}
