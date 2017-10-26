<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
  <head>
  	<base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>看房专员-资讯详情</title>
    <link href="<%=basePath%>dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=basePath%>css/carousel.css" rel="stylesheet">
    <link href="<%=basePath%>css/main.css" rel="stylesheet">
    <script type="text/javascript" src="<%=basePath%>js/jquery1-11-3.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>dist/js/bootstrap.min.js"></script>
    
  <script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"8123",secure:"8124"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>

  <body style="background-color: #FFFFFF" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-19" data-genuitec-path="/lastHouse/WebRoot/WEB-INF/jsp/top/newsDetail.jsp">
	    <div class="main-header" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-19" data-genuitec-path="/lastHouse/WebRoot/WEB-INF/jsp/top/newsDetail.jsp">

			<div class="container">
				<div style="float: right;line-height: 50px;vertical-align: middle;">
				<a href="<%=basePath%>index" style="color: #FFF;text-decoration: none">返回首页</a>
				</div>
			</div>

			<div class="container">
				<div class="row">
					<div class="col-md-12" style="padding-top: 100px;padding-bottom: 100px">
						<img src="<%=basePath%>img/banner.jpg" class="hide">
					</div>
				</div>
			</div>
			
		</div>

		<div class="container" style="padding-top: 30px">
			<strong style="line-height: 56px;font-size: 40px;">${news.title}</strong>
			<p style="border-bottom: 2px solid rgb(204, 204, 204);padding-bottom: 10px"><small>发布时间：<fmt:formatDate value="${news.createTime}" pattern="yyyy-MM-dd hh:MM:ss"/></small></p>
		</div>
		<div class="container">
			<div class="row" style="padding-top: 50px">
				<div class="col-md-12">
					<nav class="navbar navbar-default" role="navigation">
				      <div class="container-fluid">
				        <div class="navbar-header">
				        </div>
				        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-4">
				          	<p class="navbar-text">${news.about}</p>
				        </div>
				      </div>
				    </nav>
				</div>
			</div>
			<div class="row" style="padding-top: 30px">
				<div class="col-md-12">
					${news.contents}
				</div>
			</div>
		</div>
			
<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?ceaf5c37f80fb245277a554817609bcf";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>
  </body>
</html>
