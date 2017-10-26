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
		<title>咨询更新</title>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<link rel="stylesheet" href="<%=basePath%>dist/css/bootstrap.min.css" />
		<link rel="stylesheet" href="<%=basePath%>ueditor/themes/default/css/ueditor.css"/>
		<script type="text/javascript" src="<%=basePath%>js/jquery1-11-3.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>dist/js/bootstrap.min.js"></script>
		<script type="text/javascript" charset="utf-8" src="<%=basePath%>ueditor/ueditor.config.js"></script>
	    <script type="text/javascript" charset="utf-8" src="<%=basePath%>ueditor/ueditor.all.min.js"> </script>
	    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
	    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
	    <script type="text/javascript" charset="utf-8" src="<%=basePath%>ueditor/lang/zh-cn/zh-cn.js"></script>
	    <script type="text/javascript" src="<%=basePath%>ueditor/ueditor.parse.js"></script>
		<script type="text/javascript">
		
		var editor = UE.getEditor('cont',{


		toolbars : [ [ //'anchor', //锚点
					'undo', //撤销
					'redo', //重做
					'bold', //加粗
					'indent', //首行缩进
					//'snapscreen', //截图
					'italic', //斜体
					'underline', //下划线
					'strikethrough', //删除线
					'subscript', //下标
					'fontborder', //字符边框
					'superscript', //上标
					'formatmatch', //格式刷
					'source', //源代码
					'blockquote', //引用
					'pasteplain', //纯文本粘贴模式
					'selectall', //全选
					'print', //打印
					'preview', //预览
					'horizontal', //分隔线
					'removeformat', //清除格式
					'time', //时间
					'date', //日期
					'unlink', //取消链接
					'insertrow', //前插入行
					'insertcol', //前插入列
					'mergeright', //右合并单元格
					'mergedown', //下合并单元格
					'deleterow', //删除行
					'deletecol', //删除列
					'splittorows', //拆分成行
					'splittocols', //拆分成列
					'splittocells', //完全拆分单元格
					'deletecaption', //删除表格标题
					'inserttitle', //插入标题
					'mergecells', //合并多个单元格
					'deletetable', //删除表格
					'cleardoc', //清空文档
					'insertparagraphbeforetable', //"表格前插入行"
				//	'insertcode', //代码语言
					'fontfamily', //字体
					'fontsize', //字号
					'paragraph', //段落格式
					'simpleupload', //单图上传
					'insertimage', //多图上传
					'edittable', //表格属性
					'edittd', //单元格属性
					'link', //超链接
					'emotion', //表情
					'spechars', //特殊字符
					'searchreplace', //查询替换
				//	'map', //Baidu地图
				//	'gmap', //Google地图
				//	'insertvideo', //视频
				//	'help', //帮助
					'justifyleft', //居左对齐
					'justifyright', //居右对齐
					'justifycenter', //居中对齐
					'justifyjustify', //两端对齐
					'forecolor', //字体颜色
					'backcolor', //背景色
					'insertorderedlist', //有序列表
					'insertunorderedlist', //无序列表
				//	'fullscreen', //全屏
					'directionalityltr', //从左向右输入
					'directionalityrtl', //从右向左输入
					'rowspacingtop', //段前距
					'rowspacingbottom', //段后距
					'pagebreak', //分页
			//		'insertframe', //插入Iframe
					'imagenone', //默认
					'imageleft', //左浮动
					'imageright', //右浮动
					'attachment', //附件
					'imagecenter', //居中
					'wordimage', //图片转存
					'lineheight', //行间距
					'edittip ', //编辑提示
					'customstyle', //自定义标题
					'autotypeset', //自动排版
				//	'webapp', //百度应用
					'touppercase', //字母大写
					'tolowercase', //字母小写
					'background', //背景
					'template', //模板
					'scrawl', //涂鸦
				//	'music', //音乐
					'inserttable', //插入表格
					'drafts', // 从草稿箱加载
					'charts' // 图表
			] ]

		});
</script>
	<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"8123",secure:"8124"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
	<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-5" data-genuitec-path="/lastHouse/WebRoot/WEB-INF/jsp/back/newsEdit.jsp">
		<div class="breadcrumbs" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-5" data-genuitec-path="/lastHouse/WebRoot/WEB-INF/jsp/back/newsEdit.jsp">
			<ul class="breadcrumb">
				<li>
					<a href="<%=basePath%>back/news/list">资讯信息管理</a>
				</li>
				<li class="active">
					资讯信息更新
				</li>
			</ul>
		</div>
		<div class="container">
			 <form action="<%=basePath%>back/news/update" method="post">
			 	 <div class="form-group">
    				<label for="exampleInputEmail1">资讯标题</label>
    				<input  class="form-control" id="exampleInputEmail1" name="title" value="${news.title}">
 				 </div>
 				 <div class="form-group">
    				<label for="exampleInputEmail1">资讯提要</label>
    				<textarea  class="form-control" name="about">${news.about}</textarea>
 				 </div>
			 	 <label>资讯内容：</label><br/>
			     <textarea id="cont" name="contents" style="min-height: 700px">${news.contents}</textarea>
			     <br/>
			     <input type="hidden" name="id" value="${news.id}"/>
			     <button class="btn btn-primary" type="submit">提交</button>
			 </form>
		</div>
	</body>
</html>
