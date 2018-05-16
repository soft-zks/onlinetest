<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>Insert title here</title>
		<link  rel="stylesheet" href="static/layui/css/layui.css"/>
		<link rel="stylesheet" href="static/bs/css/bootstrap.min.css" />
		<script type="text/javascript" src="static/bs/js/jquery.min.js" ></script>
		<script type="text/javascript" src="static/bs/js/bootstrap.min.js" ></script>
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
			<h1 class='page-header' style="display: inline; line-height: 90px;">管理员——成绩管理</h1>
			<a href="${pageContext.request.contextPath}/admin.jsp" class="glyphicon glyphicon-log-out" style="display: inline; margin-left: 600px; cursor: pointer;" >回到管理员个人中心</a>
		</div>
		<form action="${pageContext.request.contextPath}/AdminSeeScoreByCondServlet" method="post">
			<div class="form-group">
				<label for="" class='col-md-1 control-label' style="font-size:18px;text-align:right;margin-top:4px;margin-left:12px">学院：</label>	
				<div class="col-md-2">
				<select name="college" class="form-control">
				<option value="">-- 请选择 --</option>
					<c:forEach items="${collegeName}" var="college" varStatus="vs">
			           	<option value="${college}">
			           		 ${college}
			           	</option>
			           </c:forEach>
				</select> 
			    </div>
  			</div>
  			<div class="form-group">
				<label for="" class='col-md-1 control-label' style="font-size:18px;text-align:right;margin-top:4px;">班级：</label>	
				<div class="col-md-2">
				<select name="className" class="form-control">
					<option value="">-- 请选择 --</option>
					<c:forEach items="${className}" var="classname" varStatus="vs">
			           	<option value="${classname}">
			           		 ${classname}
			           	</option>
			           </c:forEach>
				</select> 
    			</div>
  			</div>
			<div class="form-group">
				<label for="" class='col-md-1 control-label' style="font-size:18px;text-align:right;margin-top:4px;margin-left:33px">课程:</label>
				<div class="col-md-2">
				<select name="cname"  class="form-control">
					<option value="">-- 请选择 --</option>
					<!-- <option value="数据库">数据库</option>	 -->
					<c:forEach items="${courses}" var="course" varStatus="vs">
			           	<option value="${course.cname}" id="${course.cno}">
			           		 ${course.cname}
			           	</option>
			           </c:forEach>
				</select> 
    			</div>
  			</div>
  			<div class="col-md-1 ">
				<input type="submit" class='btn btn-primary	'value="查询" style="width: 140px;margin-left:57px;"/>
			</div>
		</form>
  		
  		<hr style="visibility: hidden;"/>	<hr/>	
  		
	  	<form action="${pageContext.request.contextPath}/updateScore" method="post">
	  		<!-- <div class="container"> -->
	  			<div class="layui-form">
					  <table class="layui-table">
					    <colgroup>
					      <col width=15%>
					      <col width=20%>
					      <col width=15%>
					      <col width=10%>
					      <col width=10%>
					      <col width=10%>
					      <col>
					    </colgroup>
					    <thead>
					      <tr>
					       <!-- <th>id</th> -->
					       <th>学号</th>
				   			<th>学生姓名</th>
				   			<th>课程名称</th>
				   			<th>平时成绩</th>
				   			<th>卷面成绩</th>
				   			<th>总成绩</th>
				   			<th>操作</th>
					      </tr> 
					    </thead>
					    <tbody>
					     <c:forEach items="${stuCourlist}" var="stuScore" varStatus="vs">
				   			 <c:if test="${stuScore.status==1}"> 
					   			<tr>
					   				<%-- <td>${stuScore.id}</td> --%>
					   				<td>${stuScore.sno}</td>
					   				<td>${stuScore.sname}</td>
					   				<td>${stuScore.cname}</td>
					   				<td>${stuScore.usualScore}</td>
					   				<td>${stuScore.paperScore}</td>
					   				<td>${stuScore.sumScore}</td>
					   				<td>
					   					<%-- <a href="${pageContext.request.contextPath}/updateScore?sno=${stuScore.sno}&cname=${stuScore.cname}">修改</a> --%>
					   					<form action="${pageContext.request.contextPath}/updateScore" method="post">
					   						<input type="hidden" name="id" value="${stuScore.id}">
					   						<input type="hidden" name="sno" value="${stuScore.sno}">
					   						<input type="hidden" name="sname" value="${stuScore.sname}">
					   						<input type="hidden" name="cname" value="${stuScore.cname}">
					   						<input type="hidden" name="usualScore" value="${stuScore.usualScore}">
					   						<input type="hidden" name="paperScore" value="${stuScore.paperScore}">
					   						<input type="hidden" name="sumScore" value="${stuScore.sumScore}">
					   						<input type="submit" value="修改" class='btn btn-primary'>
					   					</form>
					   				</td>
					   			</tr>
					   		 </c:if>
				   		</c:forEach>
					    </tbody>
					  </table>
				</div>
	  <!-- 		</div> -->
	  	</form>
  	</div>
		<!-- <br> -->
		<!-- <div class="col-md-11" style="margin-left:4.16%">
			<button type="button" class="btn btn-primary btn-block">添加成绩信息</button>
		</div> -->
	
	
	<%-- <h1>管理员查看学生成绩</h1>
	<label>开课学院：</label>
	<form action="${pageContext.request.contextPath}/AdminSeeScoreByCondServlet" method="post">
		<select name="college">
			<c:forEach items="${collegeName}" var="college" varStatus="vs">
	           	<option value="${college}">
	           		 ${college}
	           	</option>
	           </c:forEach>
		</select> 
		<label>开课班级：</label>
			<select name="className">
			<c:forEach items="${className}" var="classname" varStatus="vs">
	           	<option value="${classname}">
	           		 ${classname}
	           	</option>
	           </c:forEach>
		</select> 
		<label>课程名称：</label>
		<select name="cname">
			<!-- <option value="数据库">数据库</option>	 -->
			<c:forEach items="${courses}" var="course" varStatus="vs">
	           	<option value="${course.cname}" id="${course.cno}">
	           		 ${course.cname}
	           	</option>
	           </c:forEach>
		</select> 
		<input type="submit" value="查找"/>
	</form>
	
	<table border="1">
   		<tr>
   			<!-- <td>编号</td> -->
   			<th>学号</th>
   			<th>学生姓名</th>
   			<th>平时成绩</th>
   			<th>卷面成绩</th>
   			<th>总成绩</th>
   			<!-- <th>操作</th> -->
   		</tr>
   		 <c:forEach items="${stuCourlist}" var="stuScore" varStatus="vs">
   			<tr>
   				<td>${stuScore.sno}</td>
   				<td>${stuScore.sname}</td>
   				<td>${stuScore.usualScore}</td>
   				<td>${stuScore.paperScore}</td>
   				<td>${stuScore.sumScore}</td>
   				<td><a href="${pageContext.request.contextPath}/">修改</a></td>
   			</tr>
   		</c:forEach>
   	</table> --%>
</body>
</html>