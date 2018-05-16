<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="static/bs/css/bootstrap.min.css" />
<script type="text/javascript" src="static/bs/js/jquery.min.js" ></script>
<title>Insert title here</title>
<style>
	body{
		background: url(static/img/002.jpg);
		min-height: 600px;
		height: 100%;
	}
	.page-header{
		font-family: "楷体";
	}
	.con{
		margin-left: 30px;
		/* background: #CCCCCC; */
		width: 300px;
		padding: 15px;
		border-radius: 15px;
	}
</style>
</head>
<body>
	<div class="container">
		<div class="besttop" style="height: 90px;">
			<h1 class='page-header' style="display: inline; line-height: 90px;">学生信息详情</h1>
			<a class="glyphicon glyphicon-log-out" style="display: inline; margin-left: 600px; cursor: pointer;" href="${pageContext.request.contextPath}/AdminStudentInfo">返回</a>
		</div>
		<div class="con">
			<div class="item">
				<label for="" class="control-label tmtype" style="line-height: 34px; font-size: 14px;">学号：</label>
				<i  style="font-style: normal;">${student.sno}</i>
			</div>
			<div class="item">
				<label for="" class="control-label tmtype" style="line-height: 34px; font-size: 14px;">姓名：</label>
				<i  style="font-style: normal;">${student.sname}</i>
			</div>
			<div class="item">
				<label for="" class="control-label tmtype" style="line-height: 34px; font-size: 14px;">学院：</label>
				<i  style="font-style: normal;">${student.college}</i>
			</div>	
			<div class="item">
				<label for="" class="control-label tmtype" style="line-height: 34px; font-size: 14px;">班级：</label>
				<i  style="font-style: normal;">${student.className}</i>
			</div>	
			<div class="item">
				<label for="" class="control-label tmtype" style="line-height: 34px; font-size: 14px;">性别：</label>
				<i  style="font-style: normal;">${student.sex}</i>
			</div>	
			<div class="item">
				<label for="" class="control-label tmtype" style="line-height: 34px; font-size: 14px;">家庭住址：</label>
				<i  style="font-style: normal;">${student.nation}</i>
			</div>	
			<div class="item">
				<label for="" class="control-label tmtype" style="line-height: 34px; font-size: 14px;">出生日期：</label>
				<i  style="font-style: normal;">${student.age}</i>
			</div>	
			<div class="item">
				<label for="" class="control-label tmtype" style="line-height: 34px; font-size: 14px;">身份证号：</label>
				<i  style="font-style: normal;">${student.idCard}</i>
			</div>	
			<div class="item">
				<label for="" class="control-label tmtype" style="line-height: 34px; font-size: 14px;">电话号码：</label>
				<i  style="font-style: normal;">${student.phoneNumber}</i>
			</div>	
			<div class="item">
				<label for="" class="control-label tmtype" style="line-height: 34px; font-size: 14px;">邮箱：</label>
				<i  style="font-style: normal;">${student.email}</i>
			</div>	
		</div>
	</div>
	<%-- <h1>学生信息详情</h1>
	<p><label>学号：</label>${student.sno}</p>
	<p><label>姓名：</label>${student.sname}</p>
	<p><label>学院：</label>${student.college}</p>
	<p><label>班级：</label>${student.className}</p>
	<p><label>性别：</label>${student.sex}</p>
	<p><label>家庭住址：</label>${student.nation}</p>
	<p><label>出生日期：</label>${student.age}</p>
	<p><label>身份证号：</label>${student.idCard}</p>
	<p><label>电话号码：</label>${student.phoneNumber}</p>
	<p><label>邮箱：</label>${student.email}</p> --%>
</body>
</html>