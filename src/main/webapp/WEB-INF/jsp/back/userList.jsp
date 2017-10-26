<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
	<title>用户管理</title>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<link rel="stylesheet" href="<%=basePath%>dist/css/bootstrap.min.css" />
	<link rel="stylesheet" href="<%=basePath%>dist/css/font-awesome.min.css" />
	<script type="text/javascript" src="<%=basePath%>js/jquery1-11-3.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>dist/js/bootstrap.min.js"></script>
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"8123",secure:"8124"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-8" data-genuitec-path="/lastHouse/WebRoot/WEB-INF/jsp/back/userList.jsp">
	<div class="container" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-8" data-genuitec-path="/lastHouse/WebRoot/WEB-INF/jsp/back/userList.jsp">
		<div class="row" style="padding-bottom: 10px">
			<div class="col-md-6">
				<form class="form-inline" role="form" action="<%=basePath%>back/user/list">
					<div class="input-group">
						<input class="form-control" name="username" value="${username}" placeholder="用户名">
					</div>
					<button type="submit" class="btn btn-primary">查找</button>
					<button type="reset" class="btn btn-primary">清空</button>
				</form>
			</div>
			<div class="col-md-6 text-right">
				<a  href="<%=basePath%>/back/user/addUser" class="btn btn-success">添加</a>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12">
				<table class="table table-striped table-responsive" >
					<thead>
						<tr>
							<th>序号</th>
							<th>用户名</th>
							<th>电话</th>
							<th>地址</th>
							<th>创建时间</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list}" var="user" varStatus="status">
							<tr>
								<td>${status.index+1}</td>
								<td>${user.userName}</td>
								<td>${user.phone}</td>
								<td>${user.address}</td>
								<td><fmt:formatDate value="${user.createTime}"
										pattern="yyyy/MM/dd HH:mm:ss" /></td>
								<td>
									<a href="<%=basePath%>back/user/toUpdate?userId=${user.userId}" class="btn btn-success btn-sm" role="button">修改</a>
									<a href="<%=basePath%>back/user/delete?userId=${user.userId}" class="btn btn-danger btn-sm" role="button">删除</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
