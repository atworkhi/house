<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
    <title>看房专员-关于我们</title>
    <link href="<%=basePath%>dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=basePath%>css/carousel.css" rel="stylesheet">
    <link href="<%=basePath%>css/main.css" rel="stylesheet">
    <script type="text/javascript" src="<%=basePath%>js/jquery1-11-3.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>dist/js/bootstrap.min.js"></script>
    
  <script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"8123",secure:"8124"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>

  <body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-14" data-genuitec-path="/lastHouse/WebRoot/WEB-INF/jsp/top/company.jsp">
	    <div class="main-header" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-14" data-genuitec-path="/lastHouse/WebRoot/WEB-INF/jsp/top/company.jsp">

			<div class="container">
				<div style="float: right;line-height: 50px;vertical-align: middle;">
				<a href="<%=basePath%>index" style="color: #FFF;text-decoration: none">返回首页</a>
				</div>
			</div>

			<div class="container">
				<div class="row">
				</div>
				<div class="row">
					<div class="col-md-12" style="padding-top: 100px;padding-bottom: 100px">
						<img src="<%=basePath%>img/banner.jpg" class="hide">
					</div>
				</div>
			</div>
			
		</div>

		<div class="container" style="padding-top: 20px">
			<div class="page-header">
			  <h2>公司名称</h2>
			  <p style="font-size: 16px;">
			  	北京华盛天诚文化传媒有限公司
			  </p>
			</div>
			<div class="page-header">
			  <h2>联系我们</h2>
			  <p style="font-size: 16px;">
			  	看房专员隶属北京华盛天诚文化传媒有限公司，是北京新房服务平台，为您提供北京及北京周边最新楼盘信息，汇集专业房产服务团队，可提供全程免费带看房服务，可预约免费看房班车，并提供一对一服务，按照您的需求匹配适合您的楼盘，并可参加团购优惠，绝对最低价，为您找到梦想家园，来电咨询吧！
			  </p>
			</div>
			<div class="page-header">
			  <h2>公司地址</h2>
			  <p style="font-size: 16px;">
			  	北京市朝阳区天朗园c座3层03商业(丰收孵化器3419号)
			  </p>
			</div>
			<div class="page-header">
			  <h2>联系电话</h2>
			  <p style="font-size: 16px;">
			  	4006781138
			  </p>
			</div>
		</div>
	
  </body>
</html>
