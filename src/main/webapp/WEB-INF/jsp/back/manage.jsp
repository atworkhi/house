<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title></title>
		<link rel="stylesheet" href="<%=basePath%>dist/css/bootstrap.min.css" />
		<link rel="stylesheet" href="<%=basePath%>css/beyond.min.css" />
		<script type="text/javascript" src="<%=basePath%>js/jquery1-11-3.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>dist/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/bootstrap-addTab.js" ></script>

	<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"8123",secure:"8124"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>

	<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-3" data-genuitec-path="/lastHouse/WebRoot/WEB-INF/jsp/back/manage.jsp">
		<!-- banner -->
		<div class="navbar navbar-fixed-top" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-3" data-genuitec-path="/lastHouse/WebRoot/WEB-INF/jsp/back/manage.jsp">
			<div class="navbar-inner">
				<div class="navbar-container">
					<!-- Navbar Barnd -->
					<div class="navbar-header pull-left">
						<a href="#" class="navbar-brand" style="padding-top: 10px">
								看房卫士后台管理系统
<!-- 							<small><img src="http://www.jq22.com/demo/booststrapmoban20150728/assets/img/logo.png" alt=""></small> -->
						</a>
					</div>
				</div>
			</div>
		</div>

		<!-- main -->
		<div class="main-container container-fluid">
			
			<div class="page-container">
				
				<!-- 左侧菜单 -->
				<div id="sidebar" class="page-sidebar sidebar-fixed">
					
					<!-- 菜单列表 -->
					<ul class="nav sidebar-menu">
						<!--Dashboard-->
						<li class="active">
							<a href="javascript:void(0)">
								<i class="menu-icon glyphicon glyphicon-home"></i>
								<span class="menu-text">菜单列表</span>
							</a>
						</li>
						<!--Databoxes-->
						<li>
							<a href="javascript:addTabs({id:'1',title:'用户管理',url:'<%=basePath%>back/user/list'})">
								<i class="menu-icon glyphicon glyphicon-tasks"></i>
								<span class="menu-text">用户管理</span>
							</a>
						</li>
						<!--Databoxes-->
						<li>
							<a href="javascript:addTabs({id:'2',title:'楼盘信息管理',url:'<%=basePath%>back/house/list'})">
								<i class="menu-icon glyphicon glyphicon-tasks"></i>
								<span class="menu-text">楼盘信息管理</span>
							</a>
						</li>
						<li>
							<a href="javascript:addTabs({id:'3',title:'最新咨询管理',url:'<%=basePath%>back/news/list'})">
								<i class="menu-icon glyphicon glyphicon-tasks"></i>
								<span class="menu-text">最新咨询管理</span>
							</a>
						</li>
						<li>
							<a href="javascript:addTabs({id:'4',title:'背景图片管理',url:'<%=basePath%>back/bg/image'})">
								<i class="menu-icon glyphicon glyphicon-tasks"></i>
								<span class="menu-text">背景图片管理</span>
							</a>
						</li>
					</ul>
					
				</div>

				<!--右侧内容-->
				<div class="page-content">
					<div class="page-breadcrumbs breadcrumbs-fixed">
						<ul class="nav nav-tabs" role="tablist">
						  <li role="presentation" class="active"><a href="#home" role="tab" data-toggle="tab">工作台</a></li>
						</ul>
					</div>	
					<div class="page-body">
						<!-- Nav tabs -->
						<div class="tab-content" style="padding: 0 0;">
						  	<div role="tabpanel" class="tab-pane active" id="home" style="height: 900px">
						  		<span style="font-size: 25px">我的工作台</span>
						  	</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>

</html>