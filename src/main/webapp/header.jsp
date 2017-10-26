<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<div class="navbar-wrapper" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-30" data-genuitec-path="/lastHouse/WebRoot/header.jsp">
	<div class="container">
		<nav class="navbar navbar-inverse navbar-fixed-top"
			style="border-radius:0;background-color:rgba(34, 34, 34, 0.42);border:none" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="<%=basePath%>index"><span style="font-size: 25px;color:#FFFFFF">看房专员</span></a>
				</div>
				<div id="navbar" class="navbar-collapse collapse navbar_menu">
					<ul class="nav navbar-nav">
						<li><a href="<%=basePath%>bj-new" target="_blank">北京房产</a></li>
						<li><a href="<%=basePath%>nanjing" target="_blank">南京房产</a></li>
						<li><a href="<%=basePath%>beihai" target="_blank">北海房产</a></li>
						<li><a href="<%=basePath%>hainan" target="_blank">海南房产</a></li>
						<li><a href="<%=basePath%>news" target="_blank">最新资讯</a></li>
						<li><a href="<%=basePath%>company" target="_blank">关于我们</a></li>
						<li><a href="<%=basePath%>link" target="_blank">联系我们</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right"
						style="padding:15px 15px 15px 0;">
						<li><span style="color: red;font-size: 20px;">联系电话：4006781138</span>
						</li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
</div>