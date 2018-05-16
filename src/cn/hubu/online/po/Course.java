package cn.hubu.online.po;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;

public class Course implements Serializable {

	private String cno;
	private String cname;
	private String college;
	private Timestamp openTime;
	private Timestamp testTime;
	private String teststatus;

	public String getTeststatus() {
		return teststatus;
	}

	public void setTeststatus(String teststatus) {
		this.teststatus = teststatus;
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

	public String getCollege() {
		return college;
	}

	public void setCollege(String college) {
		this.college = college;
	}

	public Timestamp getOpenTime() {
		return openTime;
	}

	public void setOpenTime(Timestamp openTime) {
		this.openTime = openTime;
	}

	public Timestamp getTestTime() {
		return testTime;
	}

	public void setTestTime(Timestamp testTime) {
		this.testTime = testTime;
	}

}
