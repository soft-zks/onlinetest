package cn.hubu.online.po;

import java.io.Serializable;

public class Teacher implements Serializable {

	private String tno;
	private String tname;
	private String college;
	private String sex;
	private String nation;
	private String age;
	private String idCard;
	private String photo;
	private String phoneNumber;
	private String email;

	public String getTno() {
		return tno;
	}

	public void setTno(String tno) {
		this.tno = tno;
	}

	public String getTname() {
		return tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}

	public String getCollege() {
		return college;
	}

	public void setCollege(String college) {
		this.college = college;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getIdCard() {
		return idCard;
	}

	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "Teacher [tno=" + tno + ", tname=" + tname + ", college=" + college + ", sex=" + sex + ", nation="
				+ nation + ", age=" + age + ", idCard=" + idCard + ", photo=" + photo + ", phoneNumber=" + phoneNumber
				+ ", email=" + email + "]";
	}
}
