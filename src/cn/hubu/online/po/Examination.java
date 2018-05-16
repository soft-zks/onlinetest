package cn.hubu.online.po;

import java.io.Serializable;

public class Examination implements Serializable {

	private String id;
	private String testno;
	private String testType;
	private String content;
	private String refanswer;
	private Integer degree;
	private Integer chapter;
	private Integer score;
	private String examinationNumber;
	private String cno;
	private String cname;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTestno() {
		return testno;
	}

	public void setTestno(String testno) {
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

	public String getExaminationNumber() {
		return examinationNumber;
	}

	public void setExaminationNumber(String examinationNumber) {
		this.examinationNumber = examinationNumber;
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

}
