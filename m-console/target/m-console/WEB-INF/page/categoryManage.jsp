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
                                <button id="addBtn" type="button" class="am-btn am-btn-default am-btn-success"><span class="am-icon-plus"></span> 新增</button>
                                <button id="saveBtn" type="button" style="display: none;" class="am-btn am-btn-default am-btn-secondary"><span class="am-icon-save"></span> 保存</button>
                                <button type="button" class="am-btn am-btn-default am-btn-warning"><span class="am-icon-archive"></span> 审核</button>
                                <button id="delBtn" type="button" class="am-btn am-btn-default am-btn-danger"><span class="am-icon-trash-o"></span> 删除</button>
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
                <div id="data" class="am-g">
                    <div class="am-u-sm-12">
                        <form class="am-form" id="deleteCategoryForm" action="${path}/category/deleteCategory.do" method="post">
                            <table class="am-table am-table-striped am-table-hover table-main">
                                <thead>
                                <tr>
                                    <th class="table-check"><input id="cIds" onclick="checkAll(this,'cIds')" type="checkbox" class="tpl-table-fz-check"></th>
                                    <th class="table-id">ID</th>
                                    <th class="table-title">描述</th>
                                    <th class="table-type">类型</th>
                                    <th class="table-type">类别</th>
                                    <th class="table-author am-hide-sm-only">作者</th>
                                    <th class="table-date am-hide-sm-only">修改日期</th>
                                    <th class="table-set">操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="cg" items="${categoryList}">
                                    <tr>
                                        <td><input id="${cg.cId}" onclick="checkItem(this,'cIds')" type="checkbox" name="cIds" value="${cg.cId}"></td>
                                        <td>${cg.cId}</td>
                                        <td>${cg.cDesc}</td>
                                        <td>${cg.tId}</td>
                                        <td>${cg.cName}</td>
                                        <td class="am-hide-sm-only">测试1号</td>
                                        <td class="am-hide-sm-only">2014年9月4日 7:28:47</td>
                                        <td>
                                            <div class="am-btn-toolbar">
                                                <div class="am-btn-group am-btn-group-xs">
                                                    <a href="${path}/category/editCategory.do?cId=${cg.cId}" class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</a>
                                                    <button class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-copy"></span> 复制</button>
                                                    <button onclick="delItem(${cg.cId});" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</button>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                            <div class="am-cf">

                                <div class="am-fr">
                                    <ul class="am-pagination tpl-pagination">
                                        <li class="am-disabled"><a href="#">«</a></li>
                                        <li class="am-active"><a href="#">1</a></li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#">5</a></li>
                                        <li><a href="#">»</a></li>
                                    </ul>
                                </div>
                            </div>
                            <hr>

                        </form>
                    </div>
                </div>
                <!--add开始-->
                <div id="source" style="display: none;" class="am-g">
                    <div class="am-u-sm-12">
                        <form class="am-form" id="addCategoryForm" action="${path}/category/saveCategory.do" method="post">

                            <table class="am-table am-table-striped am-table-hover table-main">
                                <thead>
                                <tr>
                                    <!--<th class="table-check"><input type="checkbox" class="tpl-table-fz-check"></th>
                                    <th class="table-id">ID</th>-->
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
                                    <!--<td style="">1</td>-->
                                    <td><input name="cDesc"></td>
                                    <td>
                                        <select name="tId" data-am-selected="{btnSize: 'sm'}">
                                            <c:forEach var="type" items="${typeList}">
                                            <option value="${type.tId}">${type.tName}</option>
                                            </c:forEach>
                                        </select>
                                    </td>
                                    <td><input name="cName" required="required"></td>
                                    <td class="am-hide-sm-only">哈哈</td>
                                    <td class="am-hide-sm-only">2014年9月4日 7:28:47</td>
                                </tr>
                                </tbody>
                            </table>

                        </form>
                    </div>
                </div>
                <!--add结束-->
            </div>
            <div class="tpl-alert"></div>
        </div>

    </div>

</div>


<script src="${path}/assets/js/jquery.min.js"></script>
<script src="${path}/assets/js/amazeui.min.js"></script>
<script src="${path}/assets/js/app.js"></script>

<script>
    $('#addBtn').click(
        function (){
            $('#data').hide();
            $('#source').show();
            $('#addBtn').hide();
            $('#saveBtn').show();
            $('#delBtn').hide();
        }
    );

    $('#saveBtn').click(
        function () {
            $('#addCategoryForm').submit();
        }
    );

    function delItem(cid) {
        alert(cid);
        $('#'+cid).attr("checked","checked");
        $('#deleteCategoryForm').submit();
    }

    $('#delBtn').click(function () {
        var all = $("input[type='checkbox'][name='cIds']");
        var count = 0;
        for (var i = 0; i < all.length; i++) {
            if (all[i].checked) {
                count++;
            }
        }
        if (count > 0) {
            $('#deleteCategoryForm').submit();
        }else{
            alert('请选择要删除的项');
        }
        }
    );


    function checkAll(e,itemName) {
        var items = $("input[type='checkbox'][name='"+ itemName +"']");
        for(var i = 0; i < items.length; i++) {
            items[i].checked=e.checked;
        }
    }

    function checkItem(e,itemName) {
        var all = $('#cIds');
        if (!e.checked) {
            //这一项没选中，则全选框也不选中
            all[0].checked = e.checked;
        } else {
            //这一项选中了，判断其他的是不是都选中了
            var items = $("input[type='checkbox'][name='"+ itemName +"']");
            for (var i = 0; i < items.length; i++) {
                if (!items[i].checked) {
                    return;
                }
            }
            all[0].checked = true;
        }
    }

</script>
</body>

</html>