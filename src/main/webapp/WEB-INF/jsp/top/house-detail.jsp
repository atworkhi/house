<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
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
    <title>看房专员-房屋详情</title>
    <link href="<%=basePath%>dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=basePath%>css/carousel.css" rel="stylesheet">
    <link href="<%=basePath%>css/main.css" rel="stylesheet">

    <!-- <link href="<%=basePath%>css/houses-details.css" rel="stylesheet">-->
    <link href="<%=basePath%>css/houses-details.css" rel="stylesheet">
    <script type="text/javascript" src="<%=basePath%>js/jquery1-11-3.min.js"></script>
    <script type="text/javascript"
            src="<%=basePath%>dist/js/bootstrap.min.js"></script>


    <script type="text/javascript">
        function saveTel() {
            var p = $("#linkphone").val();
            var phone = /^((\(\d{2,3}\))|(\d{3}\-))?(\(0\d{2,3}\)|0\d{2,3}-)?[1-9]\d{6,7}(\-\d{1,4})?$/;
            var mobile = /^((\(\d{2,3}\))|(\d{3}\-))?13\d{9}$/;
            if (p.length == 0) {
                alert("电话不能为空！");
                return;
            }
            if (phone.test(p) || mobile.test(p)) {

            } else {
                alert("请输入正确的电话！");
                return;
            }
        }
    </script>


    <script>"undefined" == typeof CODE_LIVE && (!function (e) {
        var t = {nonSecure: "8123", secure: "8124"}, c = {nonSecure: "http://", secure: "https://"},
            r = {nonSecure: "127.0.0.1", secure: "gapdebug.local.genuitec.com"},
            n = "https:" === window.location.protocol ? "secure" : "nonSecure";
        script = e.createElement("script"), script.type = "text/javascript", script.async = !0, script.src = c[n] + r[n] + ":" + t[n] + "/codelive-assets/bundle.js", e.getElementsByTagName("head")[0].appendChild(script)
    }(document), CODE_LIVE = !0);</script>
</head>

<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-15"
      data-genuitec-path="/lastHouse/WebRoot/WEB-INF/jsp/top/house-detail.jsp">

<div class="main-header" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-19"
     data-genuitec-path="/lastHouse/WebRoot/WEB-INF/jsp/top/newsDetail.jsp">

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
        <div
                style="text-align: center; margin-top: 10px; color: red; font-size: 20px">
            楼盘详细信息&nbsp;电话:4006781138
        </div>
    </div>
</nav>
<div class="main-detail">
    <div class="container">
        <div class="row">
            <div class="col-md-6" style="padding-left: 0px;padding-right: 0px">
                <img src="<%=basePath%>${house.smallPhoto}" class="img-responsive"
                     alt="图片不见了">
            </div>
            <div class="col-md-6" style="padding-right: 0px">
                <div class="detail-header">
                    <p class="detail_name"
                       style="color: blue;font-family:黑体;font-size: 30px">${house.name}</p>
                    <p class="detail_label">
                        <c:if test="${house.labels != null}">
                            <c:set value="${fn:split(house.labels,'|')}" var="labels"/>
                            <c:forEach items="${labels}" var="label">
                                <span class="label label-success">${label}</span>
                            </c:forEach>
                        </c:if>
                    </p>
                </div>
                <div class="detail_phone" style="font-size: 20px;padding-top: 10px">
                    <p>
                        <strong>价钱：</strong>${house.price}
                </div>
                <div class="detail_type" style="font-size: 20px;">
                    <p>
                        <strong>主力户型：</strong>${house.homeType}</p>
                </div>
                <div class="detail_address" style="font-size: 20px;">
                    <p>
                        <strong>楼盘地址：</strong>${house.houseAddress}</p>
                </div>
                <div class="detail_phone" style="font-size: 20px">
                    <p>
                        <strong>联系电话：</strong>${house.phone}</p>
                </div>
                <c:if test="${house.discount!=null}">
                    <div class="alert alert-danger" role="alert">
                        <strong>${house.discount}</strong>
                    </div>
                </c:if>
            </div>
        </div>
    </div>
</div>

<div class="container house-info">
    <div class="row">
        <div class="col-md-12">
            <div class="page-header header-style">
                <h3>楼盘详情</h3>
            </div>
        </div>
    </div>
    <div class="row house-info-style">
        <div class="col-md-6">
            <p>
                <strong>楼盘地址：</strong>${house.houseAddress}</p>

            <p>
                <strong>占地面积：</strong>${house.area}</p>

            <p>
                <strong>绿化率：</strong>${house.green}</p>

            <p>
                <strong>车位数：</strong>${house.parkNum}</p>

            <p>
                <strong>产权年限：</strong>${house.years}</p>

            <p>
                <strong>容积率：</strong>${house.plotRatio}</p>
        </div>
        <div class="col-md-6">
            <p>
                <strong>售楼处地址：</strong>${house.saleAddress}</p>

            <p>
                <strong>联系电话：</strong>${house.phone}</p>

            <p>
                <strong>建筑面积：</strong>${house.areaCovered}</p>

            <p>
                <strong>规划户数：</strong>${house.houses}</p>

            <p>
                <strong>装修情况：</strong>${house.decoration}</p>

            <p>
                <strong>物业公司：</strong>${house.property}</p>
        </div>
    </div>
    <div class="row house-info-style">
        <div class="col-md-12">
            <div class="page-header header-style">
                <h3>楼盘推荐理由</h3>
            </div>
        </div>
    </div>
    <div class="row house-info-style">
        <div class="col-md-12" style="min-height: 100px">
            ${house.description}</div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-md-12 house_image">
            <picture><c:if test="${house.detailPhoto!=null}">
                <c:set value="${fn:split(house.detailPhoto,',')}"
                       var="detailsPhotos"/>
                <c:forEach items="${detailsPhotos}" var="dPhoto">
                    <p>
                        <img class="img-responsive" src="<%=basePath%>${dPhoto}"
                             style="width: 100%">
                    </p>
                </c:forEach>
            </c:if></picture>
        </div>
    </div>

    <nav>
        <ul class="pager">

            <c:if test="${pageBean.countPage!=null && pageBean.localPage!=null}">

                <c:if
                        test="${pageBean.localPage!=1 && pageBean.localPage<pageBean.countPage }">
                    <li class="previous"><a
                            href="<%=basePath%>bj-new?page=${pageBean.localPage-1}">&larr;
                        上一页</a></li>
                </c:if>
                <c:if test="${pageBean.countPage > pageBean.localPage}">
                    <li class="next"><a
                            href="<%=basePath%>bj-new?page=${pageBean.localPage+1}">下一页
                        &rarr;</a></li>
                </c:if>

            </c:if>

        </ul>
    </nav>


    <div class="page-header" style="border-bottom: 1px solid #131212;color: red">
        <h1>同城精品在售楼盘推荐</h1>
    </div>

    <div class="container marketing">
        <c:choose>
            <c:when test="${tuijianList==null && fn:length(tuijianList)==0}">
                <div class="text-center">
                    <h3>此楼盘附近没有可推荐楼盘!</h3>
                </div>
            </c:when>
            <c:otherwise>
                <c:if test="${fn:length(tuijianList)==1 && tuijianList.get(0).id==house.id}">
                    <div class="text-center">
                        <h3>此楼为推荐楼盘，同城并无其他推荐楼盘!</h3>
                    </div>
                </c:if>
                <c:if test="${fn:length(tuijianList)==1 && tuijianList.get(0).id!=house.id}">
                    <div class="col-sm-6 col-md-3 col-lg-4">
                        <div class="thumbnail">
                            <a href="<%=basePath%>best/detail?id=${tuijianList.get(0).id}" target="_blank">
                                <img src="<%=basePath%>${tuijianList.get(0).smallPhoto}"
                                     style="height:180px;width:100%"></a>
                            <div class="caption">
                                <p class="name">
                                        ${tuijianList.get(0).name}
                                </p>
                                <p class="price">
                                        ${tuijianList.get(0).price}
                                </p>
                                <p class="label">
                                    <c:if test="${tuijianList.get(0).labels != null}">
                                        <c:set value="${fn:split(tuijianList.get(0).labels,'|')}" var="labels"/>
                                        <c:forEach items="${labels}" var="label">
                                            <span class="label label-success">${label}</span>
                                        </c:forEach>
                                    </c:if>
                                </p>
                            </div>
                        </div>
                    </div>
                </c:if>
                <c:if test="${fn:length(tuijianList)>1}">
                    <c:forEach items="${tuijianList}" var="tuijian">
                    <c:if test="${tuijian.id != house.id}">
                        <div class="col-sm-6 col-md-3 col-lg-4">
                            <div class="thumbnail">
                                <a href="<%=basePath%>best/detail?id=${tuijian.id}" target="_blank">
                                    <img src="<%=basePath%>${tuijian.smallPhoto}"
                                         style="height:180px;width:100%"></a>
                                <div class="caption">
                                    <p class="name">
                                            ${tuijian.name}
                                    </p>
                                    <p class="price">
                                            ${tuijian.price}
                                    </p>
                                    <p class="label">
                                        <c:if test="${tuijian.labels != null}">
                                            <c:set value="${fn:split(tuijian.labels,'|')}" var="labels"/>
                                            <c:forEach items="${labels}" var="label">
                                                <span class="label label-success">${label}</span>
                                            </c:forEach>
                                        </c:if>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </c:if>
                </c:forEach>
                </c:if>
            </c:otherwise>
        </c:choose>
        <!-- /END THE FEATURETTES -->


        <!-- FOOTER -->


    </div>


    <div class="container">
        <div class="page-header" style="border-bottom: 1px solid #131212;">

        </div>
        <div class="container-fluid">
            <div
                    style="text-align: center; margin-top: 10px; color: red; font-size: 30px">
                详情请致电 售楼热线 4006781138
            </div>
        </div>

        <hr class="featurette-divider">

        <nav class="navbar navbar-default navbar-fixed-bottom" role="navigation">
            <div class="container-fluid">
                <form class="navbar-form" role="search" style="text-align: center">
                    <a href="tel:4006781138" class="btn btn-danger">咨询热线</a>&nbsp;<a
                        href="tel:4006781138" class="btn btn-danger">预约班车
                </a>
                </form>
            </div>
        </nav>
        <script>
            var _hmt = _hmt || [];
            (function () {
                var hm = document.createElement("script");
                hm.src = "https://hm.baidu.com/hm.js?ceaf5c37f80fb245277a554817609bcf";
                var s = document.getElementsByTagName("script")[0];
                s.parentNode.insertBefore(hm, s);
            })();
        </script>
    </div>
</div>
</body>

</html>
