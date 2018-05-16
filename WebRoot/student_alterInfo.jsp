<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" href="static/bs/css/bootstrap.css" />
		<script type="text/javascript" src="static/bs/js/jquery.min.js"></script>
		<script type="text/javascript" src="static/js/formValidation.js"></script>
		<script type="text/javascript" src="static/js/bootstrap.js"></script>
		<script language="javascript" src="static/js/pcasunzip.js" charset="utf-8"></script>
		<title>修改个人信息</title>
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
	</style>
	<script>
	function getValue(){ 
		var getpro=document.getElementById("province").value;
		var getcity=document.getElementById("city").value;
		var getarea=document.getElementById("area").value;
		var sum = getpro+" "+getcity+" "+getarea ;
			$("#nation").val(sum)
		   //alert(getpro+" "+getcity+" "+getarea);
		 }
	</script>
	<body style="overflow: hidden;">
	<div class="container">
		<div class="besttop" style="height: 90px;">
			<h1 class='page-header' style="display: inline; line-height: 90px;">修改个人信息</h1>
			<a href="${pageContext.request.contextPath}/student.jsp" class="glyphicon glyphicon-log-out" style="display: inline; margin-left: 600px; cursor: pointer;" >回到学生个人中心</a>
		</div>
	 <p style="color: red">${msg}</p>
	<%--  <form id="defaultForm" method="post" class="form-horizontal" action="${pageContext.request.contextPath}/alterInfo">
	       <!-- 角色 -->
	       <input type="hidden" class="form-control" name="role" value="${role}"/>
	       <!-- 角色 -->
	        <!-- 账号 -->
	       <input type="hidden" class="form-control" name="usercode" value="${param.usercode}"/>
	       <!-- 账号-->
	       <div class="form-group">
	           <label class="col-lg-3 control-label">用户名</label>
	           <div class="col-lg-5">
	               <input type="text" class="form-control" name="sno" value="${param.usercode}" disabled="disabled"/>
	           </div>
	       </div>
	
	 		<div class="form-group">
	               <label class="col-lg-3 control-label">性别</label>
	               <div class="col-lg-5">
	                   <div class="radio">
	                       <label>
	                           <input type="radio" name="sex" value="男"/> 男
	                       </label>
	                   </div>
	                   <div class="radio">
	                       <label>
	                           <input type="radio" name="sex" value="女" /> 女
	                       </label>
	                   </div>                           
	               </div>
	           </div>
	       
	 		<div class="form-group">
	             <label class="col-lg-3 control-label">出生日期</label>
	             <div class="col-lg-5">
	                 <input type="text" class="form-control" name="age" /> (YYYY/MM/DD)
	             </div>
	         </div>
	         <!-- 级联菜单城市选择 -->
	        <div class="form-group">
	             <label class="col-lg-3 control-label">家庭住址</label>
	              <input type="hidden" class="form-control" name="nation" id="nation"/>
	             <div class="col-lg-2">
	                <select name="user.province" id="province" class="form-control" ></select>
	             </div>
	              <div class="col-lg-2">
	               <select name="user.city" id="city" class="form-control" ></select>
	             </div>
	              <div class="col-lg-2">
	                <select name="user.area" id="area" class="form-control" ></select>
	             </div>
	         </div>   
	          <!-- 级联菜单城市选择 -->
	         <div class="form-group">
	             <label class="col-lg-3 control-label">身份证号</label>
	             <div class="col-lg-5">
	                 <input type="text" class="form-control" name="idCard" />
	             </div>
	         </div>
	  		
			<div class="form-group">
	            <label class="col-lg-3 control-label">电话号码</label>
	            <div class="col-lg-5">
	                <input type="text" class="form-control" name="phoneNumber" />
	            </div>
	        </div>
	
	 		<div class="form-group">
	            <label class="col-lg-3 control-label">邮箱</label>
	            <div class="col-lg-5">
	                <input type="text" class="form-control" name="email" />
	            </div>
	        </div>
	               
	         <div class="form-group">
	             <div class="col-lg-9 col-lg-offset-3">
	                 <button type="submit" class="btn btn-primary" name="signup" onclick="getValue()"  value="Sign up">修改</button>
	             </div>
	         </div>
	     </form> --%>
	     <form id="defaultForm" method="post" class="form-horizontal" action="${pageContext.request.contextPath}/alterInfo">
	       <!-- 角色 -->
	       <input type="hidden" class="form-control" name="role" value="${role}"/>
	       <!-- 角色 -->
	        <!-- 账号 -->
	       <input type="hidden" class="form-control" name="usercode" value="${param.usercode}"/>
	       <!-- 账号-->
	       <div class="form-group">
	           <label class="col-lg-3 control-label">用户名</label>
	           <div class="col-lg-5">
	               <input type="text" class="form-control" name="sno" value="${param.usercode}" disabled="disabled"/>
	           </div>
	       </div>
	
	 		<div class="form-group">
               <label class="col-lg-3 control-label">性别</label>
               <div class="col-lg-5">
                   <div class="radio">
                       <label>
                           <input type="radio" name="sex" value="男" checked/> 男
                       </label>
                   </div>
                   <div class="radio">
                       <label>
                           <input type="radio" name="sex" value="女" /> 女
                       </label>
                   </div>                           
               </div>
           </div>
	       
	 		<div class="form-group">
	             <label class="col-lg-3 control-label">出生日期</label>
	             <div class="col-lg-5">
	                 <input type="text" class="form-control" name="age" placeholder=" (YYYY-MM-DD)"/>
	             </div>
	         </div>
	         <!-- 级联菜单城市选择 -->
	        <div class="form-group">
	             <label class="col-lg-3 control-label">家庭住址</label>
	              <input type="hidden" class="form-control" name="nation" id="nation"/>
	             <div class="col-lg-2">
	                <select name="user.province" id="province" class="form-control" ></select>
	             </div>
	              <div class="col-lg-2">
	               <select name="user.city" id="city" class="form-control" ></select>
	             </div>
	              <div class="col-lg-2">
	                <select name="user.area" id="area" class="form-control" ></select>
	             </div>
	         </div>   
	          <!-- 级联菜单城市选择 -->
	         <div class="form-group">
	             <label class="col-lg-3 control-label">身份证号</label>
	             <div class="col-lg-5">
	                 <input type="text" class="form-control" name="idCard" />
	             </div>
	         </div>
	  		
			<div class="form-group">
	            <label class="col-lg-3 control-label">电话号码</label>
	            <div class="col-lg-5">
	                <input type="text" class="form-control" name="phoneNumber" />
	            </div>
	        </div>
	
	 		<div class="form-group">
	            <label class="col-lg-3 control-label">邮箱</label>
	            <div class="col-lg-5">
	                <input type="text" class="form-control" name="email" />
	            </div>
	        </div>
	               
	         <div class="form-group">
	             <div class="col-lg-9 col-lg-offset-3">
	             	<button type="submit" class="btn btn-primary" name="signup"  onclick="getValue()" value="Sign up" style="width:120px;margin-left:130px; font-size:17px;">修 改</button> 
	             </div>
	         </div>
	     </form>
	   </div>
	  <!-- 级联菜单城市选择 -->
	<script language="javascript" defer>
	new PCAS("user.province","user.city","user.area","山东省","济南市","济南市");
	</script>
	  <!-- 级联菜单城市选择 -->
	</body>
	<script>
		$(document).ready(function() {
		    $('#defaultForm').formValidation({
		        message: '信息填写错误，请重新输入',
		        excluded: ':disabled',
		        icon: {
		            valid: 'glyphicon glyphicon-ok',
		            invalid: 'glyphicon glyphicon-remove',
		            validating: 'glyphicon glyphicon-refresh'
		        },
		        fields: {    
		        	age: {
		        		validators: {
		        			notEmpty: {
		        				message:'信息不能为空'
		        			},
		        			regexp:{
		        				regexp:/^[\d]{4}[-\ ][\d]{1,2}[-\ ][\d]{1,2}$/,
		        				message:'生日格式填写错误 格式应为：2017-01-01'
		        			}
		        		}
		        	},
		            idCard: {
		            	validators: {
		                    notEmpty: {
		                        message: '信息不能为空'
		                    },
		                    regexp: {
		                        regexp: /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/,
		                        message: '身份证号输入错误'
		                    }
		                }
		            },
		            phoneNumber: {
		                validators: {              
		                    notEmpty: {
		                        message: '信息不能为空'
		                    },
		                    
		                    regexp: {
		                        regexp: /^1(3|4|5|7|8)\d{9}$/,
		                        message: '手机号码格式错误'
		                    }
		                }
		            },
		            email: {
		                validators: {
		                   	notEmpty: {
		                        message: '信息不能为空'
		                    },
		                    regexp: {
		                        regexp: /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/,
		                        message: '邮箱输入错误'
		                    }
		                }
		            }
		        }
		    }).on('err.form.fv', function(e) {
		        console.log('error');
		        var $form         = $(e.target),
		            validator     = $form.data('formValidation'),
		            $invalidField = validator.getInvalidFields().eq(0),
		            $collapse     = $invalidField.parents('.collapse');
		        $collapse.collapse('show');
		    });
		});
	</script>
</html>