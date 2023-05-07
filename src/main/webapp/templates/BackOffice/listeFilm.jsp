<%--
  Created by IntelliJ IDEA.
  User: mahery
  Date: 3/13/23
  Time: 10:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Film</title>

    <!-- Bootstrap -->
    <link href="<%= request.getContextPath() %>/ressources/theme/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="<%= request.getContextPath() %>/ressources/theme/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="<%= request.getContextPath() %>/ressources/theme/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="<%= request.getContextPath() %>/ressources/theme/vendors/iCheck/skins/flat/green.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="<%= request.getContextPath() %>/ressources/theme/build/css/custom.min.css" rel="stylesheet">
</head>
<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <div class="col-md-3 left_col">
            <div class="left_col scroll-view">
                <div class="navbar nav_title" style="border: 0;">
                    <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>Film Maker</span></a>
                </div>

                <div class="clearfix"></div>

                <!-- menu profile quick info -->
                <div class="profile clearfix">
                    <div class="profile_pic">
                        <img src="images/img.jpg" alt="..." class="img-circle profile_img">
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
                        <h3>Liste des films en cours</h3>
                    </div>
                </div>

                <div class="clearfix"></div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="x_panel" style="">
                            <div class="x_title">
                                <h2>Inserer un nouveau film</h2>
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
                                    <form action="<%= request.getContextPath() %>\Films" method="post">
                                        <div class="row">
                                            <div class='col-sm-4'>
                                                Titre
                                                <div class="form-group">
                                                    <input type='text' class="form-control" name="titre"/>
                                                </div>
                                            </div>

                                            <div class='col-sm-4'>
                                                <br/>
                                                <div class="form-group">
                                                    <input type="submit" class="btn btn-primary" value="Inserer">
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row" style="display: block;">
                    <div class="col-md-12 col-sm-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>Liste Film</h2>
                                <ul class="nav navbar-right panel_toolbox">
                                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                    </li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                            <a class="dropdown-item" href="#">Settings 1</a>
                                            <a class="dropdown-item" href="#">Settings 2</a>
                                        </div>
                                    </li>
                                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Titre</th>
                                        <th></th>
                                        <th></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>
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
<script src="<%= request.getContextPath() %>/ressources/theme/vendors/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="<%= request.getContextPath() %>/ressources/theme/vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<!-- FastClick -->
<script src="<%= request.getContextPath() %>/ressources/theme/vendors/fastclick/lib/fastclick.js"></script>
<!-- NProgress -->
<script src="<%= request.getContextPath() %>/ressources/theme/vendors/nprogress/nprogress.js"></script>
<!-- iCheck -->
<script src="<%= request.getContextPath() %>/ressources/theme/vendors/iCheck/icheck.min.js"></script>

<!-- Custom Theme Scripts -->
<script src="<%= request.getContextPath() %>/ressources/theme/build/js/custom.min.js"></script>
</body>
</html>
