package cn.hubu.online.po;

import java.io.Serializable;

public class TestBank implements Serializable {

	private Integer testno;
	private String testType;
	private String content;
	private String refanswer;
	private Integer degree;
	private Integer chapter;
	private Integer score;
	private String cno;
	private String cname;

	public Integer getTestno() {
		return testno;
	}

	public void setTestno(Integer testno) {
		this.testno = testno;
	}

	public String getTestType() {
		return testType;
	}

	public void setTestType(String testType) {
		this.testType = testType;
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

	public Integer getDegree() {
		return degree;
	}

	public void setDegree(Integer degree) {
		this.degree = degree;
	}

	public Integer getChapter() {
		return chapter;
	}

	public void setChapter(Integer chapter) {
		this.chapter = chapter;
	}

	public Integer getScore() {
		return score;
	}

	public void setScore(Integer score) {
		this.score = score;
	}

	public String getCno() {
		return cno;
	}

	public void setCno(String cno) {
		this.cno = cno;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	@Override
	public String toString() {
		return "TestBank [testno=" + testno + ", testType=" + testType + ", content=" + content + ", refanswer="
				+ refanswer + ", degree=" + degree + ", chapter=" + chapter + ", score=" + score + ", cno=" + cno
				+ ", cname=" + cname + "]";
	}

}
