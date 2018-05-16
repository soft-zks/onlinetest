<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="static/bs/css/bootstrap.min.css" />
<script type="text/javascript" src="static/bs/js/jquery.min.js" ></script>
<script type="text/javascript" src="static/bs/js/bootstrap.min.js" ></script>
<title>Insert title here</title>
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
				<h1 class='page-header' style="display: inline; line-height: 90px;">学生--在线考试</h1>
				<a class="glyphicon glyphicon-log-out" style="display: inline; margin-left: 600px; cursor: pointer;" href="${pageContext.request.contextPath}/student.jsp">返回学生个人中心</a>
			</div>
			
			<div id="tab2" class="col-md-8" style="margin-left: 180px;">
				<table class='table table-striped table-bordered table-hover table-condensed '>
					<tr>
		     			<th>课程名称</th>
		     			<th>考试状态</th>
		     		</tr>
					
					<c:forEach items="${studentCourseList }" var="scList">
					<tr>
						<td>${scList.cname}</td>
						<td>
							<c:if test="${scList.teststatus == 0 }">
								<button onclick="doStart(${scList.cno},'${scList.cname }')" disabled="disabled" style="cursor:not-allowed;">暂未开考</button>
							</c:if>
							<c:if test="${scList.teststatus == 1 }">
								<button onclick="doStart(${scList.cno},'${scList.cname }')" >开始考试</button>
							</c:if>					
							<c:if test="${scList.teststatus == 2 }">
								<button onclick="doStart(${scList.cno},'${scList.cname }')" disabled="disabled" >已考过</button>
							</c:if>
						<!--  <button onclick="doStart(${scList.cno})" <c:if test="${scList.status == 0 }">disabled="disabled"</c:if>>开始考试</button>-->
						</td>
					</tr>
				</c:forEach>
				</table>
			</div>
		</div>
	
	<%--  <table>
		<c:forEach items="${studentCourseList }" var="scList">
			<tr>
				<td>${scList.cname}</td>
				<td>
					<c:if test="${scList.status == 0 }">
						<button onclick="doStart(${scList.cno})" disabled="disabled" >暂未开考</button>
					</c:if>
					<c:if test="${scList.status == 1 }">
						<button onclick="doStart(${scList.cno})" >开始考试</button>
					</c:if>					
					<c:if test="${scList.status == 2 }">
						<button onclick="doStart(${scList.cno})" disabled="disabled" >已考过</button>
					</c:if>
				<!--  <button onclick="doStart(${scList.cno})" <c:if test="${scList.status == 0 }">disabled="disabled"</c:if>>开始考试</button>-->
				</td>
			</tr>
		</c:forEach>
	</table>  --%>
	<script>
		function doStart(parNo,parName) {
			alert("开始考试");
			window.location.href = "${pageContext.request.contextPath}/studentTestQuestion?cno=" + parNo;
		}
	</script>
</body>
</html>