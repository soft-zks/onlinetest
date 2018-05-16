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
<title>Insert title here</title>
</head>
<style>
	body{
		background: url(static/img/002.jpg);
		min-height: 532px;
		height: 100%;
	}
	.page-header{
		font-family: "楷体";
	}
</style>
<body>
	<div class="container">
			<div class="besttop" style="height: 90px;">
				<h1 class='page-header' style="display: inline; line-height: 90px;">管理员——个人中心</h1>
				<a class="glyphicon glyphicon-log-out" style="display: inline; margin-left: 600px; cursor: pointer;" href="${pageContext.request.contextPath}/LoginOutServlet">注销</a>
			</div>
			<div id="wrap-container" class="clearfix">
		        <div class="examples_body">
				    <ul class="bannerHolder">
			            <li>
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
			            </li>
			            <li>
				            <div class="banner">
				                <a href="${pageContext.request.contextPath}/RoleServlet?role=teacher&usercode=${login.usercode}"  style="text-decoration: none;">
				                    <h4 style="background: url(static/img/002.jpg); ">修改个人信息</h4>
					                <p class="companyInfo">修改个人信息</p>
					                <div class="cornerTL"></div>
					                <div class="cornerTR"></div>
					                <div class="cornerBL"></div>
					                <div class="cornerBR"></div>
				                </a>
				            </div>
			            </li>
			            <li>
				            <div class="banner">
				                <a href="${pageContext.request.contextPath}/getInfoAuto"  style="text-decoration: none;">
				                    <h4 style="background: url(static/img/002.jpg); ">成绩管理</h4>
					                <p class="companyInfo">成绩管理</p>
					                <div class="cornerTL"></div>
					                <div class="cornerTR"></div>
					                <div class="cornerBL"></div>
					                <div class="cornerBR"></div>
				                </a>
				            </div>
			            </li>
			            <li>
				            <div class="banner">
				                <a href="${pageContext.request.contextPath}/GetCoursInfo"  style="text-decoration: none;">
				                    <h4 style="background: url(static/img/002.jpg); ">课程管理</h4>
					                <p class="companyInfo">课程管理</p>
					                <div class="cornerTL"></div>
					                <div class="cornerTR"></div>
					                <div class="cornerBL"></div>
					                <div class="cornerBR"></div>
				                </a>
				            </div>
			            </li>
			            
			        </ul>
			        
			       <ul class="bannerHolder">
			       	<li>
			            <div class="banner">
			                <a href="${pageContext.request.contextPath}/AdminStudentInfo"  style="text-decoration: none;">
			                    <h4 style="background: url(static/img/002.jpg); ">学生管理</h4>
				                <p class="companyInfo">学生管理</p>
				                <div class="cornerTL"></div>
				                <div class="cornerTR"></div>
				                <div class="cornerBL"></div>
				                <div class="cornerBR"></div>
			                </a>
			            </div>
		            </li>
		            <li>
			            <div class="banner">
			                <a href="${pageContext.request.contextPath}/AdminTeacherInfo"  style="text-decoration: none;">
			                    <h4 style="background: url(static/img/002.jpg); ">教师管理</h4>
				                <p class="companyInfo">教师管理</p>
				                <div class="cornerTL"></div>
				                <div class="cornerTR"></div>
				                <div class="cornerBL"></div>
				                <div class="cornerBR"></div>
			                </a>
			            </div>
		            </li>
		             <li>
			            <div class="banner">
			                <a href="${pageContext.request.contextPath}/SetClock"  style="text-decoration: none;">
			                    <h4 style="background: url(static/img/002.jpg); ">系统开关</h4>
				                <p class="companyInfo">系统开关</p>
				                <div class="cornerTL"></div>
				                <div class="cornerTR"></div>
				                <div class="cornerBL"></div>
				                <div class="cornerBR"></div>
			                </a>
			            </div>
		            </li>
			       </ul>
		    	</div>
			</div>
		</div>
		
		
		
	<%-- <a href="${pageContext.request.contextPath}/alterPsw.jsp">修改密码</a>
	<form action="${pageContext.request.contextPath}/RoleServlet" method="post">
		<input type="hidden" name="role" value="admin"/>
		<input type="hidden" name="usercode" value="${login.usercode}">
		<input type="submit" value="修改个人信息">
	</form> --%>

	<!-- 根据学院、班级、课程查看学生成绩 -->
	<!-- 动态加载学院、班级、课程信息 -->
	<%-- <a href="${pageContext.request.contextPath}/getInfoAuto">成绩管理</a>
	<a href="${pageContext.request.contextPath}/LoginOutServlet">注销</a> --%>
</body>
<script>
	$(document).ready(function(){
		// 0.4代表遮罩的透明度
		$('.banner div').css('opacity',0.2);
		$('.banner').hover(function(){
			var el = $(this);
			// 先淡出阴影，后淡入文字
			el.find('div').stop().animate({width:200,height:200},'slow',function(){
				el.find('p').fadeIn('fast');
			});
		},function(){
			var el = $(this);
			// 隐藏文字
			el.find('p').stop(true,true).hide();
			// 去掉遮罩
			el.find('div').stop().animate({width:60,height:60},'fast');
		}).click(function(){
			// 点击图片时打开链接
			window.open($(this).find('a').attr('href'));
		});
	});
</script>
</html>