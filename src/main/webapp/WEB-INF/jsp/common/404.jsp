<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en-US">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<title>404ERROR</title>
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>files/cmstop-error.css" media="all">
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"8123",secure:"8124"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body class="body-bg" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-9" data-genuitec-path="/lastHouse/WebRoot/WEB-INF/jsp/common/404.jsp">
	<div class="main" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-9" data-genuitec-path="/lastHouse/WebRoot/WEB-INF/jsp/common/404.jsp">
		<p class="title">非常抱歉，您要查看的页面没有办法找到</p>
		<a href="<%=basePath%>" class="btn">返回网站首页</a>
	</div>
</body>
</html>