<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
<title>看房专员-首页</title>
<!-- Bootstrap core CSS -->
<link href="<%=basePath%>dist/css/bootstrap.min.css" rel="stylesheet">
<link href="<%=basePath%>css/carousel.css" rel="stylesheet">
<link href="<%=basePath%>css/main.css" rel="stylesheet">
<script type="text/javascript" src="<%=basePath%>js/jquery1-11-3.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>dist/js/bootstrap.min.js"></script>
<style type="text/css">
.navbar_menu_a {
	color: #FFFFFF;
	font-size: 20px
}
</style>

<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"8123",secure:"8124"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script>
</head>

<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-16"
	data-genuitec-path="/houseHelper/WebRoot/WEB-INF/jsp/top/index.jsp">

	<jsp:include page="/header.jsp"></jsp:include>

	<div class="main-header" data-genuitec-lp-enabled="false"
		data-genuitec-file-id="wc1-16"
		data-genuitec-path="/houseHelper/WebRoot/WEB-INF/jsp/top/index.jsp">
		<div class="container text-center">
			<div class="row">
				<div class="col-md-12"
					style="padding-top: 150px; padding-bottom: 150px">
					<span style="font-size: 30px; color: rgba(255, 235, 59, 0.94);">售楼热线：
						4006781138，可预约免费看房班车，专业看房专员全程免费带看。</span>
				</div>
			</div>
		</div>
	</div>
	<nav class="navbar navbar-default" style="border-radius: 0"
		role="navigation">
		<div class="container-fluid">
			<div
				style="text-align: center; margin-top: 10px; color: red; font-size: 20px">
				精选房源&nbsp;电话:4006781138</div>
		</div>
	</nav>



	<div class="container marketing">

		<c:choose>
			<c:when test="${bestlist!=null && fn:length(bestlist)>0}">
				<c:forEach items="${bestlist}" var="house">
					<div class="col-sm-6 col-md-4 col-lg-3">
						<div class="thumbnail">
							<a href="<%=basePath%>best/detail?id=${house.id}" target="_blank">
								<img src="<%=basePath%>${house.smallPhoto}"
								style="height: 180px; width: 100%">
							</a>
							<div class="caption">
								<p class="name">${house.name}</p>
								<p class="price">${house.price}</p>
								<p class="label">
									<c:if test="${house.labels != null}">
										<c:set value="${fn:split(house.labels,'|')}" var="labels" />
										<c:forEach items="${labels}" var="label">
											<span class="label label-success">${label}</span>
										</c:forEach>
									</c:if>
								</p>
							</div>
						</div>
					</div>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<div class="text-center">
					<h3>暂无数据!</h3>
				</div>
			</c:otherwise>
		</c:choose>


		<!-- /END THE FEATURETTES -->


		<!-- FOOTER -->


	</div>


	<!-- /.container -->
	<hr class="featurette-divider">


	<div class="container">

		<div class="page-header" style="border-bottom: 1px solid #131212;">
			<h1>最新资讯</h1>
		</div>
		<c:forEach items="${newsList}" var="news">
			<div class="row">
				<div class="col-md-12">
					<div class="media" style="padding-bottom: 10px">
						<a class="media-left"
							href="<%=basePath%>news/detail?id=${news.id}"> <img
							class="media-object" src="<%=basePath%>${news.img}"
							style="height: 80px; width: 100px">
						</a>
						<div class="media-body">
							<h4 class="media-heading">${news.title}</h4>
							${news.about}
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>

	<div class="container">
		<div class="page-header" style="border-bottom: 1px solid #131212;">

		</div>
		<div class="container-fluid">
			<div
				style="text-align: center; margin-top: 10px; color: red; font-size: 30px">
				详情请致电 售楼热线 4006781138</div>
		</div>
	</div>

	<hr class="featurette-divider">
	<div class="container" style="text-align: center">
		<%--			<p>--%>
		<%--				北京华盛天诚文化传媒有限公司&nbsp;&nbsp;地址:北京市朝阳区天朗园c座3层03商业(丰收孵化器3419号)&nbsp;&nbsp;联系电话：4006781138&middot;--%>
		<%--			</p>--%>
		<p>京ICP备16067393号</p>
	</div>
	<nav class="navbar navbar-default navbar-fixed-bottom"
		role="navigation">
		<div class="container-fluid">
			<form class="navbar-form" role="search" style="text-align: center">
				<a href="tel:4006781138" class="btn btn-danger">一键通话</a>&nbsp;<a
					href="tel:4006781138" class="btn btn-danger">预约班车</a>
			</form>
		</div>
	</nav>
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
