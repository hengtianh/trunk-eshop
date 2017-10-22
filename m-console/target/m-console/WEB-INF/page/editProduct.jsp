<%@ page contentType="text/html;charset=utf-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
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
                Amaze UI 表单
            </div>
            <ol class="am-breadcrumb">
                <li><a href="#" class="am-icon-home">首页</a></li>
                <li><a href="#">表单</a></li>
                <li class="am-active">Amaze UI 表单</li>
            </ol>
            <div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        <span class="am-icon-code"></span> 表单
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
                        <div class="tpl-form-body tpl-form-line">
                            <form id="updateProductForm" class="am-form tpl-form-line-form" action="${path}/product/updateProduct.do" method="post" enctype="multipart/form-data">
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">名称 <span class="tpl-form-line-small-title">Name</span></label>
                                    <div class="am-u-sm-9">
                                        <input type="hidden" name="pId" value="${requestScope.product.pId}">
                                        <input type="text" name="pName" value="${requestScope.product.pName}" class="tpl-form-input" id="user-name" placeholder="请输入产品名称" required>
                                        <small>请填写产品名称。</small>
                                    </div>
                                </div>

                                <%--<div class="am-form-group">
                                    <label for="user-email" class="am-u-sm-3 am-form-label">发布时间 <span class="tpl-form-line-small-title">Time</span></label>
                                    <div class="am-u-sm-9">
                                        <input type="text" id="user-email" class="am-form-field tpl-form-no-bg" placeholder="发布时间" data-am-datepicker="" readonly/>
                                        <small>发布时间为必填</small>
                                    </div>
                                </div>--%>

                                <div class="am-form-group">
                                    <label for="user-phone" class="am-u-sm-3 am-form-label">折扣 <span class="tpl-form-line-small-title">Count</span></label>
                                    <div class="am-u-sm-9">
                                    <select id="user-phone" name="pCount" data-am-selected="{searchBox: 1}">
                                      <option value="1">原价</option>
                                      <option value="0.8">八折</option>
                                      <option value="0.5">半价</option>
                                    </select>
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label class="am-u-sm-3 am-form-label">单价 <span class="tpl-form-line-small-title">Price</span></label>
                                    <div class="am-u-sm-9">
                                        <input type="text" name="pPrice" value="${product.pPrice}" placeholder="输入产品单价" required>
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label class="am-u-sm-3 am-form-label">库存 <span class="tpl-form-line-small-title">Num</span></label>
                                    <div class="am-u-sm-9">
                                        <input type="number" name="num" value="${requestScope.product.num}" placeholder="输入产品库存数量" required>
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="user-weibo" class="am-u-sm-3 am-form-label">封面图 <span class="tpl-form-line-small-title">Img</span></label>
                                    <div class="am-u-sm-9">
                                        <div class="am-form-group am-form-file">
                                            <div class="tpl-form-file-img">
                                                <img id="pImgSrc" src="${applicationScope.fileSrc}${requestScope.product.pImg}" alt="">
                                            </div>
                                            <button type="button" class="am-btn am-btn-danger am-btn-sm">
    <i class="am-icon-cloud-upload"></i> 添加封面图片</button>
                                            <input type="file" name="pImgFile" onchange="uploadImg();" multiple>
                                            <input id="pImg" type="hidden" name="pImg" value="${requestScope.product.pImg}">
                                        </div>

                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="user-weibo" class="am-u-sm-3 am-form-label">添加分类 <span class="tpl-form-line-small-title">Category</span></label>
                                    <%--<div class="am-u-sm-9">
                                        <input type="text" id="user-weibo" placeholder="请添加分类用点号隔开">
                                        <div>

                                        </div>
                                    </div>--%>
                                    <div class="am-u-sm-9">
                                        <select id="user-weibo" name="cId" data-am-selected="{searchBox: 1}" required>
                                            <c:forEach var="cg" items="${categoryList}">
                                                <c:if test="${cg.cId == product.cId}">
                                                    <c:set var="selected" value="selected"></c:set>
                                                </c:if>
                                                <option value="${cg.cId}" ${selected}>${cg.cName}</option>
                                                <c:remove var="selected"></c:remove>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>

                                <%--<div class="am-form-group">
                                    <label for="user-intro" class="am-u-sm-3 am-form-label">隐藏文章</label>
                                    <div class="am-u-sm-9">
                                        <div class="tpl-switch">
                                            <input type="checkbox" class="ios-switch bigswitch tpl-switch-btn" checked />
                                            <div class="tpl-switch-btn-view">
                                                <div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>--%>

                                <div class="am-form-group">
                                    <label for="user-intro" class="am-u-sm-3 am-form-label">产品描述</label>
                                    <div class="am-u-sm-9">
                                        <textarea name="pDesc" aria-valuenow="${requestScope.product.pDesc}" class="" rows="10" id="user-intro" placeholder="${requestScope.product.pDesc}"></textarea>
                                    </div>
                                </div>

                               <%--<div class="am-form-group">
                                    <label for="user-intro" class="am-u-sm-3 am-form-label">产品描述</label>
                                    <div class="am-u-sm-9">
                                        <textarea class="" rows="10" id="user-intro" placeholder="请输入描述内容"></textarea>
                                    </div>
                                </div>--%>

                                <div class="am-form-group">
                                    <div class="am-u-sm-9 am-u-sm-push-3">
                                        <button type="submit" class="am-btn am-btn-primary tpl-btn-bg-color-success ">提交</button>
                                    </div>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>


            </div>

        </div>

    </div>


    <script src="${path}/assets/js/jquery.min.js"></script>
    <script src="${path}/assets/js/jquery.form.js"></script>
    <script src="${path}/assets/js/amazeui.min.js"></script>
    <script src="${path}/assets/js/app.js"></script>
    <script>
        function uploadImg() {
            var options = {
                url:"${path}/product/uploadImg.do",//不指定，就按照表单的action提交，指定后，覆盖表单的action
                dataType:"text",
                success:function (responseText) {
                    var jsonObj = $.parseJSON(responseText);
                    $('#pImgSrc').attr("src",jsonObj.realPath);
                    $('#pImg').val(jsonObj.relativePath);
                },
                error:function(){
                    alert("系统错误");
                }
            }
            $('#addProductForm').ajaxSubmit(options);
        }

    </script>
</body>

</html>