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
		min-height: 535px;
		height: 100%;
	}
	.page-header{
		font-family: "楷体";
	}
	.le{
		float: left;
		margin-left: 15px;
		line-height: 60px; 
		margin: 0;
	}
	.gly{
		width:100px;
		height: 40px;
		background: #C0C0C0;
		line-height: 40px;
		padding-left: 10px;
		border-radius: 13px;
		float:right;
   		margin-right: 35px;
	}
	.text{
		margin-top: 90px;
	}
	.item2,.item1,.item3{
		word-wrap:break-word;
		
	}
</style>
<body>
 <form action="${pageContext.request.contextPath}/finishTest" method="post" id="myform" class="form-horizontal">
<div class="container">
			<div class="besttop">
				<div class="le page-header"><h1 style="display: inline;">考试开始——</h1><h3 style="display: inline;">${cname}</h3></div>
				<div class="gly">
					<a class="glyphicon glyphicon-pencil" style=" font-size: 15px; cursor: pointer;" href="TeacherPerson.html">计数器</a>
				</div>
			</div>
			<div class="text">
					<!--选择题-->
					<div class="select">
						<h4>一、选择题</h4>
						<c:forEach items="${choiceVoList }" var="choice" varStatus="vs">
						<input type="hidden" name="choiceNumber" value="${choice.testno }"/>
							<div class="item1">
								<p>${choice.content }</p>
								<div class="answer1">
									<div class="form-group">
							            <label class="col-lg-2 control-label">填写答案：</label>
							            <div class="col-lg-5">
							               <!--  <input type="text" class="form-control" name="choiceAnswer"/> -->
							               <p><input type="radio" name="choiceAnswer${vs.index }" value="${choice.choiceOne }"/>A:${choice.choiceOne }</p>
							               <p> <input type="radio" name="choiceAnswer${vs.index }" value="${choice.choiceTwo }"/>B:${choice.choiceTwo }</p>
							                <p><input type="radio" name="choiceAnswer${vs.index }" value="${choice.choiceThree }"/>C:${choice.choiceThree }</p>
							                <p><input type="radio" name="choiceAnswer${vs.index }"value="${choice.choiceFour }"/>D:${choice.choiceFour }</p>
							            </div>
							        </div>
								</div>
							</div>
						</c:forEach>
					</div>
					<!--选择题结束-->
					
					<!--填空题-->
					<div class="enter">
						<h4>二、填空题</h4>	
					<c:forEach items="${blankTestList }" var="blank">
						<input type="hidden" name="blankNumber" value="${blank.testno }"/>
						<div class="item2">
							<p>${blank.content }</p>
							<div class="answer2">
								<div class="form-group">
						            <label class="col-lg-2 control-label">填写答案：</label>
						            <div class="col-lg-5">
						                <input type="text" class="form-control"  name="blankAnswer"/>
						            </div>
						        </div>
							</div>
						</div>
					</c:forEach>
					</div>
					<!--填空题结束-->
					
					<!--综合题-->
					<div class="com">
						<h4>三、综合题</h4>
						<c:forEach items="${subjectiveTestList }" var="subject">
						<input type="hidden" name="subjectNumber"  value="${subject.testno }"/>
						<div class="item3">
							<p>${subject.content }</p>
							<div class="answer3">
								<div class="form-group">
						            <label class="col-lg-2 control-label">填写答案：</label>
						            <div class="col-lg-5">
						                <textarea class="form-control"  name="subjectAnswer"></textarea>
						            </div>
						        </div>
							</div>
						</div>
						</c:forEach>
					</div>
					<!--综合题结束-->
					
					<input type="hidden" name="cno" value="${cno }"/>
					
					<div class="form-group">
			             <div class="col-lg-9 col-lg-offset-3">
			                 <button type="submit" class="btn btn-primary submitting">提交试卷</button>
			             </div>
			         </div>
			</div>
		</div>
		</form>
		
		
	<%-- <h1>考试开始</h1>

	<form action="${pageContext.request.contextPath}/finishTest" method="post" id="myform">
		<p>选择题</p>
		<table>
			<c:forEach items="${choiceTestList }" var="choice">
				<input type="hidden" name="choiceNumber" value="${choice.testno }"/>
				<tr>					
					<td>${choice.content }</td>
					<td><input type="text" name="choiceAnswer"/></td>
				</tr>
			</c:forEach>
		</table>
		
		<p>填空题</p>
		<table>
			<c:forEach items="${blankTestList }" var="blank">
				<input type="hidden" name="blankNumber" value="${blank.testno }"/>
				<tr>
					<td>${blank.content }</td>
					<td><input type="text" name="blankAnswer"/></td>
				</tr>
			</c:forEach>
		</table>
		
		<p>主观题</p>
		<table>
			<c:forEach items="${subjectiveTestList }" var="subject">
				<input type="hidden" name="subjectNumber"  value="${subject.testno }"/>
				<tr>
					<td>${subject.content }</td>
					<td><textArea name="subjectAnswer" rows="10" cols="20"></textArea></td>
				</tr>
			</c:forEach>
		</table>
		
		<input type="hidden" name="cno" value="${cno }"/>
		<input type="button" value="交卷" onclick="doFinish()"/>
	</form> --%>
	
	<script type="text/javascript">
	$(document).ready(function() {
		/* $("input").blur(function(){
		   	var text = $(this).val();
		     if (text == null || '' == text) {
		        $(this).val("none");
		         return;
		     }
		}); */
		
		
		function doFinish() {
			alert("交卷");	
			$("#myform").submit();
		}
	});
		
	</script>
	
</body>
</html>