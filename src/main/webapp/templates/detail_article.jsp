<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="Application.MO.Model.Article" %>
<!DOCTYPE html>
<html lang="en">
<%Article a=(Article) request.getAttribute("article");%>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="<%=a.getTitre()%>">

    <!-- title -->
    <title><%=a.getTitre()%></title>

    <!-- favicon -->
    <link rel="shortcut icon" type="image/png" href="/../assets/img/favicon.png">
    <!-- google font -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
    <!-- fontawesome -->
    <link rel="stylesheet" href="/../assets/css/all.min.css">
    <!-- bootstrap -->
    <link rel="stylesheet" href="/../assets/bootstrap/css/bootstrap.min.css">
    <!-- owl carousel -->
    <link rel="stylesheet" href="/../assets/css/owl.carousel.css">
    <!-- magnific popup -->
    <link rel="stylesheet" href="/../assets/css/magnific-popup.css">
    <!-- animate css -->
    <link rel="stylesheet" href="/../assets/css/animate.css">
    <!-- mean menu css -->
    <link rel="stylesheet" href="/../assets/css/meanmenu.min.css">
    <!-- main style -->
    <link rel="stylesheet" href="/../assets/css/main.css">
    <!-- responsive -->
    <link rel="stylesheet" href="/../assets/css/responsive.css">

</head>
<body>

<!--PreLoader-->
<div class="loader">
    <div class="loader-inner">
        <div class="circle"></div>
    </div>
</div>
<!--PreLoader Ends-->

<!-- header -->
<jsp:include page="nav.jsp"/>
<!-- end header -->

<!-- search area -->
<div class="search-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <span class="close-btn"><i class="fas fa-window-close"></i></span>
                <div class="search-bar">
                    <div class="search-bar-tablecell">
                        <h3>Search For:</h3>
                        <input type="text" placeholder="Keywords">
                        <button type="submit">Search <i class="fas fa-search"></i></button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end search arewa -->

<!-- breadcrumb-section -->
<div class="breadcrumb-section breadcrumb-bg">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 offset-lg-2 text-center">
                <div class="breadcrumb-text">
                    <p>Read the Details</p>
                    <h1>Single Article</h1>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end breadcrumb section -->

<!-- single article section -->
<div class="mt-150 mb-150">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="single-article-section">
                    <div class="single-article-text">
                        <div class="single-artcile-bg" style="background-image: url(<%=a.getImage()%>);"></div>
                        <p class="blog-meta">
                            <span class="author"><i class="fas fa-user"></i> Admin</span>
                            <span class="date"><i class="fas fa-calendar"></i><%=a.getDate().toLocaleString()%></span>
                        </p>
                        <h2><%=a.getTitre()%></h2>
                        <%=a.getContenu()%>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="sidebar-section">
                    <div class="recent-posts">
                        <h4>Recent Posts</h4>
                        <ul>
                            <li><a href="single-news.html">You will vainly look for fruit on it in autumn.</a></li>
                            <li><a href="single-news.html">A man's worth has its season, like tomato.</a></li>
                            <li><a href="single-news.html">Good thoughts bear good fresh juicy fruit.</a></li>
                            <li><a href="single-news.html">Fall in love with the fresh orange</a></li>
                            <li><a href="single-news.html">Why the berries always look delecious</a></li>
                        </ul>
                    </div>
                    <div class="archive-posts">
                        <h4>Archive Posts</h4>
                        <ul>
                            <li><a href="single-news.html">JAN 2019 (5)</a></li>
                            <li><a href="single-news.html">FEB 2019 (3)</a></li>
                            <li><a href="single-news.html">MAY 2019 (4)</a></li>
                            <li><a href="single-news.html">SEP 2019 (4)</a></li>
                            <li><a href="single-news.html">DEC 2019 (3)</a></li>
                        </ul>
                    </div>
                    <div class="tag-section">
                        <h4>Tags</h4>
                        <ul>
                            <li><a href="single-news.html">Apple</a></li>
                            <li><a href="single-news.html">Strawberry</a></li>
                            <li><a href="single-news.html">BErry</a></li>
                            <li><a href="single-news.html">Orange</a></li>
                            <li><a href="single-news.html">Lemon</a></li>
                            <li><a href="single-news.html">Banana</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end single article section -->

<!-- logo carousel -->
<!-- end logo carousel -->

<!-- footer -->
<jsp:include page="footer.jsp"/>
<!-- end footer -->

<!-- copyright -->
<div class="copyright">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-12">
                <p>Copyrights &copy; 2019 - <a href="https://imransdesign.com/">Imran Hossain</a>,  All Rights Reserved.<br>
                    Distributed By - <a href="https://themewagon.com/">Themewagon</a>
                </p>
            </div>
            <div class="col-lg-6 text-right col-md-12">
                <div class="social-icons">
                    <ul>
                        <li><a href="#" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
                        <li><a href="#" target="_blank"><i class="fab fa-twitter"></i></a></li>
                        <li><a href="#" target="_blank"><i class="fab fa-instagram"></i></a></li>
                        <li><a href="#" target="_blank"><i class="fab fa-linkedin"></i></a></li>
                        <li><a href="#" target="_blank"><i class="fab fa-dribbble"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end copyright -->

<!-- jquery -->
<script src="/../assets/js/jquery-1.11.3.min.js"></script>
<!-- bootstrap -->
<script src="/../assets/bootstrap/js/bootstrap.min.js"></script>
<!-- count down -->
<script src="/../assets/js/jquery.countdown.js"></script>
<!-- isotope -->
<script src="/../assets/js/jquery.isotope-3.0.6.min.js"></script>
<!-- waypoints -->
<script src="/../assets/js/waypoints.js"></script>
<!-- owl carousel -->
<script src="/../assets/js/owl.carousel.min.js"></script>
<!-- magnific popup -->
<script src="/../assets/js/jquery.magnific-popup.min.js"></script>
<!-- mean menu -->
<script src="/../assets/js/jquery.meanmenu.min.js"></script>
<!-- sticker js -->
<script src="/../assets/js/sticker.js"></script>
<!-- main js -->
<script src="/../assets/js/main.js"></script>

</body>
</html>