package cn.hubu.online.vo;

import java.io.Serializable;

public class QuerySelectVo implements Serializable {

	private String college;
	private String className;
	private String cname;

	public QuerySelectVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getCollege() {
		return college;
	}

	public void setCollege(String college) {
		this.college = college;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}
}
