package cn.hubu.online.po;

import java.io.Serializable;

public class StudentCourse implements Serializable {

	private String id;
	private String sno;
	private String sname;
	private String cno;
	private String cname;
	private Integer usualScore;
	private Integer paperScore;
	private Integer sumScore;
	private String status;
	private String teststatus;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getSno() {
		return sno;
	}

	public void setSno(String sno) {
		this.sno = sno;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
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

	public Integer getUsualScore() {
		return usualScore;
	}

	public void setUsualScore(Integer usualScore) {
		this.usualScore = usualScore;
	}

	public Integer getPaperScore() {
		return paperScore;
	}

	public void setPaperScore(Integer paperScore) {
		this.paperScore = paperScore;
	}

	public Integer getSumScore() {
		return sumScore;
	}

	public void setSumScore(Integer sumScore) {
		this.sumScore = sumScore;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getTeststatus() {
		return teststatus;
	}

	public void setTeststatus(String teststatus) {
		this.teststatus = teststatus;
	}

}
