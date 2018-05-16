<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
</style>
<body>
<div class="container">
	<div class="besttop" style="height: 90px;">
		<h1 class='page-header' style="display: inline; line-height: 90px;">管理员——添加课程</h1>
		<a class="glyphicon glyphicon-log-out" style="display: inline; margin-left: 600px; cursor: pointer;" href="${pageContext.request.contextPath}/admin.jsp">返回管理员个人中心</a>
	</div>
	<div class="con">
			<form class="form-horizontal" action="${pageContext.request.contextPath}/AdminAddCourse" method="post">
			<input type="hidden" name="cno">
			<div class="form-group">
	            <label class="col-lg-3 control-label">课程名称：</label>
	            <div class="col-lg-5">
	                <input type="text" class="form-control"  name="cname"/>
	            </div>
	        </div>
	        <div class="form-group">
			    <label for="" class="col-lg-3 control-label tmtype" style="line-height: 34px;">开课学院：</label>				    
			    <div class="col-lg-2">
					<select name="college" class="form-control col-md-3">
						<c:forEach items="${collegeName}" var="colname" varStatus="vs">
				          	<option value="${colname}">
				          		 ${colname}
				          	</option>
				          </c:forEach>
					</select>
				</div>
			</div>
			<div class="form-group">
	             <div class="col-lg-9 col-lg-offset-5">
	                 <button type="submit" class="btn btn-primary" >添加</button>
	             </div>
	        </div>
	    </form>
	</div>
</div>
<%-- <h1>管理员--添加课程</h1>
<form action="${pageContext.request.contextPath}/AdminAddCourse" method="post">
	<input type="hidden" name="cno">
	<label>课程名称：</label>
	<input type="text" name="cname">
	<label>开课学院：</label>
	<select name="college">
		<c:forEach items="${collegeName}" var="colname" varStatus="vs">
          	<option value="${colname}">
          		 ${colname}
          	</option>
          </c:forEach>
	</select>
	<input type="submit" value="添加">
</form> --%>
</body>
</html>