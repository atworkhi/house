<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	contentType="text/html; charset=utf-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML>

<html lang="zh-CN">
	<head>
	<title>背景图片更换</title>
	<style>
	.col-center-block {
		float: none;
		display: block;
		margin-left: auto;
		margin-right: auto;
	}
	</style>
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<link rel="stylesheet" href="<%=basePath%>dist/css/bootstrap.min.css" />
	<script type="text/javascript" src="<%=basePath%>js/jquery1-11-3.min.js"></script>
	<script type="text/javascript"
		src="<%=basePath%>dist/js/bootstrap.min.js"></script>
	
	<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"8123",secure:"8124"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script>
	</head>
	
	
	<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-0"
		data-genuitec-path="/houseHelper/WebRoot/WEB-INF/jsp/back/bgImage.jsp">
	
		<div class="breadcrumbs" data-genuitec-lp-enabled="false"
			data-genuitec-file-id="wc1-0"
			data-genuitec-path="/houseHelper/WebRoot/WEB-INF/jsp/back/bgImage.jsp">
			<ul class="breadcrumb">
				<li class="active">背景图片更换</li>
			</ul>
		</div>
	
		<div class="main-container">
			<div class="page-content">
				<div class="col-xs-12">
					<form id="f_form" method="post"
						action="<%=basePath%>back/bg/change"
						enctype="multipart/form-data">
						<div class="alert alert-danger">注意！请上传JPG格式文件，并且大小小于3M。</div>
						<div class="form-group ">
							<label for="exampleInputFile" class="control-label">
								请填入背景图片： </label> <input type="file" id="exampleInputFile" name="bgimage">
							<p class="help-block">用于显示背景图片</p>
						</div>
						<div class="form-group ">
							<button class="btn btn-info" type="submit">
								<i class="icon-ok bigger-110"></i> 提交
							</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</body>
</html>