<%--
  Created by IntelliJ IDEA.
  User: tianheng
  Date: 2017/5/18
  Time: 19:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<html>
<head>
    <title>menu</title>
</head>
<body data-type="generalComponents">
<div class="tpl-left-nav tpl-left-nav-hover">
    <div class="tpl-left-nav-title">
        Amaze UI 列表
    </div>
    <div class="tpl-left-nav-list">
        <ul class="tpl-left-nav-menu">
            <li class="tpl-left-nav-item">
                <a href="${path}/base/toIndex.do" class="nav-link active">
                    <i class="am-icon-home"></i>
                    <span>首页</span>
                </a>
            </li>
            <li class="tpl-left-nav-item">
                <a href="${path}/base/toChart.do" class="nav-link tpl-left-nav-link-list">
                    <i class="am-icon-bar-chart"></i>
                    <span>数据表</span>
                    <i class="tpl-left-nav-content tpl-badge-danger">
                        12
                    </i>
                </a>
            </li>

            <li class="tpl-left-nav-item">
                <!-- 打开状态 a 标签添加 active 即可   -->
                <a href="javascript:;" class="nav-link tpl-left-nav-link-list active">
                    <i class="am-icon-table"></i>
                    <span>表格</span>
                    <!-- 列表打开状态的i标签添加 tpl-left-nav-more-ico-rotate 图表即90°旋转  -->
                    <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right tpl-left-nav-more-ico-rotate"></i>
                </a>
                <ul class="tpl-left-nav-sub-menu" style="display:block">
                    <li>
                        <!-- 打开状态 a 标签添加 active 即可   -->
                        <a href="${path}/base/toCategoryManage.do" class="active">
                            <i class="am-icon-angle-right"></i>
                            <span>类别管理</span>
                            <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                        </a>

                        <a href="${path}/base/toProductManage.do">
                            <i class="am-icon-angle-right"></i>
                            <span>产品管理</span>
                            <i class="tpl-left-nav-content tpl-badge-success">
                                18
                            </i>

                            <a href="form-news.html">
                                <i class="am-icon-angle-right"></i>
                                <span>消息列表</span>
                                <i class="tpl-left-nav-content tpl-badge-primary">
                                    5
                                </i>

                                <a href="form-news-list.html">
                                    <i class="am-icon-angle-right"></i>
                                    <span>文字列表</span>

                                </a>
                    </li>
                </ul>
            </li>

            <li class="tpl-left-nav-item">
                <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                    <i class="am-icon-wpforms"></i>
                    <span>表单</span>
                    <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
                </a>
                <ul class="tpl-left-nav-sub-menu">
                    <li>
                        <a href="form-amazeui.html">
                            <i class="am-icon-angle-right"></i>
                            <span>Amaze UI 表单</span>
                            <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                        </a>

                        <a href="form-line.html">
                            <i class="am-icon-angle-right"></i>
                            <span>线条表单</span>
                        </a>
                    </li>
                </ul>
            </li>

            <li class="tpl-left-nav-item">
                <a href="toLogin.do" class="nav-link tpl-left-nav-link-list">
                    <i class="am-icon-key"></i>
                    <span>登录</span>

                </a>
            </li>
        </ul>
    </div>
</div>
</body>
</html>
