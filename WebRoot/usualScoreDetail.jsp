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
		.courseTit{
			height: 34px;
			widows: 800px;
			margin-left: 15px;
		}
		.btn-group{
			float: left;
			margin-left: 15px;
		}

		#tab3 table{
			margin-top:15px;
		}
	</style>
<body>
<%-- <form action="#" method="post">
	<div class="container">
			<div class="besttop" style="height: 90px;">
				<h1 class='page-header' style="display: inline; line-height: 90px;">教师——详细打分</h1>
				<a class="glyphicon glyphicon-log-out" style="display: inline; margin-left: 600px; cursor: pointer;" href="TeacherPerson.html">返回个人中心</a>
			</div>
			<!--上面选择栏-->
			<div class="tit">
				
				<div class="form-group">
					<div class="courseTit">
						<label for="" class="control-label tmtype" style="line-height: 34px; font-size: 14px;">课程名称：</label><i class="courseItem" style="font-style: normal;">${cname }</i>
					</div>                                                                          
				    <label for="" class="col-sm-3 control-label tmtype" style="line-height: 34px; font-size: 14px;">平时成绩 : 卷面成绩 </label>				    
				    <div class="col-md-1" style="margin-left: -60px;">
				    <select name="scaleSelect" id="scaleSelect" class="form-control col-md-2">
				    	<option value="3:7">3:7</option>
						<option value="4:6" selected="selected">4:6</option>
						<option value="5:5">5:5</option>
					</select> 
					</div>
			</div>
			<!--选择栏结束-->
			<div id="tab3" class="col-md-10" style="margin-right: 50px;">
				<table class='table table-striped table-bordered table-hover table-condensed'>
					<tr>
						<th>学号</th>
			   			<th>学生姓名</th>
			   			<th>平时成绩</th>
			   			<th>卷面成绩</th>
			   			<th>总成绩</th>
					</tr>
					<c:forEach items="${studentCourses}" var="course" varStatus="vs">
				   			<tr>
				   				<!-- 封装对象 -->
				   				<input type="hidden" name="courseScore" class="courseScore" value="${course.id}"/>
				   				<td>${course.sno}</td>
				   				<td>${course.sname}</td>
				   				<td><input type="text"  class="usualScore" name="usualScore" value=""></td>
				   				<td><input type="text" class="paperScore" name="paperScore" value="${course.paperScore}" disabled="disabled"></td>
				   				<td><input type="text"  class="sumScore" name="sumScore" value="" disabled="disabled"></td>
				   			</tr>
			   		</c:forEach>
				</table>
				<input type="submit" id="commit" value="提交" class="btn btn-success col-sm-1" style="margin-left: 450px;"/>
			</div>
		</div>
	</form>
	 --%>
	
 	<div class="container">
		<div class="besttop" style="height: 90px;">
			<h1 class='page-header' style="display: inline; line-height: 90px;">教师——详细打分</h1>
			<a class="glyphicon glyphicon-log-out" style="display: inline; margin-left: 600px; cursor: pointer;" href="${pageContext.request.contextPath}/getTeacherSelectCourse?mytype=0">返回</a>
		</div>
		<!--上面选择栏-->
			<div class="tit">
				<div class="form-group">
					<div class="courseTit">
						<label for="" class="control-label tmtype" style="line-height: 34px; font-size: 14px;">课程名称：</label><i class="courseItem" style="font-style: normal;">${cname }</i>
					</div>
					<form action="${pageContext.request.contextPath}/updateStudentScore" method="post">
				    <label for="" class="col-sm-3 control-label tmtype" style="line-height: 34px; font-size: 14px;">平时成绩 : 卷面成绩 (算总成绩)</label>				    
				    <div class="col-md-2" style="margin-left: -60px;">
						<select class="form-control col-md-2" name="scaleSelect" id="scaleSelect">
						  	<option value="3:7">3:7</option>
							<option value="4:6" selected="selected">4:6</option>
							<option value="5:5">5:5</option>
						</select>
					</div>
				</div>
				<div id="tab3" class="col-md-10" style="margin-right: 50px;">
					<table class="table table-striped table-bordered table-hover table-condensed">
						<tr>
							<th>学号</th>
							<th>学生姓名</th>
							<th>平时成绩</th>	
							<th>卷面成绩</th>
							<th>总成绩</th>
						</tr>
						<c:forEach items="${studentCourses}" var="course" varStatus="vs">
   							<c:if test="${course.status==0}">
								<tr>
					   				<!-- 封装对象 -->
					   				<input type="hidden" name="courseScore" class="courseScore" value="${course.id}"/>
					   				<td>${course.sno}</td>
					   				<td>${course.sname}</td>
					   				<td><input type="text"  class="usualScore" name="usualScore" value=""></td>
					   				<td><input type="text" class="paperScore" name="paperScore" value="${course.paperScore}" disabled="disabled"></td>
					   				<td><input type="text"  class="sumScore" name="sumScore" value="" disabled="disabled"></td>
					   			</tr>
							</c:if>
   						</c:forEach>
					</table>
					<input type="submit" value="提交" id="commit" class="btn btn-success col-sm-1" style="margin-left: 450px;"/>
				</div>
			</div>
		</div>
			
 <script>
/*  //下拉框改变时触发事件
 function selectOnchange(obj){
	 var options = obj.options[obj.selectedIndex].value;
	// alert(options);
	 var optionStr = options.substring(0, 1);
     var scaleInt = parseInt(optionStr) * 0.1;
  }; */
 $(document).ready(function() {
	  $(".usualScore").blur(function(){ 
		 //获取成绩比例
	      var options = $("#scaleSelect option:selected").val();
	     var optionStr = options.substring(0, 1);
	     var scaleInt = parseInt(optionStr) * 0.1;
	    // alert(scaleInt);
	     
	   //获取平时成绩
	     var usual = $(this).val();
	     if (usual == null || '' == usual) {
	         $(this).parents("tr").find(".sumScore").val("");
	         return;
	     }
	     else if (isNaN(usual) || usual < 0 || usual > 100) {
	         $(this).parents("tr").find(".sumScore").val("");                      
	         $("#commit").attr("disabled", "disabled");
	         alert('请输入0~100之间的数！');
	         return;
	     } 
	     var usualInt = parseInt(usual);
	     
	     //alert(usualInt);
	     $("#commit").attr("disabled", false);
	    //获取卷面成绩
	    var paperInt = $(this).parents("tr").find(".paperScore").val(); 
	    //alert(paperInt);
	    
	    //总成绩
	    var sumInt =  parseInt(usualInt*scaleInt+paperInt*(1.0-scaleInt));
	    $(this).parents("tr").find(".sumScore").val(sumInt);
	    
	    //封装成绩信息
	    var score = $(this).parents("tr").find(".courseScore").val();
	    var courseScore = score+":"+usualInt+":"+sumInt;
	     $(this).parents("tr").find(".courseScore").val(courseScore);
	     //alert(courseScore);
	 });
 });
 </script>
</body>
</html>