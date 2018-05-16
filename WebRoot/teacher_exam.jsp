<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="static/bs/css/bootstrap.min.css" />
<script type="text/javascript" src="static/bs/js/jquery.min.js" ></script>
<script type="text/javascript" src="static/layer/layer.js" ></script>
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
		padding-top: 18px;
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
   		margin-top: 18px;
   		padding-top: 10px;
	}
	.text{
		margin-top: 90px;
	}
	.item2,.item1,.item3{
		word-wrap:break-word;
		
	}
	.mysubmit{
		width:100px;
		margin-left:5%;
		margin-bottom: 20px;
	}
</style>
<body>
	<div class="container">
			<div class="besttop">
				<div class="le page-header"><h1 style="display: inline;">考试开始——</h1><h3 style="display: inline;">课程名称</h3></div>
				<div class="gly">
					<a class="glyphicon glyphicon-pencil" style=" font-size: 15px; cursor: pointer;" href="TeacherPerson.html">计数器</a>
				</div>
			</div>
			<div class="text">
					<!--选择题-->
					<div class="select">
						<h4>一、选择题</h4>
						<c:forEach items="${choiceTestList }" var="choice">
							<div class="item1">
								<p>${choice.content }</p>
								<div class="answer1">
									
								</div>
							</div>
						</c:forEach>						
					</div>
					<!--选择题结束-->
			
					<!--填空题-->
					<div class="enter">
						<h4>二、填空题</h4>
						<c:forEach items="${blankTestList }" var="blank">
							<div class="item2">
								<p>${blank.content }</p>
							</div>
						</c:forEach>
					<!--填空题结束-->
					
					<div class="com">
						<h4>三、综合题</h4>	
						<c:forEach items="${subjectiveTestList }" var="subject">
							<!--综合题-->
								<div class="item3">
									<p>${subject.content }</p>
								</div>
							<!--综合题结束-->
						</c:forEach>
					<div class="form-group">
			             <div class="col-lg-9 col-lg-offset-3">
			             	<form id="myform" action="${pageContext.request.contextPath}/doDeleteAutoTest" method="post">
								<input type="hidden" name="examinationNumber" value="${number }">
								<input type="button" onclick="okTest()" value="提交" class="mysubmit">
								<input type="button" onclick="deleteTest()" value="取消" class="mysubmit">
							</form>
			             </div>
			         </div>
			</div>
		</div>
	<%-- <p>选择题</p>
	<table>
		<c:forEach items="${choiceTestList }" var="choice">
			<tr>
				<td>${choice.content }</td>
			</tr>
		</c:forEach>
	</table>
	
	<p>填空题</p>
	<table>
		<c:forEach items="${blankTestList }" var="blank">
			<tr>
				<td>${blank.content }</td>
			</tr>
		</c:forEach>
	</table>
	
	<p>主观题</p>
	<table>
		<c:forEach items="${subjectiveTestList }" var="subject">
			<tr>
				<td>${subject.content }</td>
			</tr>
		</c:forEach>
	</table>
	
	<form id="myform" action="${pageContext.request.contextPath}/doDeleteAutoTest" method="post">
		<input type="hidden" name="examinationNumber" value="${number }">
		<input type="button" onclick="deleteTest()" value="不要了">
		<input type="button" onclick="okTest()" value="要了">
	</form> --%>
	
	<script>
		
		function deleteTest() {
			layer.msg('取消成功', {
				icon: 1,
				time: 2000 //2秒关闭（如果不配置，默认是3秒）
			}, function(){
				$("#myform").submit();
			}); 
			
		}
		
		function okTest() {
			
			layer.msg('生成试卷成功', {
				icon: 1,
				time: 2000 //2秒关闭（如果不配置，默认是3秒）
			}, function(){
				window.location.href = "${pageContext.request.contextPath}/teacher.jsp";
			}); 
			/*layer.open({
				type: 1, 
				content: '生成试卷成功', 
				success: function(layero, index){
					window.location.href = "";
				}
			});*/
			
			/*layer.confirm('是否确定？', {
				  btn: ['确定', '取消'] //可以无限个按钮
				}, function(index, layero){
				  //按钮【按钮一】的回调
					
				}, function(index){
				  //按钮【按钮二】的回调
					layer.close();
				});		*/		
		}
	
	</script>
	
</body>
</html>