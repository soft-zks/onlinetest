<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
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
	body{
		background: url(static/img/002.jpg);
		min-height: 600px;
		height: 100%;
	}
	.page-header{
		font-family: "楷体";
	}
	.context{
		width: 1080px;
		margin-top: 15px;
	}
	.mix{
		width: 1145px;
	}
	.item{
		height: 40px;
		background: #C0C0C0;
		margin-left: 15px; 
		line-height: 40px;
		padding-left: 10px;
		border-radius: 13px;
	}
	.questions{
		width: 850px;
		word-wrap: break-word;
		margin-left: 15px;
		float: left;
		padding-top: 10px;
	}
	.answer{
		min-height: 40px;
		width: 900px;
	}
	.refAnswer{
		background: #CCCCCC;
		min-height: 40px;
		width: 400px;
		float: left;
		word-wrap: break-word;
		padding: 10px;
		margin-left: 100px;
	}
	.StuAnswer{
		background: #CCCCCC;
		float: right;
		word-wrap: break-word;
		width: 400px;
		padding: 10px;
	}
	.giveScore{
		float: right;
		width: 220px;
	}
	.oneItem{
		width: 1100px;
		margin-top: 15px;
	}
	.musubmit{
		width: 100px;
		color: #fff;
   	    background-color: #5bc0de;
   		border-color: #46b8da;
		margin-left:47%;
		margin-top:20px;
		margin-bottom:40px;
	}
</style>
<body>
<form action="${pageContext.request.contextPath }/nextSubject" method="post" id="myform">
<input type="hidden" name="cno"  value="${cno}"/>
<!-- 获取学生信息并隐藏 -->
<input type="hidden" name="sno" value="${stuTestVo.sno }"/>
<div class="container">
			<div class="besttop" style="height: 90px;">
				<h1 class='page-header' style="display: inline; line-height: 90px;">教师——阅卷</h1>
				<a class="glyphicon glyphicon-log-out" style="display: inline; margin-left: 600px; cursor: pointer;" href="${pageContext.request.contextPath}/teacher.jsp">返回教师个人中心</a>
			</div>
			<div class="item">
				<strong>试卷科目：</strong><strong>${cname}</strong><hr />
			</div>
			<div class="context">
			<c:forEach items="${stuTestVo.subjectTestVoList }" var="stest">
				<input type="hidden" name="testNumber"  value="${stest.testno }"/>
				<!--一道题目开始-->
				<div class="oneItem">
					<div class="mix">
						<div class="questions">
							<strong>考试题目:</strong><p>${stest.content }</p>
						</div>
						<div class="giveScore">
							<div class="form-group">
							    <label for="" class="col-md-6 control-label tmtype" style="line-height: 34px;">教师打分：</label>				    
							    <div class="col-md-5" style="margin-left: -20px;">
								<select class="form-control col-md-3" name="practicalScore">
										<c:if test="${stest.score==10 }">
											  <option value="0">0</option>
											  <option value="1">1</option>
											  <option value="2">2</option>
											  <option value="3">3</option>
											  <option value="4">4</option>
											  <option value="5">5</option>
											  <option value="6">6</option>
											  <option value="7">7</option>
											  <option value="8">8</option>
											  <option value="9">9</option>
											  <option value="10">10</option>
										</c:if>
										<c:if test="${stest.score==5 }">
											   <option value="0">0</option>
											  <option value="1">1</option>
											  <option value="2">2</option>
											  <option value="3">3</option>
											  <option value="4">4</option>
											  <option value="5">5</option>
										</c:if>
								</select>
								</div>
							</div>
						</div>
					</div>
					<div class="answer">
						<div class="refAnswer">
							<strong>参考答案:</strong><p>${stest.refanswer }</p>
						</div>
						<div class="StuAnswer">
							<strong>学生答案:</strong><p>${stest.stuAnswer }</p>
						</div>
					</div>
				</div>
				<!--一道题目结束-->
				</c:forEach>
			</div>
		</div>
		<input type="button" value="下一份" onclick="doFinish()" class="musubmit"/>
	</form>
	
 <%-- <h1>阅卷</h1>

	<form action="${pageContext.request.contextPath }/nextSubject" method="post" id="myform">
	
		<input type="text" name="sno" value="${stuTestVo.sno }"/>
		
		<p>主观题</p>
		<table>
			<tr>
				<th>题目</th>
				<th>总分</th>
				<th>学生答案</th>
				<th>评分</th>
			</tr>
			<c:forEach items="${stuTestVo.subjectTestVoList }" var="stest">
				<input type="hidden" name="testNumber"  value="${stest.testno }"/>
				<tr>
					<td>${stest.content }</td>
					<td>${stest.score }</td>
					<td>${stest.stuAnswer }</td>
					<td><input type="text" name="practicalScore" ></td>
				</tr>
			</c:forEach>
		</table>
		
	
		<input type="button" value="下一份" onclick="doFinish()"/>
	</form>  --%>
	
	<script type="text/javascript">
		function doFinish() {
			alert("下一份");	
			$("#myform").submit();
		}
	</script>
	
</body>
</html>