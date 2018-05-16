<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<h1>管理员查看学生成绩</h1>
 <select name="cname" id="cname" class="form-control col-md-3">
	<option value="">-- 请选择 --</option>
	<c:forEach items="${courses}" var="course" varStatus="vs">
	       	<option value="${course.cname}"  name="${course.cname}" id="${course.cno}" >
	       		 ${course.cname}
	        	</option>
	  </c:forEach>
</select>
</body>
</html>