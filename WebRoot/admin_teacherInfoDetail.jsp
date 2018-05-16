<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="static/bs/css/bootstrap.min.css" />
<script type="text/javascript" src="static/bs/js/jquery.min.js" ></script>
<title>Insert title here</title>
</head>
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
<body>
	<div class="container">
		<div class="besttop" style="height: 90px;">
			<h1 class='page-header' style="display: inline; line-height: 90px;">教师信息详情</h1>
			<a class="glyphicon glyphicon-log-out" style="display: inline; margin-left: 600px; cursor: pointer;" href="${pageContext.request.contextPath}/AdminTeacherInfo">返回</a>
		</div>
		<div class="con">
			<div class="item">
				<label for="" class="control-label tmtype" style="line-height: 34px; font-size: 14px;">工号：</label>
				<i  style="font-style: normal;">${teacher.tno}</i>
			</div>
			<div class="item">
				<label for="" class="control-label tmtype" style="line-height: 34px; font-size: 14px;">姓名：</label>
				<i  style="font-style: normal;">${teacher.tname}</i>
			</div>
			<div class="item">
				<label for="" class="control-label tmtype" style="line-height: 34px; font-size: 14px;">学院：</label>
				<i  style="font-style: normal;">${teacher.college}</i>
			</div>	
			<div class="item">
				<label for="" class="control-label tmtype" style="line-height: 34px; font-size: 14px;">性别：</label>
				<i  style="font-style: normal;">${teacher.sex}</i>
			</div>	
			<div class="item">
				<label for="" class="control-label tmtype" style="line-height: 34px; font-size: 14px;">家庭住址：</label>
				<i  style="font-style: normal;">${teacher.nation}</i>
			</div>	
			<div class="item">
				<label for="" class="control-label tmtype" style="line-height: 34px; font-size: 14px;">出生日期：</label>
				<i  style="font-style: normal;">${teacher.age}</i>
			</div>	
			<div class="item">
				<label for="" class="control-label tmtype" style="line-height: 34px; font-size: 14px;">身份证号：</label>
				<i  style="font-style: normal;">${teacher.idCard}</i>
			</div>	
			<div class="item">
				<label for="" class="control-label tmtype" style="line-height: 34px; font-size: 14px;">电话号码：</label>
				<i  style="font-style: normal;">${teacher.phoneNumber}</i>
			</div>	
			<div class="item">
				<label for="" class="control-label tmtype" style="line-height: 34px; font-size: 14px;">邮箱：</label>
				<i  style="font-style: normal;">${teacher.email}</i>
			</div>	
		</div>
	</div>
	<%-- <h1>教师信息详情</h1>
	<p><label>工号：</label>${teacher.tno}</p>
	<p><label>姓名：</label>${teacher.tname}</p>
	<p><label>学院：</label>${teacher.college}</p>
	<p><label>性别：</label>${teacher.sex}</p>
	<p><label>家庭住址：</label>${teacher.nation}</p>
	<p><label>出生日期：</label>${teacher.age}</p>
	<p><label>身份证号：</label>${teacher.idCard}</p>
	<p><label>电话号码：</label>${teacher.phoneNumber}</p>
	<p><label>邮箱：</label>${teacher.email}</p> --%>
</body>
</html>