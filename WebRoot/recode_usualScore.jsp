<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="static/bs/css/bootstrap.min.css" />
<script type="text/javascript" src="static/bs/js/jquery.min.js" ></script>
		<script type="text/javascript" src="static/bs/js/bootstrap.min.js" ></script>
<title>教师——录入学生平时成绩</title>
</head>
<style>
	th,td{
        text-align:center;/** 设置水平方向居中 */
        vertical-align:middle/** 设置垂直方向居中 */
    }
	body{
		background: url(static/img/002.jpg);
		min-height: 600px;
		height: 100%;
	}
	.page-header{
		font-family: "楷体";
	}
	#tab2 table{
		margin-top: 15px;
	}
</style>
<body>
	<div class="container">
			<div class="besttop" style="height: 90px;">
				<h1 class='page-header' style="display: inline; line-height: 90px;">教师——录入学生平时成绩</h1>
				<a class="glyphicon glyphicon-log-out" style="display: inline; margin-left: 600px; cursor: pointer;" href="${pageContext.request.contextPath}/teacher.jsp">返回个人中心</a>
			</div>
			
			<div id="tab2" class="col-md-8" style="margin-left: 180px;">
				<table class='table table-striped table-bordered table-hover table-condensed '>
					<tr>
		     			<th>课程名称</th>
		     			<th>操作</th>
		     		</tr>
					
					<c:forEach items="${teacherCourses}" var="course" varStatus="vs">
		     			<tr>
		     				<td>${course.cname}</td>
		     				<td>
		     					<%-- <a href="${pageContext.request.contextPath}/recodeUsualScore?cno=${course.cno}&cname=${course.cname}">查看</a> --%>
		     					 <form action="${pageContext.request.contextPath}/recodeUsualScore" method="post">
		     						<input type="hidden" value="${course.cno}" name="cno"/>
		     						<input type="hidden" value="${course.cname}" name="cname"/>
		     						<input type="submit" value="录入学生平时成绩" class="btn btn-default"/>
		     					</form>
		     					
		     				</td>
		     			</tr>
		     		</c:forEach>
				</table>
			</div>
		</div>
	<%-- <h1>教师--录入学生平时成绩</h1>
     	<table border="1">
     		<tr>
     			<th>课程名称</th>
     			<th>操作</th>
     		</tr>
     		<c:forEach items="${teacherCourses}" var="course" varStatus="vs">
     			<tr>
     				<td>${course.cname}</td>
     				<td>
     					<a href="${pageContext.request.contextPath}/recodeUsualScore?cno=${course.cno}&cname=${course.cname}">查看</a>
     					 <form action="${pageContext.request.contextPath}/recodeUsualScore" method="post">
     						<input type="hidden" value="${course.cno}" name="cno"/>
     						<input type="hidden" value="${course.cname}" name="cname"/>
     						<input type="submit" value="录入学生平时成绩"/>
     					</form>
     					
     				</td>
     			</tr>
     		</c:forEach>
     	</table> --%>
</body>
</html>