<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="static/bs/css/bootstrap.min.css" />
<script type="text/javascript" src="static/bs/js/jquery.min.js" ></script>
<title>Insert title here</title>
<style>
	th,td{
	       text-align:center;/** 设置水平方向居中 */
	       vertical-align:middle;/** 设置垂直方向居中 */
	   }
	body{
		background: url(static/img/002.jpg); 
		min-height: 600px;
		height: 100%;
	}
	.page-header{
		font-family: "楷体";
	}
	
	#tab3 table{
		margin-top:15px;
	}
	</style>
</head>
<body>
<div class="container">
	<div class="besttop" style="height: 90px;">
		<h1 class='page-header' style="display: inline; line-height: 90px;">管理员——教师管理</h1>
		<a class="glyphicon glyphicon-log-out" style="display: inline; margin-left: 600px; cursor: pointer;" href="${pageContext.request.contextPath}/admin.jsp">返回管理员个人中心</a>
	</div>
	
	<div id="tab3" class="col-md-8" style="margin-right: 50px;">
		<table class='table table-striped table-bordered table-hover table-condensed'>
			<tr>
				<th>学号</th>
				<th>姓名</th>
				<th>学院</th>
				<th>查看详情</th>
			</tr>
			<c:forEach items="${teachers}" var="teacher">
				<tr>
					<td>${teacher.tno}</td>
					<td>${teacher.tname}</td>
					<td>${teacher.college}</td>
					<td><a href="${pageContext.request.contextPath}/GetTeacherInfo?tno=${teacher.tno}">详情</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</div>
<%-- <h1>管理员--教师管理</h1>
<table border="1">
	<tr>
		<th>学号</th>
		<th>姓名</th>
		<th>学院</th>
		<th>查看详情</th>
	</tr>
	<c:forEach items="${teachers}" var="teacher">
		<tr>
			<td>${teacher.tno}</td>
			<td>${teacher.tname}</td>
			<td>${teacher.college}</td>
			<td><a href="${pageContext.request.contextPath}/GetTeacherInfo?tno=${teacher.tno}">详情</a></td>
		</tr>
	</c:forEach>
</table> --%>
</body>
</html>