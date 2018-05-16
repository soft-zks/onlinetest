<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
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
		min-height: 532px;
		height: 100%;
	}
	.page-header{
		font-family: "楷体";
	}
	.midContext{
		width: 700px;
		height: 400px;
		margin-top: 15px;
		margin-left: 15px;
	}
</style>
<body>
	<div class="container">
		<div class="besttop" style="height: 90px;">
			<h1 class='page-header' style="display: inline; line-height: 90px;">管理员——修改学生成绩</h1>
			<a class="glyphicon glyphicon-log-out" style="display: inline; margin-left: 600px; cursor: pointer;" href="admin_seeScore.jsp">返回</a>
		</div>
		<div class="midContext">
			<form action="${pageContext.request.contextPath}/getUpdateInfo" method="post" class="form-horizontal">
				<p>
					<label for="" class="col-sm-3 control-label tmtype">学号：</label><strong style="font-size:15px; line-height:32px;">${stuCous.sno}</strong>
					<input type="hidden" name="sno" value="${stuCous.sno}">
				</p>
				<p>
					<label for="" class="col-sm-3 control-label tmtype">姓名：</label><strong style="font-size:15px; line-height:32px;">${stuCous.sname}</strong>
					<input type="hidden" name="sname" value="${stuCous.sname}">
				</p>
				<p>
					<label for="" class="col-sm-3 control-label tmtype">课程名称：</label><strong style="font-size:15px; line-height:32px;">${stuCous.cname}</strong>
					<input type="hidden" name="cname" value="${stuCous.cname}">
				</p>
				<!--<p><label>平时成绩：卷面成绩</label>
					<select name="scaleSelect" id="scaleSelect">
						<option value="3:7">3:7</option>
						<option value="4:6" selected="selected">4:6</option>
						<option value="5:5">5:5</option>
					</select> 
				</p>-->
				<div class="form-group">
				    <label for="" class="col-sm-3 control-label tmtype">平时成绩：卷面成绩</label>				    
				    <div class="col-md-2">
						<select class="form-control col-md-3" name="scaleSelect" id="scaleSelect">
							<option value="3:7">3:7</option>
							<option value="4:6" selected="selected">4:6</option>
							<option value="5:5">5:5</option>
						</select>
					</div>
				</div> 
				<div class="form-group">
    				<label for="" class="col-sm-3 control-label tmtype">平时成绩：</label>
				 	<div class="col-md-4">
				 		<input class="form-control" placeholder="输入的成绩范围1~100" id="usualScore" name="usualScore" value="${stuCous.usualScore}" >
				 	</div>
				</div>
				<div class="form-group">
    				<label for="" class="col-sm-3 control-label tmtype">卷面成绩：</label>
				 	<div class="col-md-4">
				 		<input class="form-control" placeholder="输入的成绩范围1~100" id ="paperScore" name="paperScore" value="${stuCous.paperScore}" disabled="disabled">
				 	</div>
				</div>
				<div class="form-group">
    				<label for="" class="col-sm-3 control-label tmtype">总成绩：</label>
				 	<div class="col-md-4">
				 		<input class="form-control col-md-3" placeholder="输入的成绩范围1~100" id="sumScore" name="sumScore" value="${stuCous.sumScore}" style="background-color: #C0C0C0">
				 	</div>
				</div>
				<div class="form-group">
		             <div class="col-lg-9 col-lg-offset-3">
		             	<button type="submit" class="btn btn-info" id="sub" style="width:120px;margin-left:30px; font-size:14px;">修 改</button> 
		             </div>
	         	</div>
			</form>
		</div>
	</div>
</body>
<script>
	$(document).ready(function() {
		$("#usualScore").blur(function(){ 
			 //获取成绩比例
		     var options = $("#scaleSelect option:selected").val();
		     var optionStr = options.substring(0, 1);
		     var scaleInt = parseInt(optionStr) * 0.1;
		     //alert(scaleInt);
		     
		 	//获取平时成绩
		     var usual = $(this).val();
		     if (usual == null || '' == usual) {
		         $(this).parents("tr").find(".sumScore").val("");
		         return;
		     }
		     else if (isNaN(usual) || usual < 0 || usual > 100) {                     
		         $("#commit").attr("disabled", "disabled");
		         alert('请输入0~100之间的数！');
		         return;
		     } 
		     var usualInt = parseInt(usual);
		    // alert(usualInt);
		    
		   //获取卷面成绩
		   var paperInt = $(this).parents("form").find("#paperScore").val();
		   //alert(paperInt);
		   
		   //总成绩
		    var sumInt =  parseInt(usualInt*scaleInt+paperInt*(1.0-scaleInt));
		    $("#sumScore").val(sumInt);
			 //alert(sumInt); 
		 });
	});
</script>
</html>