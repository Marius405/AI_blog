
<%@ page import="Application.MO.Model.Article" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: mahery
  Date: 3/13/23
  Time: 10:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<Article> liste=(List<Article>) request.getAttribute("liste");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Articles</title>

    <!-- Bootstrap -->
    <link href="../../theme/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../../theme/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../../theme/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="../../theme/vendors/iCheck/skins/flat/green.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../../theme/build/css/custom.min.css" rel="stylesheet">
</head>
<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <div class="col-md-3 left_col">
            <div class="left_col scroll-view">
                <div class="navbar nav_title" style="border: 0;">
                    <a href="" class="site_title"><i class="fa fa-paw"></i> <span>Film Maker</span></a>
                </div>

                <div class="clearfix"></div>
                <!-- menu profile quick info -->
                <div class="profile clearfix">
                    <div class="profile_pic">
                        <img src="images/img.jpg" alt="../.." class="img-circle profile_img">
                    </div>
                </div>
                <!-- /menu profile quick info -->

                <br />
                <jsp:include page="navbar.jsp"/>
            </div>
        </div>
        <jsp:include page="top_navigation.jsp"/>
        <!-- page content -->
        <div class="right_col" role="main">
            <div class="">
                <div class="page-title">
                    <div class="title_left">
                        <h3>Article</h3>
                    </div>
                </div>

                <div class="clearfix"></div>

                <div class="row">
                    <div class="col-md-12">
                    </div>
                </div>

                <div class="row" style="display: block;">
                    <div class="col-md-12 col-sm-12">
                        <div class="x_panel" style="">
                            <div class="x_title">
                                <h2>Rechercher un article</h2>
                                <ul class="nav navbar-right panel_toolbox">
                                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                    </li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">Settings 1</a>
                                            </li>
                                            <li><a href="#">Settings 2</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">

                                <div class="container">
                                    <form action="/rechercheAdmin" method="post">
                                        <div class="row">
                                            <div class='col-sm-4'>
                                                <div class="form-group">
                                                    <input type='text' class="form-control" name="mot"/>
                                                </div>
                                            </div>

                                            <div class='col-sm-4'>

                                                <div class="form-group">
                                                    <input type="submit" class="btn btn-primary" value="rechercher">
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>Liste des articles</h2>
                            </div>
                            <div class="x_content">
                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Titre</th>
                                        <th>Resume</th>
                                        <th>Etat</th>
                                        <th>Actions</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                        <% for(Article a:liste) {%>
                                        <tr>
                                            <td><%=a.getId()%></td>
                                            <td><%=a.getTitre()%></td>
                                            <td><%=a.getResume()%></td>
                                            <td><%if(a.getEtat()==1){%><p style="color: #00A000">Publié<p><%}else {%><p style="color: #990000">Non publié<p><%}%></td>
                                            <td><a href="/AI/Admin/ToModifArticle/<%=a.getId()%>"><button class="btn btn-primary">Modifier</button></a></td>
                                        </tr>
                                        <%}%>
                                    </tbody>
                                </table>
                            </div>
                            <div>
                                <a href="/AI/Admin/ToAjoutArticle"><button class="btn btn-primary">Nouveau</button></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /page content -->
    <jsp:include page="footer.jsp"/>
</div>
</div>
<!-- jQuery -->
<script src="../../theme/vendors/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="../../theme/vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<!-- FastClick -->
<script src="../../theme/vendors/fastclick/lib/fastclick.js"></script>
<!-- NProgress -->
<script src="../../theme/vendors/nprogress/nprogress.js"></script>
<!-- iCheck -->
<script src="../../theme/vendors/iCheck/icheck.min.js"></script>

<!-- Custom Theme Scripts -->
<script src="../../theme/build/js/custom.min.js"></script>
</body>
</html>
