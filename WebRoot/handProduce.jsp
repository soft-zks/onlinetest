<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="static/bs/css/bootstrap.min.css" />
<script type="text/javascript" src="static/bs/js/jquery.min.js" ></script>
<title>教师--手动出卷</title>
</head>
<style>		
	body{
		background: url(static/img/002.jpg);
		min-height: 600px;
		height: 100%;
	}
	
	.btn-group{
		float: left;
		margin-left: 15px;
	}
	.radio{
		float: left;
		margin-left: 25px;
	}
	
	.musubmit{
		width: 100px;
		color: #fff;
   	    background-color: #5bc0de;
   		border-color: #46b8da;
		float:right;
		margin-top:10px;
	}
	.container{
		width: 98%;
		margin: 0 auto;
	}
	.row{
		width: 95%;
		margin: 0 auto;
	}
	.z_left{
		width:70%;
		margin-right:3%;
		float:left;
	}
	.z_right
		width:27%;
		float:right;
	}
	*{
		font-family: 微软雅黑;
	}
	
	.myrow{
		padding:15px 15px;
		display: none;
	}
</style>
<body>
	<div class="container">
	<form action="${pageContext.request.contextPath }/getCurrent" method="post">
		<div class="besttop" style="height: 90px;">
			<h1 class='page-header' style="display: inline; line-height: 90px;">教师——手动出卷</h1>
			<a class="glyphicon glyphicon-log-out" style="display: inline; margin-left: 600px; cursor: pointer;" href="${pageContext.request.contextPath }/teacher.jsp">返回教师个人中心</a>
		</div>
		
		<div class="tit">
			<div class="form-group">
				<label for="" class="col-sm-1 control-label tmtype" style="line-height: 34px;">选择课程</label>				    
			    <div class="col-md-2" style="margin-left: -20px;">
					<select name="cname" class="form-control col-md-3">
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
					<input type="radio" name="testType" id="optionsRadios1" value="0">选择题
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
			<input type="submit" value="查询" class="musubmit"/>	
		</div>
	</form>
	
	<div class="row">
		<!-- 左边开始 -->
		<div class="col-md-8 z_left">
			<table class='table table-striped table-bordered table-hover table-condensed'>
					<tr>
						<th>题号</th>
						<th>题干</th>
						<th>题目类型</th>
						<th>参考答案</th>
						<th>难度系数</th>
						<th>分值</th>
						<th>所属章节</th>
						<th>所属课程</th>
						<th>操作</th>
					</tr>
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
							<%-- <td><c:out value="${textbank.testType}" /></td> --%>
							<td><c:out value="${textbank.refanswer }" /></td>
							<td><c:out value="${textbank.degree }" /></td>
							<td><c:out value="${textbank.score }" /></td>
							<td><c:out value="${textbank.chapter }" /></td>
							<td><c:out value="${textbank.cname }" /></td>
							<td><a href="javascript:doCheck(${textbank.testno},${textbank.score });" >添加</a></td>  
						</tr>
					</c:forEach>
			</table>
		</div>
		<!-- 左边结束 -->
		
		<!-- 右边开始 -->
	<form action="${pageContext.request.contextPath }/handProduce" method="post" id="myform">
		<div class="col-md-3 z_right" >
			<ul class="nav nav-tabs">
				<li class='active'>
					<a href="javascript:">选择题</a>
				</li>	
				<li class=''>
					<a href="javascript:">填空题</a>
				</li>	
				<li class=''>
					<a href="javascript:">主观题</a>
				</li>	
			</ul>
	
			<div class="myrow">
				<table>
					<c:forEach items="${choiceTestList }" var="choice">
						<input type="text" style="display:none" value="${choice.id }" name="idParms"/>								
						<tr>
							<td>${choice.content }</td>
							<td><a href="${pageContext.request.contextPath }/deleteCurrent?deleteNo=${choice.id}">删除</a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
	
			<div class="myrow">
				<table>
					<c:forEach items="${blankTestList }" var="blank">
						<input type="hidden" value="${blank.id }" name="idParms"/>
						<tr>
							<td>${blank.content }</td>
							<td><a href="${pageContext.request.contextPath }/deleteCurrent?deleteNo=${blank.id}">删除</a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
	
			<div class="myrow">
				<table>
					<c:forEach items="${subjectiveTestList }" var="subject">
						<input type="text" style="display:none" value="${subject.id }" name="idParms"/>								
						<tr>
							<td>${subject.content }</td>
							<td><a href="${pageContext.request.contextPath }/deleteCurrent?deleteNo=${subject.id}">删除</a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
			总分数：<input type="text" id="sumScore" disabled="disabled" value="${sum }">
						
			<input type="button" id="mybutton" value="提交" onclick="doSubmit()">
		</div>
	</form>
		<!-- 右边结束 -->
	</div>
</div>
	<%-- <div class="container">
		<div class="rows">
			<div class="col-md-10">
				<form action="${pageContext.request.contextPath }/getCurrent" method="post">
					<select name="cname">
						<c:forEach items="${courses}" var="course" varStatus="vs">
							<option value="${course.cname}" id="${course.cno}"
								<c:if test="${course.cname == oldname}">selected</c:if> >
			            		 ${course.cname}
							</option>
						</c:forEach>
					</select> 
					
					<select name="chapter">
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
					
					<strong>题型：</strong> 
					<label> 
						<input type="radio" name="testType" id="optionsRadios1" value="0">选择题
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
					
					<input type="submit" value="查询"/>
				</form>

				<div>
					<table border="1">
						<tr>
							<th>题号</th>
							<th>题干</th>
							<th>题目类型</th>
							<th>参考答案</th>
							<th>难度系数</th>
							<th>分值</th>
							<th>所属章节</th>
							<th>所属课程</th>
							<th>操作</th>
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
								<td><a href="javascript:doCheck(${textbank.testno},${textbank.score });" >添加</a></td>  
							</tr>
						</c:forEach>
				</table>
				
				
				</div>


			</div>
			
			
			
			
			<div class="col-md-2">
				<form action="${pageContext.request.contextPath }/handProduce" method="post" id="myform">
					<p>选择题</p>
					<table>
						<c:forEach items="${choiceTestList }" var="choice">
							<input type="text" style="display:none" value="${choice.id }" name="idParms"/>								
							<tr>
								<td>${choice.content }</td>
								<td><a href="${pageContext.request.contextPath }/deleteCurrent?deleteNo=${choice.id}">删除</a></td>
							</tr>
						</c:forEach>
					</table>
					<p>填空题</p>
					<table>
						<c:forEach items="${blankTestList }" var="blank">
							<input type="hidden" value="${blank.id }" name="idParms"/>
							<tr>
								<td>${blank.content }</td>
								<td><a href="${pageContext.request.contextPath }/deleteCurrent?deleteNo=${blank.id}">删除</a></td>
							</tr>
						</c:forEach>
					</table>
					<p>主观题</p>
					<table>
						<c:forEach items="${subjectiveTestList }" var="subject">
							<input type="text" style="display:none" value="${subject.id }" name="idParms"/>								
							<tr>
								<td>${subject.content }</td>
								<td><a href="${pageContext.request.contextPath }/deleteCurrent?deleteNo=${subject.id}">删除</a></td>
							</tr>
						</c:forEach>
					</table>
					
					总分数：<input type="text" id="sumScore" disabled="disabled" value="${sum }">
					
					<input type="button" id="mybutton" value="提交" onclick="doSubmit()">
				</form>
			</div>
		</div>
	</div>
	
	--%>
	<script>
	$('li').click(function(){
		$(this).addClass('active');
		$('li').not($(this)).removeClass('active');

		idx=$(this).index('li');
		$('.myrow').eq(idx).show(100);
		$('.myrow').not($('.myrow').eq(idx)).hide(100);
	});

	$('.myrow').eq(0).show(100);
	
		function doCheck(parNum, parScore) {		

			var sumScore = parseInt($("#sumScore").attr("value"));
			if(sumScore >= 100 || (sumScore + parseInt(parScore)) > 100) {
				//alert(sumScore + parseInt(parScore));
				alert("超出100分");
				return;
			}
			
			window.location.href = '${pageContext.request.contextPath}/getCurrent?tno=' + parNum;			
		}
		
		
		function doSubmit() {
			
			var sumScore = parseInt($("#sumScore").attr("value"));
			if(sumScore < 100) {
				alert("不够100分请继续添加题目");
				return;
			}
			else {
				alert("提交成功！");
				$("#myform").submit();
			}
			
		}
		
	</script> 
</body>
</html>