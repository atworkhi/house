<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
<title>咨询信息列表</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" href="<%=basePath%>dist/css/bootstrap.min.css" />
<script type="text/javascript" src="<%=basePath%>js/jquery1-11-3.min.js"></script>
<script type="text/javascript" src="<%=basePath%>dist/js/bootstrap.min.js"></script>



<script type="text/javascript">

	
	function flipPage(obj){
		var localPage = ${newsBean.localPage};
		var countPage = ${newsBean.countPage};
		if(obj==1){//上一页
			if(localPage==1) return;
			localPage--;
		}else{//下一页
			if(countPage==localPage) return;
			localPage++;
		}
		$("#query_offset").val(localPage);
		$("#queryForm").submit();
	}
</script>


<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"8123",secure:"8124"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-6" data-genuitec-path="/lastHouse/WebRoot/WEB-INF/jsp/back/newsList.jsp">
	<div class="container" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-6" data-genuitec-path="/lastHouse/WebRoot/WEB-INF/jsp/back/newsList.jsp">
		<div class="row" style="padding-bottom: 10px">
			<div class="col-md-6">
				<form id="queryForm" class="form-inline" method="post" action="<%=basePath%>back/news/list">
					资讯标题：<input class="form-control" name="title" value="${title}">
					<button type="submit" class="btn btn-primary">查找</button>
					<button type="reset" class="btn btn-primary">清空</button>
				</form>
			</div>
			<div class="col-md-6 text-right">
				<a href="<%=basePath%>back/news/toAdd" class="btn btn-success">添加</a>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12">
				<table class="table table-striped table-responsive" >
					<thead>
						<tr>
							<th>序号</th>
							<th>标题</th>
							<th>创建时间</th>
							<th>创建用户</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${newsBean.list}" var="news" varStatus="status">
							<tr>
								<td>${status.index+1}</td>
								<td>${news.title}</td>
								<td>
									<c:if test="${news.createTime!=null}">
										<fmt:formatDate value="${news.createTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
									</c:if>
								</td>
								<td>
									${news.createUserName}
								</td>
								<td>
									<a href="<%=basePath%>back/news/edit?id=${news.id}" class="btn btn-success btn-sm">修改</a>
									<a href="<%=basePath%>back/news/delete?id=${news.id}" class="btn btn-danger btn-sm">删除</a>
								</td>
							</tr>
						</c:forEach>
						
					</tbody>
				</table>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-6 text-left">
				<span class="">共${newsBean.countNum}条 &nbsp; &nbsp; 共${newsBean.countPage}页  &nbsp; &nbsp; &nbsp;当前${newsBean.localPage}页 &nbsp; &nbsp; &nbsp;</span>
			</div>
			<div class="col-sm-6 text-right">	
				<span class="">
					<a href="javascript:void(0)" onclick="flipPage(1)">上一页</a>
					<a href="javascript:void(0)" onclick="flipPage(2)">下一页</a>
				</span>
			</div>
		</div>
	</div>
</body>
</html>
