<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- <link rel="stylesheet" href="static/layui/css/layui.css" /> -->
<link rel="stylesheet" href="static/bs/css/bootstrap.min.css" />
<script type="text/javascript" src="static/bs/js/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<style>
th, td {
	text-align: center; /** 设置水平方向居中 */
	vertical-align: middle; /** 设置垂直方向居中 */
}

body {
	background: url(static/img/002.jpg);
	min-height: 600px;
	height: 100%;
}

.page-header {
	font-family: "楷体";
}

#tab3 table {
	margin-top: 15px;
}

.gly {
	width: 100px;
	height: 40px;
	/* background: #C0C0C0; */
	margin-left: 928px;
	line-height: 40px;
	padding-left: 10px;
	border-radius: 13px;
}

.mysubmit {
	width: 120px;
	margin-left: 48%;
	background-color: aliceblue;
}
</style>
<body>
	<div class="container">
		<div class="besttop" style="height: 90px;">
			<h1 class='page-header' style="display: inline; line-height: 90px;">管理员--设置系统开关</h1>
			<a class="glyphicon glyphicon-log-out"
				style="display: inline; margin-left: 600px; cursor: pointer;"
				href="${pageContext.request.contextPath}/admin.jsp"">返回管理员个人中心</a>
		</div>
		<div id="tab3" class="col-md-8" style="margin-right: 50px;">
			<form action="${pageContext.request.contextPath }/ChangeSystemClick"
				method="post">
				<table
					class='table table-striped table-bordered table-hover table-condensed'>
					<tr>
						<th>课程编号</th>
						<th>课程名称</th>
						<th>开课学院</th>
						<th>设置考试开关</th>
					</tr>
					<c:forEach items="${courses}" var="course">
						<tr>
							<td>${course.cno}</td>
							<td>${course.cname}</td>
							<td>${course.college}</td>
							<td>
								<%-- <form class="layui-form" action="">
				      <input type="checkbox" name="" lay-skin="switch" lay-filter="switchTest" lay-text="ON|OFF">
					  <input type ="text" class = " mystatus"name="mystatus" value="${course.cno}">
				</form> --%> <input type="hidden" name="cno" value="${course.cno}">

								<%-- <c:if test="${course.teststatus == 1}">

							<input type="checkbox" name="testss" checked="checked" value="1" /> 	是否可以开始考试
						</c:if> <c:if test="${course.teststatus == 0}">

							<input type="checkbox" name="testss" value="0" /> 	是否可以开始考试
						</c:if> --%> <select name="testss">
									<option value="1"
										<c:if test="${course.teststatus == 1}">selected="selected"</c:if>>开启</option>
									<option value="0"
										<c:if test="${course.teststatus == 0}">selected="selected"</c:if>>关闭</option>
							</select>


							</td>
						</tr>
					</c:forEach>
				</table>
				<input type="submit" value="提交" class="mysubmit" />
			</form>
		</div>
	</div>


	<!-- <script src="static/layui/layui.js" charset="utf-8"></script> -->
	<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
	<!-- <script>
layui.use(['form', 'layedit', 'laydate'], function(){
  var form = layui.form
  ,layer = layui.layer
  ,layedit = layui.layedit
  ,laydate = layui.laydate;
  
  //监听指定开关
  form.on('switch(switchTest)', function(data){
    /* layer.msg('该课程是否可以开始考试：'+ (this.checked ? 'true' : 'false'), {
      offset: '6px'
    }); */
    alert;
    
    var mystatus =  $(this).parents("form").find(".mystatus").val()+":"+(this.checked ? '1' : '0');
    $(this).parents("form").find(".mystatus").val(mystatus);
    
   // alert(mystatus);
     
    layer.tips('温馨提示：设置系统课程开关', data.othis)
  });
});
</script> -->
</body>
</html>