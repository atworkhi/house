<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
    <title>看房专员-北京新房</title>
    <link href="<%=basePath%>dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="<%=basePath%>css/carousel.css" rel="stylesheet" />
    <link href="<%=basePath%>css/main.css" rel="stylesheet" />
    <script type="text/javascript" src="<%=basePath%>js/jquery1-11-3.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>dist/js/bootstrap.min.js"></script>

    <script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"8123",secure:"8124"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>

<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-13" data-genuitec-path="/lastHouse/WebRoot/WEB-INF/jsp/top/hainna.jsp">



<div class="main-header" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-13" data-genuitec-path="/lastHouse/WebRoot/WEB-INF/jsp/top/hainna.jsp">

    <div class="container">
        <div style="float: right;line-height: 50px;vertical-align: middle;">
            <a href="<%=basePath%>index" style="color: #FFF;text-decoration: none">返回首页</a>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-12" style="padding-top: 100px;padding-bottom: 100px">
                <img src="<%=basePath%>img/banner.jpg" class="hide">
            </div>
        </div>
    </div>
</div>


<nav class="navbar navbar-default" style="border-radius:0"
     role="navigation">
    <div class="container-fluid">
        <div style="text-align: center; margin-top: 10px; color: red; font-size: 20px">
            北京新房&nbsp;电话:4006781138
        </div>
    </div>
</nav>


<div class="container marketing">
    <div class="row">

        <c:choose>
            <c:when test="${pageBean.list!=null && fn:length(pageBean.list)>0}">
                <c:forEach items="${pageBean.list}" var="house">
                    <div class="col-sm-6 col-md-4 col-lg-3 ">
                        <div class="thumbnail">
                            <a href="<%=basePath%>bj-new/detail?id=${house.id}" target="_blank"><img style="height:180px;width:100%" src="<%=basePath%>${house.smallPhoto}"/></a>
                            <div class="caption">
                                <p class="name">
                                        ${house.name}
                                </p>
                                <p class="price"></p>
                                <p class="label">
                                    <c:if test="${house.labels != null}">
                                        <c:set value="${fn:split(house.labels,'|')}" var="labels"/>
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
    </div>
    <!-- /.row -->


    <nav>
        <ul class="pager">

            <c:if test="${pageBean.countPage!=null && pageBean.localPage!=null}">

                <c:if test="${pageBean.localPage!=1 && pageBean.localPage<=pageBean.countPage }">
                    <li class="previous"><a href="<%=basePath%>bj-new?page=${pageBean.localPage-1}">&larr; 上一页</a></li>
                </c:if>
                <c:if test="${pageBean.countPage > pageBean.localPage}">
                    <li class="next"><a href="<%=basePath%>bj-new?page=${pageBean.localPage+1}">下一页 &rarr;</a></li>
                </c:if>

            </c:if>

        </ul>
    </nav>
</div>
<!-- /.container -->




<hr class="featurette-divider">


<nav class="navbar navbar-default navbar-fixed-bottom"
     role="navigation">
    <div class="container-fluid">
        <form class="navbar-form" role="search" style="text-align: center">
            <a href="tel:010-58405889" class="btn btn-danger">一键通话</a>&nbsp;<a href="tel:4006781138" class="btn btn-danger">预约班车</a>
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
