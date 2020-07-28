<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CITAS.aspx.cs" Inherits="WebHospital.Vista.Template.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
    <div class="layer-stretch hdr-center">
            <div class="row align-items-center">
                <div class="col-2">
                    <div class="hdr-center-logo">
                        <a href="index.html" class="d-inline-block"><img src="images/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-10">
                    <div class="hdr-center-submenu row pull-right">
                        <div class="col-md-auto mr-3 d-none d-sm-none d-md-none d-lg-block d-xl-block">
                            <div class="tbl-cell">
                                <i class="fa fa-envelope-o"></i>
                            </div>
                            <div class="tbl-cell text-left p-0">
                                <p class="font-12 m-0 text-muted">Have a query?</p>
                                <p class="font-14 m-0">support@pepdev.com</p>
                            </div>
                        </div>
                        <div class="col-md-auto d-none d-sm-none d-md-block d-lg-block d-xl-block">
                            <div class="tbl-cell">
                                <i class="fa fa-mobile font-28"></i>
                            </div>
                            <div class="tbl-cell text-left p-0">
                                <p class="font-12 m-0 text-muted">Want to Clarify?</p>
                                <p class="font-14 m-0">1800 000 000</p>
                            </div>
                        </div>
                        <div class="col-md-auto pl-3 d-none d-sm-block d-md-block d-lg-block d-xl-block">
                            <button class="mdl-button mdl-button--colored mdl-button--raised mdl-js-button mdl-js-ripple-effect hdr-apointment"><i class="fa fa-calendar m-0 color-white"></i> Make An Appointment</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <form id="form1" runat="server">

       <div id="appointment" class="modal fade" role="dialog">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header text-center">
                    <h5 class="modal-title">Make An Appointment</h5>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="appointment-error"></div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                                <i class="fa fa-user-o"></i>
                                <input class="mdl-textfield__input" type="text" pattern="[A-Z,a-z, ]*" id="appointment-name">
                                <label class="mdl-textfield__label" for="appointment-name">Name</label>
                                <span class="mdl-textfield__error">Please Enter Valid Name!</span>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                                <i class="fa fa-envelope-o"></i>
                                <input class="mdl-textfield__input" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" id="appointment-email">
                                <label class="mdl-textfield__label" for="appointment-email">Email</label>
                                <span class="mdl-textfield__error">Please Enter Valid Email!</span>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                                <i class="fa fa-phone"></i>
                                <input class="mdl-textfield__input" type="text" pattern="[0-9]*" id="appointment-mobile">
                                <label class="mdl-textfield__label" for="appointment-mobile">Mobile Number</label>
                                <span class="mdl-textfield__error">Please Enter Valid Mobile Number!</span>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mdl-selectfield mdl-js-selectfield mdl-selectfield--floating-label form-input-icon">
                                <i class="fa fa-hospital-o"></i>
                                <select class="mdl-selectfield__select" id="appointment-department">
                                    <option value="">&nbsp;</option>
                                    <option value="1">Gynaecology</option>
                                    <option value="2">Orthology</option>
                                    <option value="3">Dermatologist</option>
                                    <option value="4">Anaesthesia</option>
                                    <option value="5">Ayurvedic</option>
                                </select>
                                <label class="mdl-selectfield__label" for="appointment-department">Choose Department</label>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mdl-selectfield mdl-js-selectfield mdl-selectfield--floating-label form-input-icon">
                                <i class="fa fa-user-md"></i>
                                <select class="mdl-selectfield__select" id="appointment-doctor">
                                    <option value="">&nbsp;</option>
                                    <option value="1">Dr. Daniel Barnes</option>
                                    <option value="2">Dr. Steve Soeren</option>
                                    <option value="3">Dr. Barbara Baker</option>
                                    <option value="4">Dr. Melissa Bates</option>
                                    <option value="5">Dr. Linda Adams</option>
                                </select>
                                <label class="mdl-selectfield__label" for="appointment-doctor">Choose Doctor</label>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                                <i class="fa fa-calendar-o"></i>
                                <input class="mdl-textfield__input" type="text" id="appointment-date" onfocus="(this.type='date')" onblur="(this.type='text')">
                                <label class="mdl-textfield__label" for="appointment-date">Date</label>
                                <span class="mdl-textfield__error">Please Enter Valid Date Number!</span>
                            </div>
                        </div>
                    </div>
                    <div class="text-center pt-4">
                        <button class="mdl-button mdl-js-button mdl-button--colored mdl-js-ripple-effect mdl-button--raised button button-primary button-lg make-appointment">Submit</button>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- End Make an Appointment Modal -->
        

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
    <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

        ga('create', 'UA-93901876-1', 'auto');
        ga('send', 'pageview');
    </script>
    </form>
</body>
</html>
