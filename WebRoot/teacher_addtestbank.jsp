<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="static/bs/css/bootstrap.min.css" />
<link rel="stylesheet" href="static/css/TQM.css" />
<script type="text/javascript" src="static/bs/js/jquery.min.js" ></script>
<script type="text/javascript" src="static/bs/js/bootstrap.min.js" ></script>	
<title>Insert title here</title>
</head>
<style>
	*{
		 font-family:'微软雅黑';
	}
	body{
		background: url(static/img/002.jpg);
		min-height: 600px;
		height: 100%;
	}
	.page-header{
		font-family: "楷体";
	}
	.tmtype{
		line-height: 34px;
		font-size: 15px;
	}
	.add{
		margin-left: 260px;
		width: 150px;
	}
</style>
<body>
<%-- <a href="${pageContext.request.contextPath}/teacher.jsp">回到教师个人中心</a> --%>
	<div class="container">
		<a class="glyphicon glyphicon-log-out" style="display: inline;float:right;margin-top:10px; cursor: pointer;" href="${pageContext.request.contextPath}/teacher.jsp">返回个人中心</a>
			<h1 class='page-header'>教师——添加课程</h1>
			<p style="color:red;">${msg}</p>
			<form action="${pageContext.request.contextPath}/addTestBankByTestno" method="post" class="form-horizontal" >
				<div class="form-group">
				    <label for="" class="col-sm-1 control-label tmtype">题目类型</label>				    
				    <div class="col-md-2">
				    <select name="testType" id="testType" class="form-control col-md-3">
						<option value="0">选择题</option>
						<option value="1">填空题</option>
						<option value="2">主观题</option>
					</select>
					</div>
				</div> 
				<div class="form-group">
					<label for="" class="col-sm-1 control-label tmtype">题干</label>				    
				    <div class="col-md-6">
						<textarea name ="content" value="${param.content}" class="form-control" rows="5" placeholder="请输入题目......" style="overflow-x: hidden;"></textarea>
					</div>
				</div>
				<div class="form-group">
					<label for="" class="col-sm-1 control-label tmtype">参考答案</label>				    
				    <div class="col-md-6">
						<textarea name="refanswer" value="${param.refanswer}" class="form-control" rows="3" placeholder="请输入各题的参考答案。若为选择题，则输入的第一个为正确答案，题目各选项间用“|”分割" style="overflow-x: hidden;"></textarea>
					</div>
				</div>
				<div class="form-group">
				    <label for="" class="col-sm-1 control-label tmtype">难度系数</label>				    
				    <div class="col-md-2">
				    <select name="degree" class="form-control col-md-3">
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
					</select>
					</div>
				</div>
				<div class="form-group">
				    <label for="" class="col-sm-1 control-label tmtype">所属章节</label>				    
				    <div class="col-md-2">
				    <select name="chapter" class="form-control col-md-3">
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
				<div class="form-group">
				    <label for="" class="col-sm-1 control-label tmtype">所属课程</label>				    
				    <div class="col-md-2">
				    <select name="cname" id="cname" class="form-control col-md-3">
  						<option value="">-- 请选择 --</option>
  						<c:forEach items="${courses}" var="course" varStatus="vs">
			            	<option value="${course.cname}"  name="${course.cname}" id="${course.cno}" >
			            		 ${course.cname}
			            	</option>
           				 </c:forEach>
  					</select>
					</div>
				</div> 
				<div class="form-group">
					<input type="submit" value="添加题目" class="btn btn-success add"/> 
				</div>
			</form>
		</div>
	
	 <%-- <form action="${pageContext.request.contextPath}/addTestBankByTestno" method="post">
		<table>
  			<tr>
  				<td>题目类型:</td>
  				<td>
  					<select name="testType" id="testType">
						<option value="选择题">选择题</option>
						<option value="填空题">填空题</option>
						<option value="主观题">主观题</option>
					</select>
  				</td>
  			</tr>
  			<tr>
  				<td>题干：</td>
  				<td>
  					<textarea name ="content" rows="6" cols="40" ></textarea>
  				</td>
  			</tr>
  			<tr>
  				<td>参考答案</td>
  				<td><input type="text" name="refanswer" /></td>
  			</tr>
  			<tr>
  				<td></td>
  				<td>如果是选择题，参考答案之间请用":"分割，第一个选项为正确答案</td>
  			</tr>
  			<tr>
  				<td>难度系数:</td>
  				<td>
  					<select name="degree">
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
					</select>
  				</td>
  			</tr>
  			<tr>
  				<td>所属章节:</td>
  				<td>
  					<select name="chapter">
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
  				</td>
  			</tr>
  			<tr>
  				<td>所属课程:</td>
  				<td>
  					<select name="cname" id="cname">
  						<option value="">-- 请选择 --</option>
  						<c:forEach items="${courses}" var="course" varStatus="vs">
			            	<option value="${course.cname}"  name="${course.cname}" id="${course.cno}" >
			            		 ${course.cname}
			            	</option>
           				 </c:forEach>
  					</select>
  				</td>
  			</tr>
  			<tr>
  				<td colspan="2">
  					<input type="submit" value="添加题目"/>
  				</td>
  			</tr>
  		</table>
	</form>   --%>
</body>
<script>
	$(function(){
		var flag = true;
	    function checkForm(frm) {
	        $(".form-group .col-md-6 textarea").each(function(i, obj) {
	            if(obj.value == "") {
	                alert($(obj).attr("placeholder"));
	                flag = false;
	                return false;
	            }
	        });
	        return flag;
	    }
	    
	    $('.add').click(function(){
	    	checkForm('.form-horizontal');
	    })

	});
</script>
</html>