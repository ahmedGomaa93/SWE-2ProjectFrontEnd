<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
<head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>FCISquare</title>
        <link rel="icon" type="image/ico" href="<%=request.getContextPath()%>/assets/images/favicon.ico" />
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <!-- ============================================
        ================= Stylesheets ===================
        ============================================= -->
        <!-- vendor css files -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/vendor/bootstrap.min.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/vendor/animate.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/vendor/font-awesome.min.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/js/vendor/animsition/css/animsition.min.css">

        <!-- project main css files -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/main.css">
        <!--/ stylesheets -->
        
        <!-- ==========================================
        ================= Modernizr ===================
        =========================================== -->
        <script src="<%=request.getContextPath()%>/assets/js/vendor/modernizr/modernizr-2.8.3-respond-1.4.2.min.js"></script>
        <!--/ modernizr -->
</head>

<body id="minovate" class="appWrapper">
	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

		<!-- ====================================================
        ================= Application Content ===================
        ===================================================== -->
        <div id="wrap" class="animsition">
            <div class="page page-core page-login">
                <div class="text-center"><h3 class="text-light text-white">
                	<span class="text-lightred">FCI</span>Square</h3>
                </div>
                
                <div class="container w-420 p-15 bg-white mt-40 text-center">
                    <h2 class="text-light text-greensea">Log In</h2>
                    
                    <form id="loginForm" name="form" class="form-validation mt-20" autocomplete="on" action="doLogin" method="POST">
                        <div class="form-group">
                            <input type="email" name="email" class="form-control underline-input" placeholder="Email" required>
                        </div>
                        <div class="form-group">
                            <input type="password" name="password" placeholder="Password" class="form-control underline-input" required>
                        </div>

                        <div class="form-group text-left mt-20">
                            <input class="btn btn-greensea b-0 br-2 mr-5" type="submit" value="Login">
                            <label class="checkbox checkbox-custom-alt checkbox-custom-sm inline-block">
                                <input type="checkbox"><i></i> Remember me
                            </label>
                            <a href="#" class="pull-right mt-10">Forgot Password?</a>
                        </div>
                    </form>

                    <div class="bg-slategray lt wrap-reset mt-40">
                        <p class="m-0">
                            <a href="signUp" class="text-uppercase">Create an account</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <!--/ Application Content -->
        
        <!-- ============================================
        ============== Vendor JavaScripts ===============
        ============================================= -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="assets/js/vendor/jquery/jquery-1.11.2.min.js"><\/script>')</script>

        <script src="<%=request.getContextPath()%>/assets/js/vendor/bootstrap/bootstrap.min.js"></script>

        <script src="<%=request.getContextPath()%>/assets/js/vendor/jRespond/jRespond.min.js"></script>

        <script src="<%=request.getContextPath()%>/assets/js/vendor/sparkline/jquery.sparkline.min.js"></script>

        <script src="<%=request.getContextPath()%>/assets/js/vendor/slimscroll/jquery.slimscroll.min.js"></script>

        <script src="<%=request.getContextPath()%>/assets/js/vendor/animsition/js/jquery.animsition.min.js"></script>

        <script src="<%=request.getContextPath()%>/assets/js/vendor/screenfull/screenfull.min.js"></script>
        <!--/ vendor javascripts -->
        <!-- ============================================
        ============== Custom JavaScripts ===============
        ============================================= -->
        <script src="<%=request.getContextPath()%>/assets/js/main.js"></script>
        <!--/ custom javascripts -->

        <!-- ===============================================
        ============== Page Specific Scripts ===============
        ================================================ -->
        <script>
            $(window).load(function(){
            });
        </script>
        <!--/ Page Specific Scripts -->
    </body>
</html>
