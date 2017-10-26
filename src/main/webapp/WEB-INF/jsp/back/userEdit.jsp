<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
<title>用户添加</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" href="<%=basePath%>dist/css/bootstrap.min.css" />
<script type="text/javascript" src="<%=basePath%>js/jquery1-11-3.min.js"></script>
<script type="text/javascript" src="<%=basePath%>dist/js/bootstrap.min.js"></script>


<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"8123",secure:"8124"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-7" data-genuitec-path="/lastHouse/WebRoot/WEB-INF/jsp/back/userAdd.jsp">
	<div class="breadcrumbs" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-7" data-genuitec-path="/lastHouse/WebRoot/WEB-INF/jsp/back/userAdd.jsp">
		<ul class="breadcrumb">
		  <li><a href="<%=basePath%>back/user/toList">用户管理</a></li>
		  <li class="active">
		  <c:choose>
		  	<c:when test="${user==null}">添加用户</c:when>
		  	<c:otherwise>更新用户</c:otherwise>
		  </c:choose>
		  </li>
		</ul>
	</div>
	<div class="main-container">
		<div class="page-content">
			<div class="col-xs-12">
				<form id="f_form" class="form-horizontal" method="post">
				
					<input type="hidden" name="userId" value="${user.userId }">
					<input type="hidden" name="password" value="${user.password }">
					<input type="hidden" name="createTime" value="${user.createTime }">
					
					<div class="form-group">
						<label for="username" class="col-sm-3 control-label no-padding-right">用户名：</label>
						<div class="col-sm-9">
							<input type="text" class="col-xs-10 col-sm-3" id="username" name="userName" value="${user.userName}">
						</div>
					</div>
					<div class="form-group">
						<label for="phone" class="col-sm-3 control-label no-padding-right">电话：</label>
						<div class="col-sm-9">
							<input type="text" class="col-xs-10 col-sm-3" id="phone" name="phone" value="${user.phone}">
						</div>
					</div>
					<div class="form-group">
						<label for="address" class="col-sm-3 control-label no-padding-right">地址：</label>
						<div class="col-sm-9">
							<input type="text" class="col-xs-10 col-sm-3" id="address" name="address" value="${user.address}">
						</div>
					</div>
					
					<div class="form-group">
						<div class="col-md-offset-3 col-md-9">
							<button class="btn btn-info btn-sm" onclick="submitData()">
								<i class="icon-ok bigger-110"></i>
								提交
							</button>
							&nbsp; &nbsp;
							<button class="btn btn-sm" type="button" 
								onclick="javascrtpt:window.location.href='<%=basePath%>back/user/list'">
								<i class="icon-undo bigger-110"></i>
								返回
							</button>
						</div>
					</div>
					
				</form>
			</div>
		</div>
	</div>

	<script type="text/javascript">
	
	function  submitData(){
		if("${user.userId}"==""){
			$("#f_form").attr("action","<%=basePath%>back/user/save");
		}else{
			$("#f_form").attr("action","<%=basePath%>back/user/update");
		}
		$("#f_form").submit();
	}
	
	</script>
	
</body>
</html>
