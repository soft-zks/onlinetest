<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="static/bs/css/bootstrap.min.css" />
<script type="text/javascript" src="static/bs/js/jquery.min.js" ></script>
<script type="text/javascript" src="static/bs/js/bootstrap.min.js" ></script>	
<title>教师——题库管理</title>
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
	.btn-group{
		float: left;
		margin-left: 15px;
	}
	.radio{
		float: left;
		margin-left: 25px;
	}
	.radio label{
		margin-right: 10px;
	}
	.tit button{
		margin-left: 25px;
		width: 100px;
		margin-left: 435px;
	}
	#tab table{
		margin-top: 76px;
	}
</style>
<script>
/*$(document).ready(function() {
		 $.ajax({
				type:'post',
				url:'${pageContext.request.contextPath}/getCname',
				//dataType:'json',
				success:function(data){
					var objs = eval(data);
					var list ="";
					$.each(objs, function(i,result)  {
						list += "<option>" + result + "</option>";
					})
					$("#cname").append(list);
				}
			});
	 });*/
	 //var options=$("#cname option:selected");//获取当前选择项.
	//alert(options.val());//获取当前选择项的值.
</script>
	<body>
	<%-- <a href="${pageContext.request.contextPath}/teacher.jsp">回到教师个人中心</a> --%>
	<form action="${pageContext.request.contextPath}/teacherTestBandServlet" method="post">
	<div class="container">
			<div class="besttop" style="height: 90px;">
				<h1 class='page-header' style="display: inline; line-height: 90px;">教师——题库管理</h1>
				<a class="glyphicon glyphicon-log-out" style="display: inline; margin-left: 600px; cursor: pointer;" href="${pageContext.request.contextPath}/teacher.jsp">返回个人中心</a>
			</div>
			
			<!--上面选择栏-->
			<div class="tit">
				<div class="form-group">
				    <label for="" class="col-sm-1 control-label tmtype" style="line-height: 34px;">选择课程</label>				    
				    <div class="col-md-2" style="margin-left: -20px;">
					  <select name="cname" id="cname" class="form-control col-md-3">
						<option value="">-- 请选择 --</option>
						<c:forEach items="${courses}" var="course" varStatus="vs">
			            	<option value="${course.cname}" id="${course.cno}"
			            		  <c:if test="${course.cname == oldname}">selected</c:if> >
			            		 ${course.cname}
			            	</option>
			            </c:forEach>
					</select> 
					</div>
					
				    <label for="" class="col-sm-1 control-label tmtype" style="line-height: 34px;">所属章节</label>				    
				    <div class="col-md-2" style="margin-left: -20px;">
						<select name="chapter" class="form-control col-md-3">
							<option value="">-- 请选择 --</option>
							<option value="1">第一章</option>
							<option value="2">第二章</option>
							<option value="3">第三章</option>
							<option value="4">第四章</option>
							<option value="5">第五章</option>
							<option value="6">第六章</option>
							<option value="7">第七章</option>
							<option value="8">第八章</option>
							<option value="9">第九章</option>
							<option value="10">第十章</option>
						</select> 
					</div>
				</div>

				<div class="radio">
				  <strong>题型：</strong>
				  <label>
				    <input type="radio" name="testType" id="optionsRadios1" value="0" >选择题
				  </label>
				  <label>
				    <input type="radio" name="testType" id="optionsRadios2" value="1">填空题
				  </label>
				  <label>
				    <input type="radio" name="testType" id="optionsRadios3" value="2">主观题
				  </label>
				  <label>
				    <input type="radio" name="testType" id="optionsRadios4" value="" checked>全部题型
				  </label>
				</div>
				<input type="submit" value="查询" class="btn btn-info" style="position: absolute; right: 115px;">
				</div>
		</form>
			
			<!--选择栏结束-->
		<form action="" method="post">	
			<div id="tab">
				<table class='table table-striped table-bordered table-hover table-condensed'>
					<thread>
						<colgroup>
							 <col width='4%'></col>
							 <col width='25%'></col>
							 <col width='6%'></col>
							 <col width='23%'></col>
							 <col width='4%'></col>
							 <col width='4%'></col>
							 <col width='4%'></col>
							 <col width='7%'></col>
							 <col width='4%'></col>
						</colgroup>
						<tr>
							<th>题号</th>
							<th>题干</th>
							<th>题目类型</th>
							<th>参考答案</th>
							<th>难度系数</th>
							<th>分值</th>
							<th>所属章节</th>
							<th>所属课程</th>
							<th>删除</th>
						</tr>
					</thread>
					<c:forEach items="${requestScope.list}" var="textbank">
						<tr>
							<td><c:out value="${textbank.testno}" /></td>
							<td><c:out value="${textbank.content}" /></td>
							 <td>
								<c:if test="${textbank.testType==0}">
									<c:out value="选择题" />
								</c:if>
								<c:if test="${textbank.testType==1}">
									<c:out value="填空题" />
								</c:if>
								<c:if test="${textbank.testType==2}">
									<c:out value="主观题" />
								</c:if>
								<%--  <c:out value="${textbank.testType}" /> --%>
							</td> 
							<td><c:out value="${textbank.refanswer }" /></td>
							<td><c:out value="${textbank.degree }" /></td>
							<td><c:out value="${textbank.score }" /></td>
							<td><c:out value="${textbank.chapter }" /></td>
							<td><c:out value="${textbank.cname }" /></td>
							<td><a href="${pageContext.request.contextPath}/delTestBankByTestno?testno=${textbank.testno }">删除</a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</form>
	<%-- <form action="${pageContext.request.contextPath}/teacherTestBandServlet" method="post">
		<label>课程名称:</label> 
		  <select name="cname" id="cname">
			<!-- <option value="数据库">数据库</option>	 -->
			<c:forEach items="${courses}" var="course" varStatus="vs">
            	<option value="${course.cname}" id="${course.cno}"
            		  <c:if test="${course.cname == oldname}">selected</c:if> >
            		 ${course.cname}
            	</option>
            </c:forEach>
		</select> 
		<label>题型:</label> 
		<input type="radio" name="testType" value="选择题" />选择题
		<input type="radio" name="testType" value="填空题"/>填空题
		<input type="radio" name="testType" value="主观题"/>主观题
		<input type="radio" name="testType" value="" />无
		<label>所属章节:</label> 
		<select name="chapter">
			<option value="">-- 请选择 --</option>
			<option value="第一章">第一章</option>
			<option value="第二章">第二章</option>
			<option value="第三章">第三章</option>
			<option value="第四章">第四章</option>
			<option value="第五章">第五章</option>
			<option value="第六章">第六章</option>
			<option value="第七章">第七章</option>
			<option value="第八章">第八章</option>
			<option value="第九章">第九章</option>
			<option value="第十章">第十章</option>
		</select> 
		<input type="submit" value="查询">
	</form>

	<form action="" method="post">
		<table border="1" width="100%">
			<tr>
				<th>题号</th>
				<th>题干</th>
				<th>题目类型</th>
				<th>参考答案</th>
				<th>难度系数</th>
				<th>分值</th>
				<th>所属章节</th>
				<th>所属课程</th>
				<th>删除</th>
			</tr>
			<c:forEach items="${requestScope.list}" var="textbank">
				<tr>
					<td><c:out value="${textbank.testno}" /></td>
					<td><c:out value="${textbank.content}" /></td>
					<td><c:out value="${textbank.testType}" /></td>
					<td><c:out value="${textbank.refanswer }" /></td>
					<td><c:out value="${textbank.degree }" /></td>
					<td><c:out value="${textbank.score }" /></td>
					<td><c:out value="${textbank.chapter }" /></td>
					<td><c:out value="${textbank.cname }" /></td>
					<td><a href="${pageContext.request.contextPath}/delTestBankByTestno?testno=${textbank.testno }">删除</a></td>
				</tr>
			</c:forEach>
		</table>
	</form> --%>
</body>
</html>