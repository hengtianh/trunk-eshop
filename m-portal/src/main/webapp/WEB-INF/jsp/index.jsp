<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>校园二手交易平台-首页</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<link href="${path}/css/bootstrap.css" rel="stylesheet">
<link href="${path}/css/bootstrap-responsive.css" rel="stylesheet">
<link href="${path}/css/style.css" rel="stylesheet">
<link href="${path}/css/flexslider.css" type="text/css" media="screen" rel="stylesheet"  />
<link href="${path}/css/jquery.fancybox.css" rel="stylesheet">
<link href="${path}/css/cloud-zoom.css" rel="stylesheet">

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<!-- fav -->
<link rel="shortcut icon" href="${path}/assets/ico/favicon.html">
</head>
<body>
<!-- Header Start -->
<header>
  <div class="headerstrip">
    <div class="container">
      <div class="row">
        <div class="span12">
          <a href="#" class="logo pull-left"><!--<img src="img/logo.png" alt="SimpleOne" title="SimpleOne">--><span style="font-size: 30px;font-weight: bold; color: #F25C27;">School's Market</span></a>
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
      <div class="copyrights">Collect from <a href="http://www.17sucai.com/"  title="网站模板">网站模板</a></div>
      <div class="pull-right">
        <ul class="nav topcart pull-left">
          <li class="dropdown hover carticon ">
            <a href="#" class="dropdown-toggle" > Shopping Cart <span class="label label-orange font14">1 item(s)</span> - $589.50 <b class="caret"></b></a>
            <ul class="dropdown-menu topcartopen ">
              <li>
                <table>
                  <tbody>
                    <tr>
                      <td class="image"><a href="product.html"><img width="50" height="50" src="${path}/img/prodcut-40x40.jpg" alt="product" title="product"></a></td>
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
          <li><a class="active"  href="#">主页</a></li>
          <li><a href="product.html">产品</a>
            <div>
              <ul>
                  <li><a href="#"> 女士 Accessories</a>
                  </li>
                <c:forEach items="${categoryList}" var="cl">
                    <li><a href="#">${cl.cName}</a>
                    </li>
                </c:forEach>

              </ul>
              <ul>
                <li><img style="display:block" src="${path}/img/proudctbanner.jpg" alt="" title="" >
                </li>
              </ul>
            </div>
          </li>
          <li><a  href="category.html">产品分类</a>
          </li>
          <li><a href="shopping-cart.html">购物车</a>

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
          <!--<li><a href="features.html">Features</a>
          </li>
          <li><a href="contact.html">Contact</a>
          </li>-->
        </ul>
      </nav>
    </div>
  </div>
</header>
<!-- Header End -->

<div id="maincontainer">
  <!-- Slider Start-->
  <section class="slider">
    <div class="container">
      <div class="flexslider" id="mainslider">
        <ul class="slides">
          <li>
            <img src="${path}/img/banner1.jpg" alt="" />
          </li>

        </ul>
      </div>
    </div>
  </section>
  <!-- Slider End-->
  
  <!-- Section Start-->
  <section class="container otherddetails">
    <div class="otherddetailspart">
      <div class="innerclass free">
        <h2>Free shipping</h2>
        All over in world over $200 </div>
    </div>
    <div class="otherddetailspart">
      <div class="innerclass payment">
        <h2>Easy Payment</h2>
        Payment Gatway support </div>
    </div>
    <div class="otherddetailspart">
      <div class="innerclass shipping">
        <h2>24hrs Shipping</h2>
        Free For UK Customers </div>
    </div>
    <div class="otherddetailspart">
      <div class="innerclass choice">
        <h2>Over 5000 Choice</h2>
        50,000+ Products </div>
    </div>
  </section>
  <!-- Section End-->
  
  <!-- Featured Product-->
  <section id="featured" class="row mt40">
    <div class="container">
      <h1 class="heading1"><span class="maintext">Featured Products</span><span class="subtext"> See Our Most featured Products</span></h1>
      <ul class="thumbnails">
        <li class="span3">
          <a class="prdocutname" href="product.html">Product Name Here</a>
          <div class="thumbnail">
            <span class="sale tooltip-test">Sale</span>
            <a href="#"><img alt="" src="${path}/img/product1.jpg"></a>
            <div class="shortlinks">
              <a class="details" href="#">DETAILS</a>
              <a class="wishlist" href="#">WISHLIST</a>
              <a class="compare" href="#">COMPARE</a>
            </div>
            <div class="pricetag">
              <span class="spiral"></span><a href="#" class="productcart">ADD TO CART</a>
              <div class="price">
                <div class="pricenew">$4459.00</div>
                <div class="priceold">$5000.00</div>
              </div>
            </div>
          </div>
        </li>
        <li class="span3">
          <a class="prdocutname" href="product.html">Product Name Here</a>
          <div class="thumbnail">
            <a href="#"><img alt="" src="${path}/img/product2.jpg"></a>
            <div class="shortlinks">
              <a class="details" href="#">DETAILS</a>
              <a class="wishlist" href="#">WISHLIST</a>
              <a class="compare" href="#">COMPARE</a>
            </div>
            <div class="pricetag">
              <span class="spiral"></span><a href="#" class="productcart">ADD TO CART</a>
              <div class="price">
                <div class="pricenew">$4459.00</div>
                <div class="priceold">$5000.00</div>
              </div>
            </div>
          </div>
        </li>
        <li class="span3">
          <a class="prdocutname" href="product.html">Product Name Here</a>
          <div class="thumbnail">
            <span class="offer tooltip-test" >Offer</span>
            <a href="#"><img alt="" src="${path}/img/product1.jpg"></a>
            <div class="shortlinks">
              <a class="details" href="#">DETAILS</a>
              <a class="wishlist" href="#">WISHLIST</a>
              <a class="compare" href="#">COMPARE</a>
            </div>
            <div class="pricetag">
              <span class="spiral"></span><a href="#" class="productcart">ADD TO CART</a>
              <div class="price">
                <div class="pricenew">$4459.00</div>
                <div class="priceold">$5000.00</div>
              </div>
            </div>
          </div>
        </li>
        <li class="span3">
          <a class="prdocutname" href="product.html">Product Name Here</a>
          <div class="thumbnail">
            <a href="#"><img alt="" src="${path}/img/product2.jpg"></a>
            <div class="shortlinks">
              <a class="details" href="#">DETAILS</a>
              <a class="wishlist" href="#">WISHLIST</a>
              <a class="compare" href="#">COMPARE</a>
            </div>
            <div class="pricetag">
              <span class="spiral"></span><a href="#" class="productcart">ADD TO CART</a>
              <div class="price">
                <div class="pricenew">$4459.00</div>
                <div class="priceold">$5000.00</div>
              </div>
            </div>
          </div>
        </li>
      </ul>
    </div>
  </section>
  
  <!-- Latest Product-->
  <section id="latest" class="row">
    <div class="container">
      <h1 class="heading1"><span class="maintext">Latest Products</span><span class="subtext"> See Our  Latest Products</span></h1>
      <ul class="thumbnails">
        <li class="span3">
          <a class="prdocutname" href="product.html">Product Name Here</a>
          <div class="thumbnail">
            <a href="#"><img alt="" src="${path}/img/product1a.jpg"></a>
            <div class="shortlinks">
              <a class="details" href="#">DETAILS</a>
              <a class="wishlist" href="#">WISHLIST</a>
              <a class="compare" href="#">COMPARE</a>
            </div>
            <div class="pricetag">
              <span class="spiral"></span><a href="#" class="productcart">ADD TO CART</a>
              <div class="price">
                <div class="pricenew">$4459.00</div>
                <div class="priceold">$5000.00</div>
              </div>
            </div>
          </div>
        </li>
        <li class="span3">
          <a class="prdocutname" href="product.html">Product Name Here</a>
          <div class="thumbnail">
            <a href="#"><img alt="" src="${path}/img/product2a.jpg"></a>
            <div class="shortlinks">
              <a class="details" href="#">DETAILS</a>
              <a class="wishlist" href="#">WISHLIST</a>
              <a class="compare" href="#">COMPARE</a>
            </div>
            <div class="pricetag">
              <span class="spiral"></span><a href="#" class="productcart">ADD TO CART</a>
              <div class="price">
                <div class="pricenew">$4459.00</div>
                <div class="priceold">$5000.00</div>
              </div>
            </div>
          </div>
        </li>
        <li class="span3">
          <a class="prdocutname" href="product.html">Product Name Here</a>
          <div class="thumbnail">
            <span class="new tooltip-test" >New</span>
            <a href="#"><img alt="" src="${path}/img/product1a.jpg"></a>
            <div class="shortlinks">
              <a class="details" href="#">DETAILS</a>
              <a class="wishlist" href="#">WISHLIST</a>
              <a class="compare" href="#">COMPARE</a>
            </div>
            <div class="pricetag">
              <span class="spiral"></span><a href="#" class="productcart">ADD TO CART</a>
              <div class="price">
                <div class="pricenew">$4459.00</div>
                <div class="priceold">$5000.00</div>
              </div>
            </div>
          </div>
        </li>
        <li class="span3">
          <a class="prdocutname" href="product.html">Product Name Here</a>
          <div class="thumbnail">
            <a href="#"><img alt="" src="${path}/img/product2a.jpg"></a>
            <div class="shortlinks">
              <a class="details" href="#">DETAILS</a>
              <a class="wishlist" href="#">WISHLIST</a>
              <a class="compare" href="#">COMPARE</a>
            </div>
            <div class="pricetag">
              <span class="spiral"></span><a href="#" class="productcart">ADD TO CART</a>
              <div class="price">
                <div class="pricenew">$4459.00</div>
                <div class="priceold">$5000.00</div>
              </div>
            </div>
          </div>
        </li>
      </ul>
    </div>
  </section>
  
  <!-- Section  Banner Start-->
  <section class="container smbanner">
    <div class="row">
      <div class="span3"><a href="#"><img src="${path}/img/smbanner.jpg" alt="" title=""></a>
      </div>
      <div class="span3"><a href="#"><img src="${path}/img/smbanner.jpg" alt="" title=""></a>
      </div>
      <div class="span3"><a href="#"><img src="${path}/img/smbanner.jpg" alt="" title=""></a>
      </div>
      <div class="span3"><a href="#"><img src="${path}/img/smbanner.jpg" alt="" title=""></a>
      </div>
    </div>
  </section>
  <!-- Section  End-->
  
  <!-- Popular Brands-->
  <section id="popularbrands" class="container mt40">
    <h1 class="heading1"><span class="maintext">Popular Brands</span><span class="subtext"> See Our  Popular Brands</span></h1>
    <div class="brandcarousalrelative">
      <ul id="brandcarousal">
        <li><img src="${path}/img/brand1.jpg" alt="" title=""/></li>
        <li><img src="${path}/img/brand2.jpg" alt="" title=""/></li>
        <li><img src="${path}/img/brand3.jpg" alt="" title=""/></li>
        <li><img src="${path}/img/brand4.jpg" alt="" title=""/></li>
        <li><img src="${path}/img/brand1.jpg" alt="" title=""/></li>
        <li><img src="${path}/img/brand2.jpg" alt="" title=""/></li>
        <li><img src="${path}/img/brand3.jpg" alt="" title=""/></li>
        <li><img src="${path}/img/brand4.jpg" alt="" title=""/></li>
        <li><img src="${path}/img/brand1.jpg" alt="" title=""/></li>
        <li><img src="${path}/img/brand2.jpg" alt="" title=""/></li>
        <li><img src="${path}/img/brand3.jpg" alt="" title=""/></li>
        <li><img src="${path}/img/brand4.jpg" alt="" title=""/></li>
      </ul>
      <div class="clearfix"></div>
      <a id="prev" class="prev" href="#">&lt;</a>
      <a id="next" class="next" href="#">&gt;</a>
    </div>
  </section>
  
  <!-- Newsletter Signup-->
  <section id="newslettersignup" class="mt40">
    <div class="container">
      <div class="pull-left newsletter">
        <h2> Newsletters Signup</h2>
        Sign up to Our Newsletter & get attractive Offers by subscribing to our newsletters. </div>
      <div class="pull-right">
        <form class="form-horizontal">
          <div class="input-prepend">
            <input type="text" placeholder="Subscribe to Newsletter" id="inputIcon" class="input-xlarge">
            <input value="Subscribe" class="btn btn-orange" type="submit">
            Sign in           
          </div>
        </form>
      </div>
    </div>
  </section>
</div>
<!-- /maincontainer -->

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
  <a id="gotop" href="http://www.17sucai.com">Back to top</a>
</footer>
<!-- javascript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="${path}/js/jquery.js"></script>
<script src="${path}/js/bootstrap.js"></script>
<script src="${path}/js/respond.min.js"></script>
<script src="${path}/js/application.js"></script>
<script src="${path}/js/bootstrap-tooltip.js"></script>
<script defer src="${path}/js/jquery.fancybox.js"></script>
<script defer src="${path}/js/jquery.flexslider.js"></script>
<script type="text/javascript" src="${path}/js/jquery.tweet.js"></script>
<script  src="${path}/js/cloud-zoom.1.0.2.js"></script>
<script  type="text/javascript" src="${path}/js/jquery.validate.js"></script>
<script type="text/javascript"  src="${path}/js/jquery.carouFredSel-6.1.0-packed.js"></script>
<script type="text/javascript"  src="${path}/js/jquery.mousewheel.min.js"></script>
<script type="text/javascript"  src="${path}/js/jquery.touchSwipe.min.js"></script>
<script type="text/javascript"  src="${path}/js/jquery.ba-throttle-debounce.min.js"></script>
<script defer src="${path}/js/custom.js"></script>
</body>
</html>