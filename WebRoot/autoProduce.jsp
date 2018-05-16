<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="static/bs/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="static/css/bootstrap-grid.min.css" />
<link rel="stylesheet" type="text/css" href="static/css/style.css">
<title>Insert title here</title>
</head>
	<style>
		.page-header{
			font-family: "楷体";
		}
		a{
			text-decoration: none!important;
		}
		.mya{
			font-family: "微软雅黑";
			color: black;
			font-size: 16px;
			padding-left: 40%;
		} 
	</style>
<body>
	<div class="demo">
	<div class="container">
		<div class="besttop" style="height: 90px;margin-bottom: 30px;">
			<h1 class='page-header' style="display: inline; line-height: 90px;">教师——模板选择</h1>
			<a class="glyphicon glyphicon-log-out" style="display: inline; margin-left: 600px; cursor: pointer;" href="${pageContext.request.contextPath}/teacher.jsp">返回教师个人中心</a>
		</div>
		<div class="row">
			<div class="col-md-4 col-sm-6">
				<div class="box">
					<div class="box-img">
						<img src="static/img/1.png" alt="">
					</div>
					<div class="box-content">
						<h4 class="title">TEMPLATE NO.1</h4>
						<p class="description">
						选择题：10题 X 2分(1-10章 每章一个题)<br/>
						填空题：5题 X 2分(每章一个题)<br/>
						综合大题：4题 X 5分(4题都是难度系数<6) ; 
						4题 X 10分(三题难度系数<6,一题难度系数8-10)</p>
						<ul class="social-links">
							<li><a href="${pageContext.request.contextPath }/produceModel?number=1&cno=${cno}" class="fa fa-qq">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;模板一</a></li>
							<li><a href="#" class="fa fa-weibo"></a></li>
							<li><a href="#" class="fa fa-weixin"></a></li>
						</ul>
					</div>
				</div>
					<br/>
					<a class="mya" href="${pageContext.request.contextPath }/produceModel?number=1&cno=${cno}">模板1</a>
			</div>

			<div class="col-md-4 col-sm-6">
				<div class="box">
					<div class="box-img">
						<img src="static/img/2.png" alt="">
					</div>
					<div class="box-content">
						<h4 class="title">TEMPLATE NO.2</h4>
						<p class="description">
						选择题： 15题 每题2分  1-5章每章2题，6-10章每章1题<br/>
						 填空题 ：10题 每题2分  1-10章每章一题<br/>
						 大题：5分的题4个      难度系数<6
						 10分的题3个   两题难度系数<8  一题难度系数8-10
						</p>
						<ul class="social-links">
							<li><a href="${pageContext.request.contextPath }/produceModel?number=2&cno=${cno}" class="fa fa-qq">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;模板二</a></li>
							<li><a href="#" class="fa fa-weibo"></a></li>
							<li><a href="#" class="fa fa-weixin"></a></li>
						</ul>
					</div>
				</div>
				<br/>
				<a  class="mya" href="${pageContext.request.contextPath }/produceModel?number=2&cno=${cno}">模板2</a>
			</div>

			<div class="col-md-4 col-sm-6">
				<div class="box">
					<div class="box-img">
						<img src="static/img/3.png" alt="">
					</div>
					<div class="box-content">
						<h4 class="title">TEMPLATE NO.3</h4>
						<p class="description">
							选择题 ：10题 每题2分  1-10章每章1题<br/>
							填空题：5题 每题2分  1-5章每章一题<br/>
							大题：5分的题6个      难度系数<6
						    10分的题4个   两题难度系数<8  两题难度系数8-10
						</p>
						<ul class="social-links">
							<li><a href="${pageContext.request.contextPath }/produceModel?number=3&cno=${cno}" class="fa fa-qq">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;模板三</a></li>
							<li><a href="#" class="fa fa-weibo"></a></li>
							<li><a href="#" class="fa fa-weixin"></a></li>
						</ul>
					</div>
				</div>
				<br/>
				<a class="mya" href="${pageContext.request.contextPath }/produceModel?number=3&cno=${cno}">模板3</a>
			</div>
		</div>
	</div>
</div>
	<%-- <a href="${pageContext.request.contextPath }/produceModel?number=1">模板1</a>
	<a href="${pageContext.request.contextPath }/produceModel?number=2">模板2</a>
	<a href="${pageContext.request.contextPath }/produceModel?number=3">模板3</a> --%>
	
</body>
</html>