<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>校园二手交易平台-登录</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link href="../../css/bootstrap.css" rel="stylesheet">
<link href="../../css/bootstrap-responsive.css" rel="stylesheet">
<link href="../../css/style.css" rel="stylesheet">
<link href="../../css/flexslider.css" type="text/css" media="screen" rel="stylesheet"  />
<link href="../../css/jquery.fancybox.css" rel="stylesheet">
<link href="../../css/cloud-zoom.css" rel="stylesheet">

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<!-- fav -->
<link rel="shortcut icon" href="../../assets/ico/favicon.html">
</head>
<body>
<!-- Header Start -->
<header>
  <div class="headerstrip">
    <div class="container">
      <div class="row">
        <div class="span12">
          <a href="index-2.html" class="logo pull-left"><!--<img src="img/logo.png" alt="SimpleOne" title="SimpleOne">--><span style="font-size: 30px;font-weight: bold; color: #F25C27;">School's Market</span></a>
          <!-- Top Nav Start -->
          <div class="pull-left">
            <div class="navbar" id="topnav">
              <div class="navbar-inner">
                <ul class="nav" >
                  <li><a class="home active" href="#">主页</a>
                  </li>
                  <li><a class="myaccount" href="#">我的账户</a>
                  </li>
                  <li><a class="shoppingcart" href="#">购物车</a>
                  </li>
                  <li><a class="checkout" href="#">CheckOut</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
          <!-- Top Nav End -->
          <div class="pull-right">
            <form class="form-search top-search">
              <input type="text" class="input-medium search-query" placeholder="Search Here…">
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="container">
    <div class="headerdetails">
      <div class="pull-left">
        <ul class="nav language pull-left">
          <li class="dropdown hover">
            <a href="#" class="dropdown-toggle" data-toggle="">US Doller <b class="caret"></b></a>
            <ul class="dropdown-menu currency">
              <li><a href="#">US Doller</a>
              </li>
              <li><a href="#">Euro </a>
              </li>
              <li><a href="#">British Pound</a>
              </li>
            </ul>
          </li>
          <li class="dropdown hover">
            <a href="#" class="dropdown-toggle" data-toggle="">English <b class="caret"></b></a>
            <ul class="dropdown-menu language">
              <li><a href="#">English</a>
              </li>
              <li><a href="#">Spanish</a>
              </li>
              <li><a href="#">German</a>
              </li>
            </ul>
          </li>
        </ul>
        
      </div>
      <div class="pull-right">
        <ul class="nav topcart pull-left">
          <li class="dropdown hover carticon ">
            <a href="#" class="dropdown-toggle" > Shopping Cart <span class="label label-orange font14">1 item(s)</span> - $589.50 <b class="caret"></b></a>
            <ul class="dropdown-menu topcartopen ">
              <li>
                <table>
                  <tbody>
                    <tr>
                      <td class="image"><a href="product.html"><img width="50" height="50" src="../../img/prodcut-40x40.jpg" alt="product" title="product"></a></td>
                      <td class="name"><a href="product.html">MacBook</a></td>
                      <td class="quantity">x&nbsp;1</td>
                      <td class="total">$589.50</td>
                      <td class="remove"><i class="icon-remove"></i></td>
                    </tr>

                  </tbody>
                </table>
                <table>
                  <tbody>
                    <tr>
                      <td class="textright"><b>Sub-Total:</b></td>
                      <td class="textright">$500.00</td>
                    </tr>
                    <tr>
                      <td class="textright"><b>Eco Tax (-2.00):</b></td>
                      <td class="textright">$2.00</td>
                    </tr>
                    <tr>
                      <td class="textright"><b>VAT (17.5%):</b></td>
                      <td class="textright">$87.50</td>
                    </tr>
                    <tr>
                      <td class="textright"><b>Total:</b></td>
                      <td class="textright">$589.50</td>
                    </tr>
                  </tbody>
                </table>
                <div class="well pull-right buttonwrap">
                  <a class="btn btn-orange" href="#">View Cart</a>
                  <a class="btn btn-orange" href="#">Checkout</a>
                </div>
              </li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
    <div id="categorymenu">
      <nav class="subnav">
        <ul class="nav-pills categorymenu">
          <li><a class="active"  href="index-2.html">主页</a>

          </li>
          <li><a href="product.html">产品</a>
            <div>
              <ul>

                <li><a href="#"> 女士 Accessories</a>
                </li>
                <li><a href="#">男士 Accessories <span class="label label-success">Sale</span>
                  </a>
                </li>
                <li><a href="#">裙子 </a>
                </li>
                <li><a href="#">鞋子 <span class="label label-warning">(25)</span>
                  </a>
                </li>
                <li><a href="#">背包 <span class="label label-info">(new)</span>
                  </a>
                </li>
                <li><a href="#">太阳镜 </a>
                </li>
              </ul>
              <ul>
                <li><img src="../../img/proudctbanner.jpg" alt="" title="">
                </li>
              </ul>
            </div>
          </li>
          <li><a  href="category.html">产品分类</a>
          </li>
          <li><a href="shopping-cart.html">购物车</a>
          </li>

          <li><a href="blog.html">博客</a>
            <div>
              <ul>
                <li><a href="blog.html">博客页</a>
                </li>
                <li><a href="bloglist.html">博客列表</a>
                </li>
              </ul>
            </div>
          </li>
          <li><a href="myaccount.html">我的账户</a>
            <div>
              <ul>

                <li><a href="login.jsp">登录</a>
                </li>
                <li><a href="register.jsp">注册</a>
                </li>
                <li><a href="wishlist.html">心愿单</a>
                </li>
              </ul>
            </div>
          </li>

        </ul>
      </nav>
    </div>
  </div>
</header>
<!-- Header End -->

<div id="maincontainer">
  <section id="product">
    <div class="container">
      <!--  breadcrumb --> 
      <ul class="breadcrumb">
        <li>
          <a href="#">Home</a>
          <span class="divider">/</span>
        </li>
        <li class="active">Login</li>
      </ul>
       <!-- Account Login-->
      <div class="row">  
        <div class="span9">
          <h1 class="heading1"><span class="maintext">Login</span><span class="subtext">首先在此登录才能查看所有账户信息</span></h1>
          <section class="newcustomer">
            <h2 class="heading2">新客户 </h2>
            <div class="loginbox">
              <h4 class="heading4">会员注册</h4>
              <p>By creating an account you will be able to shop faster, be up to date on an order's status, and keep track of the orders you have previously made.</p>
              <br>
              <p>By creating an account you will be able to shop faster, be up to date on an order's status, and keep track of the orders you have previously made.</p>
              <br>
              <br>
              <a href="#" class="btn btn-orange">去注册</a>
            </div>
          </section>
          <section class="returncustomer">
            <h2 class="heading2">会员客户 </h2>
            <div class="loginbox">
              <h4 class="heading4">我是注册会员客户</h4>
              <form class="form-vertical">
                <fieldset>
                  <div class="control-group">
                    <label  class="control-label">E-Mail:</label>
                    <div class="controls">
                      <input type="email"  class="span3" required="required">
                    </div>
                  </div>
                  <div class="control-group">
                    <label  class="control-label">密码:</label>
                    <div class="controls">
                      <input type="password"  class="span3" required="required">
                    </div>
                  </div>
                  <a class="" href="#">忘记密码</a>
                  <br>
                  <br>
                  <input class="btn btn-orange" type="submit" value="登录">
                </fieldset>
              </form>
            </div>
          </section>
        </div>
        
        <!-- Sidebar Start-->
        <aside class="span3">
          <div class="sidewidt">
            <h2 class="heading2"><span>账户</span></h2>
            <ul class="nav nav-list categories">
              <li>
                <a href="#">我的账户</a>
              </li>
              <li>
                <a href="#">编辑账户</a>
              </li>
              <li>
                <a href="#">密码</a>
              </li>
              <li>
                <a href="#">心愿单</a>
              </li>
              <li><a href="#">历史订单</a>
              </li>
              <li><a href="#">下载</a>
              </li>
              <li><a href="#">回扣</a>
              </li>
              <li>
                <a href="#"> 交易</a>
              </li>
              <li>
                <a href="category.html">简讯</a>
              </li>
              <li>
                <a href="category.html">登出</a>
              </li>
            </ul>
          </div>
        </aside>
        <!-- Sidebar End-->
      </div>
    </div>
  </section>
</div>

<!-- Footer -->
<footer id="footer">
  <section class="footersocial">
    <div class="container">
      <div class="row">
        <div class="span3 aboutus">
          <h2>About Us </h2>
          <p> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. <br>
            <br>
            t has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. </p>
        </div>
        <div class="span3 contact">
          <h2>Contact Us </h2>
          <ul>
            <li class="phone"> +123 456 7890, +123 456 7890</li>
            <li class="mobile"> +123 456 7890, +123 456 78900</li>
            <li class="email"> test@test.com</li>
            <li class="email"> test@test.com</li>
          </ul>
        </div>
        <div class="span3 twitter">
          <h2>Twitter </h2>
          <div>
          </div>
        </div>
        <div class="span3 facebook">
          <h2>Facebook </h2>
          <div id="fb-root"></div>
          
        </div>
      </div>
    </div>
  </section>
  <section class="footerlinks">
    <div class="container">
      <div class="info">
        <ul>
          <li><a href="#">Privacy Policy</a>
          </li>
          <li><a href="#">Terms &amp; Conditions</a>
          </li>
          <li><a href="#">Affiliates</a>
          </li>
          <li><a href="#">Newsletter</a>
          </li>
        </ul>
      </div>
      <div id="footersocial">
        <a href="#" title="Facebook" class="facebook">Facebook</a>
        <a href="#" title="Twitter" class="twitter">Twitter</a>
        <a href="#" title="Linkedin" class="linkedin">Linkedin</a>
        <a href="#" title="rss" class="rss">rss</a>
        <a href="#" title="Googleplus" class="googleplus">Googleplus</a>
        <a href="#" title="Skype" class="skype">Skype</a>
        <a href="#" title="Flickr" class="flickr">Flickr</a>
      </div>
    </div>
  </section>
  <section class="copyrightbottom">
    <div class="container">
      <div class="row">
        <div class="span6"> All images are copyright to their owners. More Templates <a href="http://www.17sucai.com/" target="_blank" title="17素材网">17素材网</a> - Collect from <a href="http://www.17sucai.com/" title="网页模板" target="_blank">网页模板</a></div>
        <div class="span6 textright"> ShopSimple @ 2012 </div>
      </div>
    </div>
  </section>
  <a id="gotop" href="#">Back to top</a>
</footer>
<!-- javascript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="../../js/jquery.js"></script>
<script src="../../js/bootstrap.js"></script>
<script src="../../js/respond.min.js"></script>
<script src="../../js/application.js"></script>
<script src="../../js/bootstrap-tooltip.js"></script>
<script defer src="../../js/jquery.fancybox.js"></script>
<script defer src="../../js/jquery.flexslider.js"></script>
<script type="text/javascript" src="../../js/jquery.tweet.js"></script>
<script  src="../../js/cloud-zoom.1.0.2.js"></script>
<script  type="text/javascript" src="../../js/jquery.validate.js"></script>
<script type="text/javascript"  src="../../js/jquery.carouFredSel-6.1.0-packed.js"></script>
<script type="text/javascript"  src="../../js/jquery.mousewheel.min.js"></script>
<script type="text/javascript"  src="../../js/jquery.touchSwipe.min.js"></script>
<script type="text/javascript"  src="../../js/jquery.ba-throttle-debounce.min.js"></script>
<script defer src="../../js/custom.js"></script><strong></strong>
</body>
</html>