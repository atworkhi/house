<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>看房专员-登录</title>
    <!-- Bootstrap core CSS -->
    <link href="<%=basePath%>dist/css/bootstrap.min.css" rel="stylesheet">
     <link href="<%=basePath%>css/signin.css" rel="stylesheet">
    <script type="text/javascript" src="<%=basePath%>js/jquery1-11-3.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>dist/js/bootstrap.min.js"></script>



	
	<style type="text/css">
<%--		body {--%>
<%--			background: url("<%=basePath%>img/login.jpg") no-repeat center fixed;--%>
<%--		}--%>
	</style>

	<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"8123",secure:"8124"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>





  <body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-11" data-genuitec-path="/lastHouse/WebRoot/WEB-INF/jsp/common/login.jsp">

    <div class="container" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-11" data-genuitec-path="/lastHouse/WebRoot/WEB-INF/jsp/common/login.jsp">

			<form class="form-signin" role="form" method="post" action="<%=basePath%>back/user/login">
				<h2 class="form-signin-heading">
					看房专员-后台登录
				</h2>
				<div style="margin-bottom: 10px;">
					<input name="userName" class="form-control" placeholder="用户名" required autofocus>
				</div>
				<div>
					<input name="password" class="form-control" placeholder="密码" required type="password">
					<c:if test="${msg!=null && msg!='' }">
					<span style="color: red;font-size: 20px">${msg}</span>
				</c:if>
				</div>
				
				<button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
			</form>

		</div> <!-- /container -->
  </body>
</html>
