package cn.hubu.online.listener;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import com.sun.javafx.collections.MappingChange.Map;

import cn.hubu.online.po.StudentExamination;
import cn.hubu.online.vo.StuTestVo;

/**
 * 
 * <p>
 * Description 获取学生信息
 * </p>
 *
 * @author ZhaoKunsong
 * @date 2017年12月2日
 */
public class TeacherSessionListener implements HttpSessionListener {

	@Override
	public void sessionCreated(HttpSessionEvent httpSessionEvent) {

		List<StuTestVo> stuTestVoList = new ArrayList<>();
		// httpSessionEvent.getSession().setAttribute("stuTestVoList",
		// stuTestVoList);

	}

	@Override
	public void sessionDestroyed(HttpSessionEvent httpSessionEvent) {

	}

}
