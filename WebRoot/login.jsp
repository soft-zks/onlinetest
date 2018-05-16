<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<link rel="stylesheet" href="static/bs/css/bootstrap.min.css" />
		<link rel="stylesheet" href="static/css/login.css" />
		<link rel="stylesheet" href="static/css/jquery.idcode.css" />
		<script type="text/javascript" src="static/bs/js/jquery.min.js" ></script>
		<script type="text/javascript" src="static/bs/js/bootstrap.min.js" ></script>
		<script src="static/js/jquery.idcode.js"></script>
		<script type="text/javascript" src="static/js/login.js" ></script>
		<title></title>
	</head>
	<body>
		<div class="container">
			<div class="col-md-1"></div>
			<div class="z_mylogo col-md-11">
				<img src="static/img/HUBU.PNG">
			</div>
		</div>
		<div class="container z_mycontent">
			<div class="col-md-5 col-md-offset-1">
				<img src="static/img/photo.jpg" />
			</div>
			<div class="col-md-6">	
				 <p style="color: red">${msg}</p>
				<form action="${pageContext.request.contextPath}/loginServlet" method='post'>
					<p><div class="z_name" >用户名:</div>
						<input type="text" name='username' class='auth'>
						<span class='error' ></span>
						<span class='right'></span>
					</p>
					<p><div class="z_name" >密码:</div>
						<input type="password" name="password" class='auth'>
						<span class='error'></span>
						<span class='right'></span>
					</p>
					<p><div class="lblVerification z_name">验证码:</div>
						<input type="text" id="Txtidcode" class="txtVerification auth" name='yzm'/>
						<span id="idcode"></span>
						<span class='error'></span>
						<span class='right'></span>
					</p>
					<p>
						<input type="submit" value="提交" id="btns"class="z_mysubmit">
					</p>
				</form>
			</div>
		</div>
		<!-- <div class="container">
			<div class="z_mylink"><font size="3" ><a href="http://www.miitbeian.gov.cn/">晋ICP备17007913号</a></font></div>
		</div> -->
	</body>
</html>
