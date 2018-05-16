package cn.hubu.online.vo;

import java.io.Serializable;
import java.util.List;

import cn.hubu.online.po.StudentExamination;

/**
 * 
 * <p>
 * Description 封装某个学生的学号和主观题
 * </p>
 *
 * @author ZhaoKunsong
 * @date 2017年12月2日
 */
public class StuTestVo implements Serializable {

	private String sno;
	private List<SubjectTestVo> subjectTestVoList;

	public String getSno() {
		return sno;
	}

	public void setSno(String sno) {
		this.sno = sno;
	}

	public List<SubjectTestVo> getSubjectTestVoList() {
		return subjectTestVoList;
	}

	public void setSubjectTestVoList(List<SubjectTestVo> subjectTestVoList) {
		this.subjectTestVoList = subjectTestVoList;
	}

}
