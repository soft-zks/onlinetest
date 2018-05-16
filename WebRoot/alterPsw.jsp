<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="static/bs/css/bootstrap.min.css" />
	<link rel="stylesheet" href="static/css/bootstrapValidator.css" />
	<script type="text/javascript" src="static/bs/js/jquery.min.js" ></script>
	<script type="text/javascript" src="static/bs/js/bootstrap.min.js" ></script>
	<script src="static/js/bootstrapValidator.js"></script>
	<script src="static/js/alterPsw.js"></script>
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
	</style>
	<body>
		<div class="container">
			<div class="besttop" style="height: 90px;">
				<h1 class='page-header' style="display: inline; line-height: 90px;">修改密码</h1>
			
				<%-- ${login.role} --%>
				<c:if test="${login.role eq '1'}">
					<a href="${pageContext.request.contextPath}/admin.jsp" class="glyphicon glyphicon-log-out" style="display: inline; margin-left: 600px; cursor: pointer;">回到管理员个人中心</a>
				</c:if>  
				<c:if test="${login.role  eq '2'}">
					<a href="${pageContext.request.contextPath}/teacher.jsp" class="glyphicon glyphicon-log-out" style="display: inline; margin-left: 600px; cursor: pointer;">回到教师个人中心</a>
				</c:if>
				<c:if test="${login.role eq '0'}">
					<a href="${pageContext.request.contextPath}/student.jsp" class="glyphicon glyphicon-log-out" style="display: inline; margin-left: 600px; cursor: pointer;">回到学生个人中心</a>
				</c:if>
			</div>
			 	<p style="color: red; font-family: '华文行楷'; font-size: 25px;">${msg}</p>
			  	<form action="${pageContext.request.contextPath}/alterPswServlet" id="defaultForm" method="post" class="form-horizontal">
		             <div class="form-group">
		                 <label class="col-lg-3 control-label">账号</label>
		                 <div class="col-lg-5">
		                     <input type="text" class="form-control" name="usercode" value="${login.usercode}"  disabled="disabled"/>
		                 </div>
		             </div>
		             <div class="form-group">
		                 <label class="col-lg-3 control-label">原密码</label>
		                 <div class="col-lg-5">
		                     <input type="password" class="form-control" name="password" />
		                 </div>
		             </div>
		             <div class="form-group">
		                 <label class="col-lg-3 control-label">新密码</label>
		                 <div class="col-lg-5">
		                     <input type="password" class="form-control" name="newpassword" />
		                 </div>
		             </div>
		             <div class="form-group">
		                 <label class="col-lg-3 control-label">确认密码</label>
		                 <div class="col-lg-5">
		                     <input type="password" class="form-control" name="confirmPassword" />
		                 </div>
		             </div>
		             <div class="form-group">
		                 <div class="col-lg-9 col-lg-offset-3">
		                     <button type="submit" class="btn btn-primary" name="signup" value="Sign up" style="width:120px;margin-left:130px; font-size:17px;">修 改</button>                              
		                 </div>
		             </div>
		       </form>	
		 </div> 
	</body>
</html>