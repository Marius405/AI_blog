<%@ page import="Application.MO.Model.Article" %>
<%@ page import="java.util.List" %>
<%@ page import="Application.MO.Model.Quote" %>
<!DOCTYPE html>
<html lang="en">
<%
List<Article> listetop =(List<Article>)request.getAttribute("listetop");
List<Quote> quote=(List<Quote>)request.getAttribute("quote");
%>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

	<!-- title -->
	<title>AI</title>

	<!-- favicon -->
	<link rel="shortcut icon" type="image/png" href="../assets/img/favicon.png">
	<!-- google font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
	<!-- fontawesome -->
	<link rel="stylesheet" href="../assets/css/all.min.css">
	<!-- bootstrap -->
	<link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css">
	<!-- owl carousel -->
	<link rel="stylesheet" href="../assets/css/owl.carousel.css">
	<!-- magnific popup -->
	<link rel="stylesheet" href="../assets/css/magnific-popup.css">
	<!-- animate css -->
	<link rel="stylesheet" href="../assets/css/animate.css">
	<!-- mean menu css -->
	<link rel="stylesheet" href="../assets/css/meanmenu.min.css">
	<!-- main style -->
	<link rel="stylesheet" href="../assets/css/main.css">
	<!-- responsive -->
	<link rel="stylesheet" href="../assets/css/responsive.css">

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
	<!-- end search area -->

	<!-- hero area -->
	<div class="hero-area hero-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-9 offset-lg-2 text-center">
					<div class="hero-text">
						<div class="hero-text-tablecell">
							<p class="subtitle">Safety & responsibility</p>
							<h1>Your daily blog about <strong>AI</strong></h1>
							<div class="hero-btns">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end hero area -->

	<!-- features list section -->
	<div class="list-section pt-80 pb-80">
		<div class="container">

			<div class="row">
				<div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
					<div class="list-box d-flex align-items-center">
						<div class="list-icon">
							<i class="fas fa-shipping-fast"></i>
						</div>
						<div class="content">
							<h3>Free Shipping</h3>
							<p>When order over $75</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
					<div class="list-box d-flex align-items-center">
						<div class="list-icon">
							<i class="fas fa-phone-volume"></i>
						</div>
						<div class="content">
							<h3>24/7 Support</h3>
							<p>Get support all day</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="list-box d-flex justify-content-start align-items-center">
						<div class="list-icon">
							<i class="fas fa-sync"></i>
						</div>
						<div class="content">
							<h3>Refund</h3>
							<p>Get refund within 3 days!</p>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<!-- end features list section -->

	<!-- product section -->
	<!-- end product section -->

	<!-- cart banner section -->
    <!-- end cart banner section -->

	<!-- testimonail-section -->
	<div class="testimonail-section mt-150 mb-150">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 offset-lg-1 text-center">
					<div class="testimonial-sliders">
						<%for(Quote q:quote){%>
						<div class="single-testimonial-slider">
							<div class="client-avater">
								<img src="../assets/img/avaters/avatar1.png" alt="">
							</div>
							<div class="client-meta">
								<h3><%=q.getNom()%><span><%=q.getFonction()%></span></h3>
								<p class="testimonial-body">
									" <%=q.getTexte()%> "
								</p>
								<div class="last-icon">
									<i class="fas fa-quote-right"></i>
								</div>
							</div>
						</div>
						<div class="single-testimonial-slider">
							<div class="client-avater">
								<img src="../assets/img/avaters/avatar1.png" alt="">
							</div>
							<div class="client-meta">
								<h3><%=q.getNom()%><span><%=q.getFonction()%></span></h3>
								<p class="testimonial-body">
									" <%=q.getTexte()%> "
								</p>
								<div class="last-icon">
									<i class="fas fa-quote-right"></i>
								</div>
							</div>
						</div>
						<div class="single-testimonial-slider">
							<div class="client-avater">
								<img src="../assets/img/avaters/avatar1.png" alt="">
							</div>
							<div class="client-meta">
								<h3><%=q.getNom()%><span><%=q.getFonction()%></span></h3>
								<p class="testimonial-body">
									" <%=q.getTexte()%> "
								</p>
								<div class="last-icon">
									<i class="fas fa-quote-right"></i>
								</div>
							</div>
						</div>
						<div class="single-testimonial-slider">
							<div class="client-avater">
								<img src="../assets/img/avaters/avatar1.png" alt="">
							</div>
							<div class="client-meta">
								<h3><%=q.getNom()%><span><%=q.getFonction()%></span></h3>
								<p class="testimonial-body">
									" <%=q.getTexte()%> "
								</p>
								<div class="last-icon">
									<i class="fas fa-quote-right"></i>
								</div>
							</div>
						</div>
						<div class="single-testimonial-slider">
						<div class="client-avater">
							<img src="../assets/img/avaters/avatar1.png" alt="">
						</div>
						<div class="client-meta">
							<h3><%=q.getNom()%><span><%=q.getFonction()%></span></h3>
							<p class="testimonial-body">
								" <%=q.getTexte()%> "
							</p>
							<div class="last-icon">
								<i class="fas fa-quote-right"></i>
							</div>
						</div>
					</div>
						<%}%>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end testimonail-section -->
	
	<!-- advertisement section -->
	<div class="abt-section mb-150">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-12">
					<div class="abt-bg">
						<a href="https://www.youtube.com/watch?v=DBLlFWYcIGQ" class="video-play-btn popup-youtube"><i class="fas fa-play"></i></a>
					</div>
				</div>
				<div class="col-lg-6 col-md-12">
					<div class="abt-text">
						<p class="top-sub">Since Year 1999</p>
						<h2>We are </strong><span class="orange-text"><strong>AI</strong> Blog</span></h2>
						<p>Many of the pioneers who began developing artificial neural networks weren't sure how they actually worked - and we're no more certain today</p>
						<p>It may have looked like clunky blocks of circuitry, soldered together by hand in a mass of wires and boxes, but what Cowan was witnessing was an early analogue form of a neural network – a precursor to the most advanced artificial intelligence of today, including the much discussed ChatGPT with its ability to generate written content in response to almost any command. ChatGPT's underlying technology is a neural network. (Read more about the <strong>AI</strong> emotions dreamed up by ChatGPT)</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end advertisement section -->
	
	<!-- shop banner -->
	<section class="shop-banner">
    	<div class="container">
        	<h3>December sale is on! <br> with big <span class="orange-text">Discount...</span></h3>
            <div class="sale-percent"><span>Sale! <br> Upto</span>50% <span>off</span></div>
        </div>
    </section>
	<!-- end shop banner -->

	<!-- latest news -->
	<div class="latest-news pt-150 pb-150">
		<div class="container">

			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="section-title">	
						<h3><span class="orange-text">Our</span> News</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid, fuga quas itaque eveniet beatae optio.</p>
					</div>
				</div>
			</div>

			<div class="row">
				<%for(Article a:listetop){%>
				<div class="col-lg-4 col-md-6">
					<div class="single-latest-news">
						<a href="/AI/Article/<%=a.getId()%>/<%=a.getUrl()%>"><div class="latest-news-bg news-bg-1" style="background-image: url(<%=a.getImage()%>)"></div></a>
						<div class="news-text-box">
							<h3><a href="/AI/Article/<%=a.getId()%>/<%=a.getUrl()%>"><%=a.getTitre()%></a></h3>
							<p class="blog-meta">
								<span class="author"><i class="fas fa-user"></i> Admin</span>
								<span class="date"><i class="fas fa-calendar"></i> <%=a.getDate().toLocaleString()%></span>
							</p>
							<p class="excerpt"><%=a.getResume()%></p>
							<a href="/AI/Article/<%=a.getId()%>/<%=a.getUrl()%>" class="read-more-btn">read more <i class="fas fa-angle-right"></i></a>
						</div>
					</div>
				</div>
				<%}%>

			</div>
			<div class="row">
				<div class="col-lg-12 text-center">
				</div>
			</div>
		</div>
	</div>
	<!-- end latest news -->

	<!-- logo carousel -->
	<!-- end logo carousel -->

	<!-- footer -->
	<jsp:include page="footer.jsp"/>
	<!-- end footer -->
	
	<!-- copyright -->
	<!-- end copyright -->
	
	<!-- jquery -->
	<script src="../assets/js/jquery-1.11.3.min.js"></script>
	<!-- bootstrap -->
	<script src="../assets/bootstrap/js/bootstrap.min.js"></script>
	<!-- count down -->
	<script src="../assets/js/jquery.countdown.js"></script>
	<!-- isotope -->
	<script src="../assets/js/jquery.isotope-3.0.6.min.js"></script>
	<!-- waypoints -->
	<script src="../assets/js/waypoints.js"></script>
	<!-- owl carousel -->
	<script src="../assets/js/owl.carousel.min.js"></script>
	<!-- magnific popup -->
	<script src="../assets/js/jquery.magnific-popup.min.js"></script>
	<!-- mean menu -->
	<script src="../assets/js/jquery.meanmenu.min.js"></script>
	<!-- sticker js -->
	<script src="../assets/js/sticker.js"></script>
	<!-- main js -->
	<script src="../assets/js/main.js"></script>

</body>
</html>