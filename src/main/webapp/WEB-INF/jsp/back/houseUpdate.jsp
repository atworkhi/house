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
<html>
<head>
	<title>楼盘信息修改</title>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<link rel="stylesheet" href="<%=basePath%>dist/css/bootstrap.min.css" />
	<script type="text/javascript" src="<%=basePath%>js/jquery1-11-3.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>dist/js/bootstrap.min.js"></script>


	<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"8123",secure:"8124"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-2" data-genuitec-path="/lastHouse/WebRoot/WEB-INF/jsp/back/houseUpdate.jsp">

<div class="breadcrumbs" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-2" data-genuitec-path="/lastHouse/WebRoot/WEB-INF/jsp/back/houseUpdate.jsp">
	<ul class="breadcrumb">
		<li>
			<a href="<%=basePath%>back/house/list">楼盘信息管理</a>
		</li>
		<li class="active">
			楼盘信息修改
		</li>
	</ul>
</div>
<div class="container">
	<form id="f_form" method="post" action="<%=basePath%>back/house/houseUpdate">
		<div class="form-group">
			<label  class="control-label">
				楼盘名称：
			</label>
			<input type="text" class="form-control" name="name" value="${house.name}">
		</div>
		<div class="form-group">
			<label  class="control-label">
				楼盘价位：
			</label>
			<input type="text" class="form-control" name="price" value="${house.price}">
		</div>
		<div class="form-group ">
			<label  class="control-label ">
				楼盘标签(多个标签使用“|”分开)：
			</label>
			<input type="text" class="form-control" name="labels" value="${house.labels}">
		</div>
		<div class="form-group ">
			<label  class="control-label ">
				户型：
			</label>

			<input type="text" class="form-control" name="homeType" value="${house.homeType}">
		</div>
		<div class="form-group ">
			<label  class="control-label ">
				楼盘地址：
			</label>

			<input type="text" class="form-control" name="houseAddress" value="${house.houseAddress}">
		</div>
		<div class="form-group ">
			<label class="control-label ">
				占地面积：
			</label>

			<input type="text" class="form-control" name="area" value="${house.area}">
		</div>
		<div class="form-group ">
			<label class="control-label ">
				绿化率：
			</label>

			<input type="text" class="form-control" name="green" value="${house.green}">
		</div>
		<div class="form-group ">
			<label  class="control-label ">
				车位数：
			</label>

			<input type="text" class="form-control" name="parkNum" value="${house.parkNum}">
		</div>
		<div class="form-group ">
			<label  class="control-label ">
				产权年限：
			</label>

			<input type="text" class="form-control" name="years" value="${house.years}">
		</div>
		<div class="form-group ">
			<label  class="control-label ">
				售楼处地址：
			</label>

			<input type="text" class="form-control" name="saleAddress" value="${house.saleAddress}">
		</div>
		<div class="form-group ">
			<label class="control-label ">
				建筑面积：
			</label>

			<input type="text" class="form-control" name="areaCovered" value="${house.areaCovered}">
		</div>
		<div class="form-group ">
			<label  class="control-label ">
				容积率：
			</label>

			<input type="text" class="form-control" name="plotRatio" value="${house.plotRatio}">
		</div>
		<div class="form-group ">
			<label  class="control-label ">
				规划户数：
			</label>

			<input type="text" class="form-control" name="houses" value="${house.houses}">
		</div>
		<div class="form-group">
			<label class="control-label ">
				装修情况：
			</label>

			<input type="text" class="form-control" name="decoration" value="${house.decoration}">
		</div>
		<div class="form-group ">
			<label  class="control-label ">
				物业公司：
			</label>
			<input type="text" class="form-control" name="property" value="${house.property}">
		</div>
		<div class="form-group ">
			<label  class="control-label ">
				联系电话：
			</label>

			<input type="text" class="form-control" name="phone" value="${house.phone}">
		</div>
		<div class="form-group ">
			<label  class="control-label ">
				楼盘位置：
			</label>
			<select class="form-control" name="houseType">
				<option value="1" <c:if test="${houseType==1}">selected</c:if>>
					北京房产
				</option>
				<option value="2" <c:if test="${houseType==2}">selected</c:if>>
					南京房产
				</option>
				<option value="3" <c:if test="${houseType==3}">selected</c:if>>
					北海房产
				</option>
				<option value="4" <c:if test="${houseType==4}">selected</c:if>>
					海南房产
				</option>
			</select>
		</div>
		<div class="form-group">
			<label class="control-label ">
				优惠活动：
			</label>
			<textarea class="form-control" name="discount">${house.discount}</textarea>
		</div>
		<div class="form-group">
			<label  class="control-label ">
				推荐理由：
			</label>
			<textarea class="form-control" name="description" rows="3">${house.description}</textarea>
		</div>
		<div>
			<div class="col-md-3 col-md-offset-3">
				<button class="btn btn-info" type="submit">
					<i class="icon-ok bigger-110"></i> 提交
				</button>
			</div>
			<div class="col-md-6">
				<button class="btn" type="button"
						onclick="javascrtpt:window.location.href='<%=basePath%>back/house/list'">
					<i class="icon-undo bigger-110"></i> 返回
				</button>
			</div>
		</div>
		<input name="id" value="${house.id}" type="hidden"/>
	</form>
</div>
</body>
</html>
