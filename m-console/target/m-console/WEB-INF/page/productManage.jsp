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
                    <form id="queryForm" name="" action="${path}/base/toProductManage.do" method="post">
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
                                    <a href="${path}/base/toAddProduct.do" class="am-btn am-btn-default am-btn-success"><span class="am-icon-plus"></span> 新增</a>
                                    <button type="button" class="am-btn am-btn-default am-btn-warning"><span class="am-icon-archive"></span> 审核</button>
                                    <%--<button type="button" class="am-btn am-btn-default am-btn-secondary"><span class="am-icon-save"></span> 保存</button>
                                    <button type="button" class="am-btn am-btn-default am-btn-danger"><span class="am-icon-trash-o"></span> 删除</button>--%>
                                </div>
                            </div>
                        </div>
                        <div class="am-u-sm-12 am-u-md-3">
                            <div class="am-form-group">
                                <select id="categorySelect" name="cId" data-am-selected="{btnSize: 'sm'}">
                                    <option value="">所有类别</option>
                                    <c:forEach var="category" items="${categoryList}">
                                        <option value="${category.cId}" <c:if test="${qc.cId == category.cId}">selected</c:if> >${category.cName}</option>
                                    </c:forEach>
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
                    <div class="am-g">


                        <div class="tpl-table-images">

                            <c:if test="${productList.size() >= 1}">
                            <c:forEach var="pl" items="${productList}">
                                <div class="am-u-sm-12 am-u-md-6 am-u-lg-4">
                                    <div class="tpl-table-images-content">
                                        <div class="tpl-table-images-content-i-time">发布时间：2016-09-12</div>
                                        <div class="tpl-i-title" style="height: 54px;">
                                            ${pl.pName}
                                        </div>
                                        <a href="javascript:;" class="tpl-table-images-content-i">
                                            <div class="tpl-table-images-content-i-info">
                                            <span class="ico">
                                    <img src="${path}/assets/img/user02.png" alt="">${pl.pCount}
                                 </span>

                                            </div>
                                            <span class="tpl-table-images-content-i-shadow"></span>
                                            <img src="${applicationScope.fileSrc}${pl.pImg}" height="141.11" alt="">
                                        </a>
                                        <div class="tpl-table-images-content-block">
                                            <div class="tpl-i-font" style="height: 42px;">
                                                ${pl.pDesc}
                                            </div>
                                            <div class="tpl-i-more">
                                                <ul>
                                                    <li><span class="am-icon-cny am-text-warning"> ${pl.pPrice}</span></li>
                                                    <li><span class="am-icon-industry am-text-success"> ${pl.num}</span></li>
                                                    <li><span class="am-icon-shopping-cart font-green"> ${pl.saled}</span></li>
                                                </ul>
                                            </div>
                                            <div class="am-btn-toolbar">
                                                <div class="am-btn-group am-btn-group-xs tpl-edit-content-btn">
                                                        <%--<button type="button" class="am-btn am-btn-default am-btn-success"><span class="am-icon-plus"></span> 新增</button>--%>
                                                    <a href="${path}/product/editProduct.do?pId=${pl.pId}" class="am-btn am-btn-default am-btn-secondary"><span class="am-icon-edit"></span> 编辑</a>
                                                    <button type="button" class="am-btn am-btn-default am-btn-warning"><span class="am-icon-archive"></span> 审核</button>
                                                    <a href="${path}/product/deleteProduct.do?pId=${pl.pId}" class="am-btn am-btn-default am-btn-danger"><span class="am-icon-trash-o"></span> 删除</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>

                            <div class="am-u-lg-12">
                                <div class="am-cf">

                                    <div class="am-fr">
                                        <input type="hidden" id="currentPage" name="currentPage" value="${qc.currentPage}">

                                        <ul class="am-pagination tpl-pagination">
                                            <li class="<c:if test="${qc.currentPage == 1}">am-disabled</c:if>"><a id="previous" href="#">«</a></li>

                                            <c:if test="${page.totalPage <= 5}">
                                                <c:forEach var="p" begin="1" end="${page.totalPage}" step="1">
                                                    <li class="<c:if test="${qc.currentPage == p}">am-active</c:if>"><a onclick="formSubmit(${p})" href="#">${p}</a></li>
                                                </c:forEach>
                                            </c:if>
                                            <c:if test="${page.totalPage > 5 and (page.currentPage-2) <= 0}">
                                                <c:forEach var="p" begin="1" end="5" step="1">
                                                    <li class="<c:if test="${qc.currentPage == p}">am-active</c:if>"><a onclick="formSubmit(${p})" href="#">${p}</a></li>
                                                </c:forEach>
                                            </c:if>
                                            <c:if test="${page.totalPage > 5 and (page.currentPage+2) >= page.totalPage}">
                                                <c:forEach var="p" begin="${page.totalPage - 4}" end="${page.totalPage}" step="1">
                                                    <li class="<c:if test="${qc.currentPage == p}">am-active</c:if>"><a onclick="formSubmit(${p})" href="#">${p}</a></li>
                                                </c:forEach>
                                            </c:if>
                                            <c:if test="${page.totalPage > 5 and (page.currentPage-2) > 0 and (page.currentPage + 2) < page.totalPage}">
                                                <c:forEach var="p" begin="${qc.currentPage - 2}" end="${page.currentPage + 2}" step="1">
                                                    <li class="<c:if test="${qc.currentPage == p}">am-active</c:if>"><a onclick="formSubmit(${p})" href="#">${p}</a></li>
                                                </c:forEach>
                                            </c:if>

                                            <li class="<c:if test="${qc.currentPage == page.totalPage}">am-disabled</c:if>"><a id="next" href="#">»</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <hr>
                            </div>
                            </c:if>
                            <c:if test="${productList.size() < 1}">
                                没有相关产品！
                            <div style="height: 568.48px">
                            </div>
                            </c:if>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="tpl-alert"></div>
            </div>
        </div>

    </div>


    <script src="${path}/assets/js/jquery.min.js"></script>
    <script src="${path}/assets/js/amazeui.min.js"></script>
    <script src="${path}/assets/js/app.js"></script>

    <script>
        function formSubmit(currentPage) {
            $('#currentPage').val(currentPage);
            $('#queryForm').submit();
        }
        $(function () {
            $('#categorySelect').change(function () {
                $('#queryForm').submit();
            });

            $('#next').click(function () {
                var currentPage = parseInt($('#currentPage').val());
                currentPage++;
                $('#currentPage').val(currentPage);
                $('#queryForm').submit();
            });

            $('#previous').click(function () {
                var currentPage = parseInt($('#currentPage').val());
                currentPage--;
                $('#currentPage').val(currentPage);
                $('#queryForm').submit();
            });

            $('#page').click(function () {
                var currentPage = parseInt($('#currentPage').val());
                //currentPage--;
                $('#currentPage').val(currentPage);
                $('#queryForm').submit();
            });
        })
    </script>
</body>

</html>