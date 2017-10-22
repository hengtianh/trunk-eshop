<%@ page contentType="text/html;charset=utf-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Amaze UI Admin index Examples</title>
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="${path}/assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="${path}/assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="${path}/assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="${path}/assets/css/admin.css">
    <link rel="stylesheet" href="${path}/assets/css/app.css">
    <script src="${path}/assets/js/echarts.min.js"></script>
</head>

<body data-type="generalComponents">


<jsp:include page="head.jsp"></jsp:include>



<div class="tpl-page-container tpl-page-header-fixed">

    <jsp:include page="menu.jsp"></jsp:include>

    <div class="tpl-content-wrapper">
        <div class="tpl-content-page-title">
            Amaze UI 文字列表
        </div>
        <ol class="am-breadcrumb">
            <li><a href="#" class="am-icon-home">首页</a></li>
            <li><a href="#">Amaze UI CSS</a></li>
            <li class="am-active">文字列表</li>
        </ol>
        <div class="tpl-portlet-components">
            <div class="portlet-title">
                <div class="caption font-green bold">
                    <span class="am-icon-code"></span> 列表
                </div>
                <div class="tpl-portlet-input tpl-fz-ml">
                    <div class="portlet-input input-small input-inline">
                        <div class="input-icon right">
                            <i class="am-icon-search"></i>
                            <input type="text" class="form-control form-control-solid" placeholder="搜索..."> </div>
                    </div>
                </div>


            </div>
            <div class="tpl-block">
                <div class="am-g">
                    <div class="am-u-sm-12 am-u-md-6">
                        <div class="am-btn-toolbar">
                            <div class="am-btn-group am-btn-group-xs">
                                <button id="saveBtn" type="button" class="am-btn am-btn-default am-btn-secondary"><span class="am-icon-save"></span> 保存</button>
                                <button type="button" class="am-btn am-btn-default am-btn-warning"><span class="am-icon-archive"></span> 审核</button>
                            </div>
                        </div>
                    </div>
                    <div class="am-u-sm-12 am-u-md-3">
                        <div class="am-form-group">
                            <select data-am-selected="{btnSize: 'sm'}">
                                <option value="option1">所有类别</option>
                                <option value="option2">IT业界</option>
                                <option value="option3">数码产品</option>
                                <option value="option3">笔记本电脑</option>
                                <option value="option3">平板电脑</option>
                                <option value="option3">只能手机</option>
                                <option value="option3">超极本</option>
                            </select>
                        </div>
                    </div>
                    <div class="am-u-sm-12 am-u-md-3">
                        <div class="am-input-group am-input-group-sm">
                            <input type="text" class="am-form-field">
                            <span class="am-input-group-btn">
            <button class="am-btn  am-btn-default am-btn-success tpl-am-btn-success am-icon-search" type="button"></button>
                                </span>
                        </div>
                    </div>
                </div>

                <!--edit开始-->
                <div id="edit" class="am-g">
                    <div class="am-u-sm-12">
                        <form class="am-form" id="editCategoryForm" action="${path}/category/updateCategory.do" method="post">

                            <table class="am-table am-table-striped am-table-hover table-main">
                                <thead>
                                <tr>
                                    <!--<th class="table-check"><input type="checkbox" class="tpl-table-fz-check"></th>
                                    <th class="table-id">ID</th>-->
                                    <th class="table-title">ID</th>
                                    <th class="table-title">描述</th>
                                    <th class="table-type">类型</th>
                                    <th class="table-type">类别</th>
                                    <th class="table-author am-hide-sm-only">作者</th>
                                    <th class="table-date am-hide-sm-only">修改日期</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <!--<td><input type="checkbox"></td>-->
                                    <td style=""><input name="cId" value="${category.cId}" readonly="readonly"></td>
                                    <td><input name="cDesc" value="${category.cDesc}"></td>
                                    <td>
                                        <input name="tId" value="${category.tId}" readonly="readonly">
                                    </td>
                                    <td><input name="cName" value="${category.cName}" required="required"></td>
                                    <td class="am-hide-sm-only">哈哈</td>
                                    <td class="am-hide-sm-only">2014年9月4日 7:28:47</td>
                                </tr>
                                </tbody>
                            </table>

                        </form>
                    </div>
                </div>
                <!--edit结束-->
            </div>
            <div class="tpl-alert"></div>
        </div>










    </div>

</div>


<script src="${path}/assets/js/jquery.min.js"></script>
<script src="${path}/assets/js/amazeui.min.js"></script>
<script src="${path}/assets/js/app.js"></script>

<script>
    $('#saveBtn').click(
        function () {
            $('#editCategoryForm').submit();
        }
    );


</script>
</body>

</html>