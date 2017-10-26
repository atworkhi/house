<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
	<title>楼盘信息列表</title>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<link rel="stylesheet" href="<%=basePath%>dist/css/bootstrap.min.css" />
	<script type="text/javascript" src="<%=basePath%>js/jquery1-11-3.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>dist/js/bootstrap.min.js"></script>



	<script type="text/javascript">

        function flipPage(obj){
            var localPage = ${houseBean.localPage};
            var countPage = ${houseBean.countPage};
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

        //精选
        function addBest(obj,id){
            var url = "back/house/doBest?id="+id;
            if(obj=1){
                url +="&type=1";
            }else{
                url +="&type=2";
            }
            location.href="<%=basePath%>"+url;
        }


        //推荐
        function addTuijian(obj,id){
            var url = "back/house/doTuijian?id="+id;
            if(obj=1){
                url +="&type=1";
            }else{
                url +="&type=2";
            }
            location.href="<%=basePath%>"+url;
        }

	</script>


	<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"8123",secure:"8124"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-1" data-genuitec-path="/lastHouse/WebRoot/WEB-INF/jsp/back/houseList.jsp">
<div class="container-fluid" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-1" data-genuitec-path="/lastHouse/WebRoot/WEB-INF/jsp/back/houseList.jsp">
	<div class="row" style="padding-bottom: 10px">

			<form id="queryForm" class="form-inline" method="post" action="<%=basePath%>back/house/list">
				<div class="col-md-10">
				楼盘名称：<input class="form-control" name="houseName" value="${query.houseName}">
				楼盘区域：<select class="form-control" name="houseType">
				<option value="">全部楼盘</option>
				<option value="1" <c:if test="${query.houseType==1}">selected="selected"</c:if>>北京房产</option>
				<option value="2" <c:if test="${query.houseType==2}">selected="selected"</c:if>>南京房产</option>
				<option value="3" <c:if test="${query.houseType==3}">selected="selected"</c:if>>北海房产</option>
				<option value="4" <c:if test="${query.houseType==4}">selected="selected"</c:if>>海南房产</option>
			</select>
				是否精选：<select class="form-control" name="isBest">
				<option value="0" <c:if test="${query.isBest==0}">selected="selected"</c:if>>否</option>
				<option value="1" <c:if test="${query.isBest==1}">selected="selected"</c:if>>是</option>
			</select>

				是否推荐：<select class="form-control" name="isTuijian">
				<option value="0" <c:if test="${query.isTuijian==0}">selected="selected"</c:if>>否</option>
				<option value="1" <c:if test="${query.isTuijian==1}">selected="selected"</c:if>>是</option>
			</select>

				<input id="query_offset" type="hidden" name="offset">
				<input id="query_limit" type="hidden" name="limit">
				<button type="submit" class="btn btn-primary">查找</button>
				<button type="reset" class="btn btn-primary">清空</button>
				</div>

				<div class="col-md-2 text-right">
					<a href="<%=basePath %>back/house/addPage" class="btn btn-success">添加</a>
				</div>
			</form>
	</div>

	<div class="row">
		<div class="col-md-12">
			<table class="table table-striped table-responsive" >
				<thead>
				<tr>
					<th>序号</th>
					<th>楼盘名称</th>
					<th>楼盘电话</th>
					<th>建筑面积</th>
					<th>楼盘地址</th>
					<th>楼盘类型</th>
					<th>是否精选</th>
					<th>是否推荐</th>
					<th>操作</th>
				</tr>
				</thead>
				<tbody>
				<c:forEach items="${houseBean.list}" var="house" varStatus="status">
					<tr>
						<td>${status.index+1}</td>
						<td>${house.name}</td>
						<td>${house.phone}</td>
						<td>${house.area}</td>
						<td>${house.houseAddress}</td>
						<td>
							<c:if test="${house.houseType=='1'}">北京房产</c:if>
							<c:if test="${house.houseType=='2'}">南京房产</c:if>
							<c:if test="${house.houseType=='3'}">北海房产</c:if>
							<c:if test="${house.houseType=='4'}">海南房产</c:if>
						</td>
						<td>
							<c:if test="${house.isBest=='1'}">是</c:if>
						</td>
						<td>
							<c:if test="${house.isTuijian=='1'}">是</c:if>

						</td>
						<td>
							<c:choose>
								<c:when test="${house.isBest==1}">
									<a href="<%=basePath%>back/house/doBest?id=${house.id}"  class="btn btn-success btn-sm" role="button">取消精选</a>
								</c:when>
								<c:otherwise>
									<a href="<%=basePath%>back/house/doBest?id=${house.id}"  class="btn btn-primary btn-sm" role="button">加为精选</a>
								</c:otherwise>
							</c:choose>

							<a href="<%=basePath%>back/house/toUpdate?id=${house.id}" class="btn btn-warning btn-sm" role="button">修改</a>

							<c:choose>
								<c:when test="${house.isTuijian==1}">
									<a href="<%=basePath%>back/house/doTuijian?id=${house.id}"  class="btn btn-success btn-sm" role="button" >取消推荐</a>
								</c:when>
								<c:otherwise>
									<a href="<%=basePath%>back/house/doTuijian?id=${house.id}"  class="btn btn-primary btn-sm" role="button" >加为推荐</a>
								</c:otherwise>
							</c:choose>

							<a href="<%=basePath%>back/house/houseDelete?houseId=${house.id}" class="btn btn-danger btn-sm" role="button">删除</a>
						</td>
					</tr>
				</c:forEach>

				</tbody>
			</table>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-6 text-left">
			<span class="">共${houseBean.countNum}条 &nbsp; &nbsp; 共${houseBean.countPage}页  &nbsp; &nbsp; &nbsp;当前${houseBean.localPage}页 &nbsp; &nbsp; &nbsp;</span>
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
