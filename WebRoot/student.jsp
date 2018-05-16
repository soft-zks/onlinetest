<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link rel="stylesheet" href="static/bs/css/bootstrap.min.css" />
	<link rel="stylesheet" href="static/css/lrtk.css" />
	<script type="text/javascript" src="static/bs/js/jquery.min.js" ></script>
	<script type="text/javascript" src="static/bs/js/bootstrap.min.js" ></script>
	<title>学生——个人中心</title>
	<style>
		body{
			background: url(static/img/002.jpg);
			min-height: 535px;
			height: 100%;
		}
		.page-header{
			font-family: "楷体";
		}
	</style>
	</head>
	<body>
		<div class="container">
			<div class="besttop" style="height: 90px;">
				<h1 class='page-header' style="display: inline; line-height: 90px;">学生——个人中心</h1>
				<a class="glyphicon glyphicon-log-out" style="display: inline; margin-left: 600px; cursor: pointer;" href="${pageContext.request.contextPath}/LoginOutServlet">注销</a>
			</div>
			<div id="wrap-container" class="clearfix">
		        <div class="examples_body">
			        <ul class="bannerHolder3">
			            <div class="banner">
			                <a  href="${pageContext.request.contextPath}/getSelectedCourse" style="text-decoration: none;">
			                    <h4 style="background: url(static/img/002.jpg); ">在线考试</h4>
				                <p class="companyInfo">在线考试</p>
				                <div class="cornerTL"></div>
				                <div class="cornerTR"></div>
				                <div class="cornerBL"></div>
				                <div class="cornerBR"></div>
			                </a>
			            </div>
			            <div class="banner">
			                <a href="${pageContext.request.contextPath}/studentSelectScore" style="text-decoration: none;">
			                    <h4 style="background: url(static/img/002.jpg); ">查看个人成绩</h4>
				                <p class="companyInfo">查看个人成绩</p>
				                <div class="cornerTL"></div>
				                <div class="cornerTR"></div>
				                <div class="cornerBL"></div>
				                <div class="cornerBR"></div>
			                </a>
			            </div>
			        </ul>
			        
			        <ul class="bannerHolder3">
			            <div class="banner">
			                <a href="${pageContext.request.contextPath}/alterPsw.jsp" style="text-decoration: none;">
			                    <h4 style="background: url(static/img/002.jpg); ">修改密码</h4>
				                <p class="companyInfo">修改密码</p>
				                <div class="cornerTL"></div>
				                <div class="cornerTR"></div>
				                <div class="cornerBL"></div>
				                <div class="cornerBR"></div>
			                </a>
			            </div>
			            <div class="banner">
			                <a href="${pageContext.request.contextPath}/RoleServlet?role=student&usercode=${login.usercode}" style="text-decoration: none;">
			                    <h4 style="background: url(static/img/002.jpg); ">修改个人信息</h4>
				                <p class="companyInfo">修改个人信息</p>
				                <div class="cornerTL"></div>
				                <div class="cornerTR"></div>
				                <div class="cornerBL"></div>
				                <div class="cornerBR"></div>
			                </a>
			            </div>
			        </ul>
			        
		    	</div>
			</div>
		</div>
	<%-- <a href="${pageContext.request.contextPath}/alterPsw.jsp">修改密码</a>
	
	<form action="${pageContext.request.contextPath}/RoleServlet" method="post">
		<input type="hidden" name="role" value="student"/>
		<input type="hidden" name="usercode" value="${login.usercode}">
		<input type="submit" value="修改个人信息">
	</form>
	<a href="${pageContext.request.contextPath}/RoleServlet?role=student&usercode=${login.usercode}">修改个人信息</a>
	
	<form action="${pageContext.request.contextPath}/studentSelectScore" method="post">
		<input type="hidden" name="usercode" value="${login.usercode}">
		<input type="hidden" name="username" value="${login.username}">
		<input type="submit" value="学生查看个人成绩">
	</form>
	
	<a href="${pageContext.request.contextPath}/getSelectedCourse">在线考试</a>
	
	<a href="${pageContext.request.contextPath}/LoginOutServlet">注销</a> --%>
	
</body>
</html>