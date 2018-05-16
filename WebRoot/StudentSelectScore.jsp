<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>学生——查看自己成绩</title>
	<link rel="stylesheet" href="static/bs/css/bootstrap.min.css" />
	<script type="text/javascript" src="static/bs/js/jquery.min.js" ></script>		
	<script src="static/bs/js/bootstrap.js"></script>
</head>
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
	.courseTit{
		margin-left: 15px;
	}
</style>
<body>
	<div class="container">
		<div class="besttop" style="height: 90px;">
			<h1 class='page-header' style="display: inline; line-height: 90px;">学生——查看自己成绩</h1>
			<a href="${pageContext.request.contextPath}/student.jsp" class="glyphicon glyphicon-log-out" style="display: inline; margin-left: 600px; cursor: pointer;" >回到学生个人中心</a>
		</div>
		<div class="courseTit">
			<label for="" class="control-label tmtype" style="line-height: 34px; font-size: 15px;">学号：</label><i class="courseItem" style="font-style: normal;">${login.usercode}</i>
		</div>
		<div class="courseTit">
			<label for="" class="control-label tmtype" style="line-height: 34px; font-size: 15px;">学生姓名：</label><i class="courseItem" style="font-style: normal;">${login.username}</i>
		</div>
		
		<div id="tab3" class="col-md-8" style="margin-right: 50px;">
				<table class='table table-striped table-bordered table-hover table-condensed'>
					<tr>
						<th>课程名称</th>
						<th>平时成绩</th>
						<th>卷面成绩</th>
						<th>总成绩</th>
					</tr>
				
					<c:forEach items="${studentCourses}" var="course" varStatus="vs">
						<c:if test="${ course.status==1}">
							<tr>
								<td>${course.cname}</td>
								<td>${course.usualScore}</td>
								<td>${course.paperScore}</td>
								<td>${course.sumScore}</td>
							</tr>
						</c:if>
					</c:forEach>
				</table>
			</div>
	</div>
</body>
</html>