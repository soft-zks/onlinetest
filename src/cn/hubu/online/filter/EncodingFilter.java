package cn.hubu.online.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import java.io.IOException;
import java.util.Map;

/**
 * @Since: JDK 1.8
 * @Author: ZhaoKunsong
 * @Description: 全站乱码过滤器
 * @Date: 2017/9/10 22:13
 **/
public class EncodingFilter implements Filter {

	private FilterConfig filterConfig = null;
	private ServletContext servletContext = null;
	private String encode = null;

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {

		this.filterConfig = filterConfig;
		servletContext = filterConfig.getServletContext();
		encode = servletContext.getInitParameter("encode");

	}

	@Override
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)
			throws IOException, ServletException {

		// 响应乱码
		servletResponse.setCharacterEncoding(encode);
		servletResponse.setContentType("text/html;charset=" + encode);
		// 请求乱码
		filterChain.doFilter(new MyHttpServletRequest((HttpServletRequest) servletRequest), servletResponse);
	}

	@Override
	public void destroy() {

	}

	private class MyHttpServletRequest extends HttpServletRequestWrapper {

		private HttpServletRequest request = null;
		private boolean isNotEncode = true;

		public MyHttpServletRequest(HttpServletRequest request) {
			super(request);
			this.request = request;
		}

		public Map<String, String[]> getParameterMap() {

			try {
				if (request.getMethod().equalsIgnoreCase("POST")) {
					// 如果是post提交
					request.setCharacterEncoding(encode);
					return request.getParameterMap();

				} else if (request.getMethod().equalsIgnoreCase("GET")) {
					// 如果是GET提交
					Map<String, String[]> map = request.getParameterMap();
					if (isNotEncode) {
						for (Map.Entry<String, String[]> entry : map.entrySet()) {
							String[] vs = entry.getValue();
							for (int i = 0; i < vs.length; i++) {
								vs[i] = new String(vs[i].getBytes("ISO8859-1"), encode);
							}
						}
						isNotEncode = false; // 防止重复编码,第二次请求会在缓存里面读取
					}
					return map;
				} else {
					return request.getParameterMap();
				}
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException();
			}

		}

		public String[] getParameterValues(String name) {

			return this.getParameterMap().get(name);

		}

		public String getParameter(String name) {

			return this.getParameterValues(name) == null ? null : this.getParameterValues(name)[0];

		}
	}
}
