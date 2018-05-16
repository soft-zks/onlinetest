package cn.hubu.online.po;

import java.io.Serializable;

public class StudentExamination implements Serializable {

	private String seid;
	private String sno;
	private String testno;
	private Integer score;
	private String refanswer;
	private String stuAnswer;
	private Integer practicalScore;
	private String status;
	private String examinationNumber;
	private String cno;

	public String getSeid() {
		return seid;
	}

	public void setSeid(String seid) {
		this.seid = seid;
	}

	public String getCno() {
		return cno;
	}

	public void setCno(String cno) {
		this.cno = cno;
	}

	public String getSno() {
		return sno;
	}

	public void setSno(String sno) {
		this.sno = sno;
	}

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

	public Integer getPracticalScore() {
		return practicalScore;
	}

	public void setPracticalScore(Integer practicalScore) {
		this.practicalScore = practicalScore;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getExaminationNumber() {
		return examinationNumber;
	}

	public void setExaminationNumber(String examinationNumber) {
		this.examinationNumber = examinationNumber;
	}

}
