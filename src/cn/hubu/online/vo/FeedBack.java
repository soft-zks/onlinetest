package cn.hubu.online.vo;

import java.io.Serializable;
import java.util.List;

public class FeedBack implements Serializable {

	private List<Object> list;

	public FeedBack() {

	}

	public FeedBack(List<Object> list) {
		this.list = list;
	}

	public List<Object> getList() {
		return list;
	}

	public void setList(List<Object> list) {
		this.list = list;
	}

}
