
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
<script src="../../theme/ckeditor/ckeditor.js"></script>
<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <div class="col-md-3 left_col">
            <div class="left_col scroll-view">
                <div class="navbar nav_title" style="border: 0;">
                    <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>AI Admin</span></a>
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
                                    <form action="/AI/Admin/AjoutArticle" method="post">
                                        <p><label>Titre : </label><input type='text'  name="titre"/></p>
                                        <p><label>Resume : </label></p>
                                        <p><textarea name="resume"></textarea></p>
                                        <label>Contenu : </label>
                                        <textarea class="ckeditor form-control" id="editor" name="contenu"></textarea>
                                        <p>Visuel: <input type="file" accept="image/*" name="visuel" id='imageLoader' data-type='image' onchange="image()" ></p>
                                        <p><img style="width: 300px" class="img" id="avatar" /></p>
                                        <textarea name="image" id="textArea" rows="30" cols="50" hidden></textarea>
                                        <input type="submit" class="btn btn-primary" value="Ajouter">
                                    </form>
                                </div>
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
<script >
    const input = document.getElementById("imageLoader");
    const avatar = document.getElementById("avatar");
    const textArea = document.getElementById("textArea");

    const convertBase64 = (file) => {
        return new Promise((resolve, reject) => {
            const fileReader = new FileReader();
            fileReader.readAsDataURL(file);

            fileReader.onload = () => {
                resolve(fileReader.result);
            };

            fileReader.onerror = (error) => {
                reject(error);
            };
        });
    };

    const uploadImage = async (event) => {
        const file = event.target.files[0];
        const base64 = await convertBase64(file);
        avatar.src = base64;
        console.log(base64);
        textArea.innerText = base64;
    };

    input.addEventListener("change", (e) => {
        uploadImage(e);
    });
</script>
<script>
    ClassicEditor
        .create( document.querySelector( '#editor' ) )
        .catch( error => {
            console.error( error );
        } );
</script>

</body>
</html>
