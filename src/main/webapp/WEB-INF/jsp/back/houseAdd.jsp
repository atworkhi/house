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
	<title>用户添加</title>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<link rel="stylesheet" href="<%=basePath%>dist/css/bootstrap.min.css" />
	<script type="text/javascript"
			src="<%=basePath%>js/jquery1-11-3.min.js"></script>
	<script type="text/javascript"
			src="<%=basePath%>dist/js/bootstrap.min.js"></script>


	<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"8123",secure:"8124"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-0" data-genuitec-path="/lastHouse/WebRoot/WEB-INF/jsp/back/houseAdd.jsp">

<div class="breadcrumbs" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-0" data-genuitec-path="/lastHouse/WebRoot/WEB-INF/jsp/back/houseAdd.jsp">
	<ul class="breadcrumb">
		<li>
			<a href="<%=basePath%>back/house/list">楼盘信息管理</a>
		</li>
		<li class="active">
			楼盘信息添加
		</li>
	</ul>
</div>
<div class="container">
	<form id="f_form" method="post"
		  action="<%=basePath%>back/house/houseAdd"
		  enctype="multipart/form-data">

		<div class="form-group">
			<label class="control-label">
				楼盘名称：
			</label>
			<input type="text" class="form-control" name="name">
		</div>
		<div class="form-group">
			<label  class="control-label">
				楼盘价位：
			</label>
			<input type="text" class="form-control" name="price">
		</div>
		<div class="form-group ">
			<label  class="control-label ">
				楼盘标签(多个标签使用“|”分开)：
			</label>
			<input type="text" class="form-control" name="labels">
		</div>
		<div class="form-group ">
			<label  class="control-label ">
				户型：
			</label>

			<input type="text" class="form-control" name="homeType">
		</div>
		<div class="form-group ">
			<label class="control-label ">
				楼盘地址：
			</label>

			<input type="text" class="form-control" name="houseAddress">
		</div>
		<div class="form-group ">
			<label  class="control-label ">
				占地面积：
			</label>

			<input type="text" class="form-control" name="area">
		</div>
		<div class="form-group ">
			<label  class="control-label ">
				绿化率：
			</label>

			<input type="text" class="form-control" name="green">
		</div>
		<div class="form-group ">
			<label  class="control-label ">
				车位数：
			</label>

			<input type="text" class="form-control" name="parkNum">
		</div>
		<div class="form-group ">
			<label  class="control-label ">
				产权年限：
			</label>

			<input type="text" class="form-control" name="years">
		</div>
		<div class="form-group ">
			<label  class="control-label ">
				售楼处地址：
			</label>

			<input type="text" class="form-control" name="saleAddress">
		</div>
		<div class="form-group ">
			<label class="control-label ">
				建筑面积：
			</label>

			<input type="text" class="form-control" name="areaCovered">
		</div>
		<div class="form-group ">
			<label  class="control-label ">
				容积率：
			</label>

			<input type="text" class="form-control" name="plotRatio">
		</div>
		<div class="form-group ">
			<label  class="control-label ">
				规划户数：
			</label>

			<input type="text" class="form-control" name="houses">
		</div>
		<div class="form-group">
			<label  class="control-label ">
				装修情况：
			</label>

			<input type="text" class="form-control" name="decoration">
		</div>
		<div class="form-group ">
			<label  class="control-label ">
				物业公司：
			</label>
			<input type="text" class="form-control" name="property">
		</div>
		<div class="form-group ">
			<label  class="control-label ">
				联系电话：
			</label>

			<input type="text" class="form-control" name="phone">
		</div>
		<div class="form-group ">
			<label  class="control-label ">
				楼盘位置：
			</label>
			<select class="form-control" name="houseType">
				<option value="1">
					北京房产
				</option>
				<option value="2">
					南京房产
				</option>
				<option value="3">
					北海房产
				</option>
				<option value="4">
					海南房产
				</option>

			</select>
		</div>
		<div class="form-group">
			<label  class="control-label ">
				优惠活动：
			</label>
			<textarea class="form-control" name="discount"></textarea>
		</div>
		<div class="form-group">
			<label  class="control-label ">
				推荐理由：
			</label>
			<textarea class="form-control" name="description" rows="3"></textarea>
		</div>
		<div class="form-group ">
			<label for="exampleInputFile" class="control-label">
				楼盘缩略图
			</label>
			<input type="file" id="exampleInputFile" name="file1">
			<p class="help-block">
				用于楼盘信息详情页面缩略图显示
			</p>
		</div>
		<div class="form-group">
			<label for="exampleInputFile2" class="control-label">
				楼盘详情图
			</label>
			<input type="file" id="exampleInputFile2" multiple="multiple"
				   name="file2">
			<p class="help-block">
				用于楼盘详细信息显示（多选）
			</p>
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
	</form>
</div>
</body>
</html>
