<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebHospital.Vista.Template.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">s
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Site Title -->
    <title>Klinik health care - HTML5 &#38; CSS3 Template for Clinic and Hospital</title>
    <!-- Meta Description Tag -->
    <meta name="Description" content="Klinik is a HTML5 & CSS3 responsive template">
    <!-- Favicon Icon -->
    <link rel="icon" type="image/x-icon" href="images/favicon.png" />
    <!-- Font Awesoeme Stylesheet CSS -->
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css" />
    <!-- Google web Font -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Montserrat:400,500">
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Material Design Lite Stylesheet CSS -->
    <link rel="stylesheet" href="css/material.min.css" />
    <!-- Material Design Select Field Stylesheet CSS -->
    <link rel="stylesheet" href="css/mdl-selectfield.min.css">
    <!-- Owl Carousel Stylesheet CSS -->
    <link rel="stylesheet" href="css/owl.carousel.min.css" />
    <!-- Animate Stylesheet CSS -->
    <link rel="stylesheet" href="css/animate.min.css" />
    <!-- Magnific Popup Stylesheet CSS -->
    <link rel="stylesheet" href="css/magnific-popup.css" />
    <!-- Flex Slider Stylesheet CSS -->
    <link rel="stylesheet" href="css/flexslider.css" />
    <!-- Custom Main Stylesheet CSS -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <form id="form1" runat="server">
        <header id="header">
            <!-- Start Header Top Section -->
            <div id="hdr-top-wrapper">
                <div class="layer-stretch hdr-top">
                    <div class="hdr-top-block hidden-xs">
                        <div id="hdr-social">
                            <ul class="social-list social-list-sm">
                                <li><a class="width-auto font-13">Follow Us : </a></li>
                                <li><a href="#" target="_blank" id="hdr-facebook"><i class="fa fa-facebook"></i></a><span class="mdl-tooltip mdl-tooltip--bottom" data-mdl-for="hdr-facebook">Facebook</span></li>
                                <li><a href="#" target="_blank" id="hdr-twitter"><i class="fa fa-twitter"></i></a><span class="mdl-tooltip mdl-tooltip--bottom" data-mdl-for="hdr-twitter">Twitter</span></li>
                                <li><a href="#" target="_blank" id="hdr-google"><i class="fa fa-google"></i></a><span class="mdl-tooltip mdl-tooltip--bottom" data-mdl-for="hdr-google">Google</span></li>
                                <li><a href="#" target="_blank" id="hdr-instagram"><i class="fa fa-instagram"></i></a><span class="mdl-tooltip mdl-tooltip--bottom" data-mdl-for="hdr-instagram">Instagram</span></li>
                                <li><a href="#" target="_blank" id="hdr-youtube"><i class="fa fa-youtube"></i></a><span class="mdl-tooltip mdl-tooltip--bottom" data-mdl-for="hdr-youtube">Youtube</span></li>
                                <li><a href="#" target="_blank" id="hdr-linkedin"><i class="fa fa-linkedin"></i></a><span class="mdl-tooltip mdl-tooltip--bottom" data-mdl-for="hdr-linkedin">Linkedin</span></li>
                                <li><a href="#" target="_blank" id="hdr-flickr"><i class="fa fa-flickr"></i></a><span class="mdl-tooltip mdl-tooltip--bottom" data-mdl-for="hdr-flickr">Flickr</span></li>
                                <li><a href="#" target="_blank" id="hdr-rss"><i class="fa fa-rss"></i></a><span class="mdl-tooltip mdl-tooltip--bottom" data-mdl-for="hdr-rss">Rss</span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="hdr-top-line hidden-xs"></div>
                    <div class="hdr-top-block hdr-number">
                        <div class="font-13">
                            <i class="fa fa-mobile font-20 tbl-cell"></i><span class="hidden-xs tbl-cell">Emergency Number : </span><span class="tbl-cell">1800000000</span>
                        </div>
                    </div>
                    <div class="hdr-top-line"></div>
                    <div class="hdr-top-block">
                        <div class="theme-dropdown">
                            <a data-toggle="modal" data-target="#login"><i class="fa fa-sign-in"></i>  Iniciar Sesión</a>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- End Header Top Section -->
        <!-- Start Login Modal -->
        <div id="login" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <h5 class="modal-title">Iniciar Sesión</h5>
                        <asp:Button class="close" data-dismiss="modal">&times;</asp:Button>
                    </div>
                    <div class="modal-body text-center">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-envelope-o">      </i>
                            <asp:TextBox ID="txtemail" runat="server" class="mdl-textfield__input" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"></asp:TextBox>
                            <asp:Label ID="lblemail" runat="server" class="mdl-textfield__label">Email *</asp:Label>
                            <span class="mdl-textfield__error">Please Enter Valid Email!</span>
                        </div>
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-key"></i>
                            <asp:TextBox ID="txtPassword" runat="server" class="mdl-textfield__input" TextMode="Password"></asp:TextBox>
                            <asp:Label ID="lblPassword" runat="server" class="mdl-textfield__label">Contraseña *</asp:Label>
                            <span class="mdl-textfield__error">Please Enter Valid Password!</span>
                            <div class="forgot-pass">¿Se te olvidó tu contraseña?</div>
                        </div>
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon form-bot-check">
                            <i class="fa fa-question"></i>
                            <asp:TextBox ID="txtBot" runat="server" class="mdl-textfield__input" TextMode="Number"></asp:TextBox>
                            <asp:Label ID="lblBot" runat="server" class="mdl-textfield__label">Cuanto es 7 + 1 = *</asp:Label>
                            <span class="mdl-textfield__error">Please Enter Correct Value!</span>
                        </div>
                        <div class="form-submit">
                            <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary" />
                        </div>
                        <div class="or-using"></div>
                        <div class="social-login">
                            <a href="#" class="social-google"><i class="fa fa-google"></i>Google</a>
                        </div>
                        <div class="login-link">
                            <span class="paragraph-small">¿No tienes una cuenta?</span>
                            <a href="#" class="">Registrarse como nuevo usuario</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Login Modal -->

        <!-- **********Included Scripts*********** -->

        <!-- Jquery Library 2.1 JavaScript-->
        <script src="js/jquery-2.1.4.min.js"></script>
        <!-- Popper JavaScript-->
        <script src="js/popper.min.js"></script>
        <!-- Bootstrap Core JavaScript-->
        <script src="js/bootstrap.min.js"></script>
        <!-- Material Design Lite JavaScript-->
        <script src="js/material.min.js"></script>
        <!-- Material Select Field Script -->
        <script src="js/mdl-selectfield.min.js"></script>
        <!-- Flexslider Plugin JavaScript-->
        <script src="js/jquery.flexslider.min.js"></script>
        <!-- Owl Carousel Plugin JavaScript-->
        <script src="js/owl.carousel.min.js"></script>
        <!-- Scrolltofixed Plugin JavaScript-->
        <script src="js/jquery-scrolltofixed.min.js"></script>
        <!-- Magnific Popup Plugin JavaScript-->
        <script src="js/jquery.magnific-popup.min.js"></script>
        <!-- WayPoint Plugin JavaScript-->
        <script src="js/jquery.waypoints.min.js"></script>
        <!-- CounterUp Plugin JavaScript-->
        <script src="js/jquery.counterup.js"></script>
        <!-- SmoothScroll Plugin JavaScript-->
        <script src="js/smoothscroll.min.js"></script>
        <!--Custom JavaScript for Klinik Template-->
        <script src="js/custom.js"></script>
    </form>
</body>
</html>
