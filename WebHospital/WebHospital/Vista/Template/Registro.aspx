﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterAdministrador.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="WebHospital.Vista.Template.Registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="UTF-8">
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

        <!-- Start Header -->
        <header id="header">
            <!-- Start Header Top Section -->
            <div id="hdr-top-wrapper">
                <div class="layer-stretch hdr-top">
                    <div class="hdr-top-block hidden-xs">
                        <div id="hdr-social">
                            <!--<ul class="social-list social-list-sm">
                                <li><a class="width-auto font-13">Follow Us : </a></li>
                                <li><a href="#" target="_blank" id="hdr-facebook"><i class="fa fa-facebook"></i></a><span class="mdl-tooltip mdl-tooltip--bottom" data-mdl-for="hdr-facebook">Facebook</span></li>
                                <li><a href="#" target="_blank" id="hdr-twitter"><i class="fa fa-twitter"></i></a><span class="mdl-tooltip mdl-tooltip--bottom" data-mdl-for="hdr-twitter">Twitter</span></li>
                                <li><a href="#" target="_blank" id="hdr-google"><i class="fa fa-google"></i></a><span class="mdl-tooltip mdl-tooltip--bottom" data-mdl-for="hdr-google">Google</span></li>
                                <li><a href="#" target="_blank" id="hdr-instagram"><i class="fa fa-instagram"></i></a><span class="mdl-tooltip mdl-tooltip--bottom" data-mdl-for="hdr-instagram">Instagram</span></li>
                                <li><a href="#" target="_blank" id="hdr-youtube"><i class="fa fa-youtube"></i></a><span class="mdl-tooltip mdl-tooltip--bottom" data-mdl-for="hdr-youtube">Youtube</span></li>
                                <li><a href="#" target="_blank" id="hdr-linkedin"><i class="fa fa-linkedin"></i></a><span class="mdl-tooltip mdl-tooltip--bottom" data-mdl-for="hdr-linkedin">Linkedin</span></li>
                                <li><a href="#" target="_blank" id="hdr-flickr"><i class="fa fa-flickr"></i></a><span class="mdl-tooltip mdl-tooltip--bottom" data-mdl-for="hdr-flickr">Flickr</span></li>
                                <li><a href="#" target="_blank" id="hdr-rss"><i class="fa fa-rss"></i></a><span class="mdl-tooltip mdl-tooltip--bottom" data-mdl-for="hdr-rss">Rss</span></li>
                            </ul>-->
                        </div>
                    </div>
                    <div class="hdr-top-line hidden-xs"></div>
                    <div class="hdr-top-block hdr-number">
                        <div class="font-13">
                            <!-- <i class="fa fa-mobile font-20 tbl-cell"></i><span class="hidden-xs tbl-cell">Emergency Number : </span><span class="tbl-cell">1800000000</span> -->
                        </div>
                    </div>
                    <div class="hdr-top-line"></div>
                    <div class="hdr-top-block">
                        <div class="theme-dropdown">
                            <a id="profile-menu" class="mdl-button mdl-js-button mdl-js-ripple-effect font-13"><i class="fa fa-user-o color-black"></i>My Account</a>
                            <ul class="mdl-menu mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect metarial-menu" data-mdl-for="profile-menu">
                                <li class="mdl-menu__item"><a href="login.html"><i class="fa fa-sign-in"></i>Login</a></li>
                                <li class="mdl-menu__item"><a data-toggle="modal" data-target="#loginpopup"><i class="fa fa-sign-in"></i>Login Popup</a></li>
                                <li class="mdl-menu__item"><a href="register.html"><i class="fa fa-user-o"></i>Register</a></li>
                                <li class="mdl-menu__item"><a data-toggle="modal" data-target="#registerpopup"><i class="fa fa-user-o"></i>Register Popup</a></li>
                                <li class="mdl-menu__item"><a href="forgot.html"><i class="fa fa-key"></i>Forgot Password</a></li>
                                <li class="mdl-menu__item"><a href="about.html"><i class="fa fa-info"></i>Help</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Header Top Section -->
            <!-- Start Main Header Section -->
            <div id="hdr-wrapper">
                <div class="layer-stretch hdr">
                    <div class="tbl">
                        <div class="tbl-row">
                            <!-- Start Header Logo Section -->
                            <div class="tbl-cell hdr-logo">
                                <a href="index.html">
                                    <img src="images/logo.png" alt=""></a>
                            </div>
                            <!-- End Header Logo Section -->
                            <div class="tbl-cell hdr-menu">
                                <!-- Start Menu Section -->
                                <ul class="menu">
                                    <li>
                                        <!-- <a id="menu-home" class="mdl-button mdl-js-button mdl-js-ripple-effect">Home <i class="fa fa-chevron-down"></i></a>
                                        <ul class="menu-dropdown">
                                            <li><a href="index.html">Home Style 1</a></li>
                                            <li><a href="index-1.html">Home Style 2</a></li>
                                            <li><a href="index-2.html">Home Style 3</a></li>
                                            <li><a href="index-3.html">Home Style 4</a></li>
                                            <li><a href="index-4.html">Home Style 5</a></li>
                                            <li><a href="index-5.html">Home Style 6</a></li>
                                        </ul>
                                    </li> -->
                                        <li class="menu-megamenu-li">
                                            <!--<a id="menu-pages" class="mdl-button mdl-js-button mdl-js-ripple-effect">Pages <i class="fa fa-chevron-down"></i></a> -->
                                            <ul class="menu-megamenu">
                                                <li class="row">
                                                    <div class="col-lg-3">
                                                        <div class="megamenu-ttl">Link 1</div>
                                                        <ul>
                                                            <li><a href="event-1.html">Event Style 1</a></li>
                                                            <li><a href="event-2.html">Event Style 2</a></li>
                                                            <li><a href="event-3.html">Event Style 3</a></li>
                                                            <li><a href="faq.html">FAQ</a></li>
                                                            <li><a href="503.html">503 Temporarily Unavailable</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-lg-3">
                                                        <div class="megamenu-ttl">Link 2</div>
                                                        <ul>
                                                            <li><a href="departments-1.html">Departments Style 1</a></li>
                                                            <li><a href="departments-2.html">Departments Style 2</a></li>
                                                            <li><a href="gallery.html">Gallery Style 1</a></li>
                                                            <li><a href="gallery-1.html">Gallery Style 2</a></li>
                                                            <li><a href="404.html">404 Page Not Found</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-lg-2">
                                                        <div class="megamenu-ttl">Link 3</div>
                                                        <ul>
                                                            <li><a href="about.html">About Us</a></li>
                                                            <li><a href="contact.html">Contact Us</a></li>
                                                            <li><a href="invoice.html">Invoice</a></li>
                                                            <li><a href="terms-conditions.html">Terms &#38; Conditions</a></li>
                                                            <li><a href="privacy-policy.html">Privacy Policy</a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <div class="theme-img">
                                                            <img src="uploads/service-5.jpg" alt="">
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </li>
                                    <li>
                                        <!--<a id="menu-service" class="mdl-button mdl-js-button mdl-js-ripple-effect">Service <i class="fa fa-chevron-down"></i></a> -->
                                        <ul class="menu-dropdown">
                                            <li>
                                                <a>Services Style 1</a>
                                                <ul class="menu-dropdown">
                                                    <li><a href="services-1.html">Services Style 1</a></li>
                                                    <li><a href="services-4.html">Services Style 1 with Right Sidebar</a></li>
                                                    <li><a href="services-7.html">Services Style 1 with Left Sidebar</a></li>
                                                </ul>
                                            </li>
                                            <li>
                                                <a>Servcie Style 2</a>
                                                <ul class="menu-dropdown">
                                                    <li><a href="services-2.html">Services Style 2</a></li>
                                                    <li><a href="services-5.html">Services Style 2 with Right Sidebar</a></li>
                                                    <li><a href="service.html">Single Service Page</a></li>
                                                </ul>
                                            </li>
                                            <li>
                                                <a>Service Style 3</a>
                                                <ul class="menu-dropdown">
                                                    <li><a href="services-3.html">Services Style 3</a></li>
                                                    <li><a href="services-6.html">Services Style 3 with Right Sidebar</a></li>
                                                    <li><a href="services-8.html">Services Style 3 with Left Sidebar</a></li>
                                                </ul>
                                            </li>
                                            <li>
                                                <a>Services Style 4</a>
                                                <ul class="menu-dropdown">
                                                    <li><a href="services-9.html">Services Style 4</a></li>
                                                    <li><a href="services-9.html">Services Style 4 with Right Sidebar</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="service.html">Service Detail</a></li>
                                        </ul>
                                    </li>
                                    <li class="menu-megamenu-li">
                                        <!-- <a id="menu-doctor" class="mdl-button mdl-js-button mdl-js-ripple-effect">Doctors <i class="fa fa-chevron-down"></i></a> -->
                                        <ul class="menu-megamenu">
                                            <li class="row">
                                                <div class="col-lg-4">
                                                    <div class="megamenu-ttl">Doctors Link</div>
                                                    <ul>
                                                        <li><a href="doctors-1.html">Doctors Style 1</a></li>
                                                        <li><a href="doctors-2.html">Doctors Style 2</a></li>
                                                        <li><a href="doctors-3.html">Doctors Style 3</a></li>
                                                        <li><a href="doctors-4.html">Doctors Style 1 with Right Sidebar</a></li>
                                                        <li><a href="doctors-7.html">Doctors Style 1 with Left Sidebar</a></li>
                                                    </ul>
                                                </div>
                                                <div class="col-lg-4">
                                                    <div class="megamenu-ttl">Doctors Link</div>
                                                    <ul>
                                                        <li><a href="doctors-5.html">Doctors Style 2 with Right Sidebar</a></li>
                                                        <li><a href="doctors-6.html">Doctors Style 3 with Right Sidebar</a></li>
                                                        <li><a href="doctors-8.html">Doctors Style 3 with left Sidebar</a></li>
                                                        <li><a href="doctor-1.html">Doctor Detail Style 1</a></li>
                                                        <li><a href="doctor-2.html">Doctor Detail Style 2</a></li>
                                                    </ul>
                                                </div>
                                                <div class="col-lg-4 d-none d-sm-none s-md-none d-lg-block d-xl-block">
                                                    <div class="megamenu-ttl">Our Skills &#38; Achievement</div>
                                                    <div class="doctor-skills mt-2">
                                                        <p class="font-14">Brain Surgery <span class="badge badge-primary badge-pill float-right">75%</span></p>
                                                        <div class="progress progress-sm mb-4">
                                                            <div class="progress-bar progress-bar-striped bg-primary" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                                                        </div>
                                                    </div>
                                                    <div class="doctor-skills">
                                                        <p class="font-14">Heart Surgery <span class="badge badge-danger badge-pill float-right">65%</span></p>
                                                        <div class="progress progress-sm mb-4">
                                                            <div class="progress-bar progress-bar-striped bg-danger" role="progressbar" style="width: 65%" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100"></div>
                                                        </div>
                                                    </div>
                                                    <div class="doctor-skills">
                                                        <p class="font-14">General Surgery <span class="badge badge-warning badge-pill float-right">87%</span></p>
                                                        <div class="progress progress-sm mb-4">
                                                            <div class="progress-bar progress-bar-striped bg-warning" role="progressbar" style="width: 87%" aria-valuenow="87" aria-valuemin="0" aria-valuemax="100"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a id="menu-blog" class="mdl-button mdl-js-button mdl-js-ripple-effect">Blog <i class="fa fa-chevron-down"></i>
                                        </a>
                                        <ul class="menu-dropdown">
                                            <li>
                                                <a>Blog Style 1</a>
                                                <ul class="menu-dropdown">
                                                    <li><a href="blogs-1.html">Blog style 1</a></li>
                                                    <li><a href="blogs-3.html">Blog style 1 with Right Sidebar</a></li>
                                                    <li><a href="blogs-5.html">Blog style 1 with Left Sidebar</a></li>
                                                </ul>
                                            </li>
                                            <li>
                                                <a>Blog Style 2</a>
                                                <ul class="menu-dropdown">
                                                    <li><a href="blogs-2.html">Blog style 2</a></li>
                                                    <li><a href="blogs-4.html">Blog style 2 with Right Sidebar</a></li>
                                                </ul>
                                            </li>
                                            <li>
                                                <a>Blog Style 3</a>
                                                <ul class="menu-dropdown">
                                                    <li><a href="blogs-6.html">Blog style 3 with Right Sidebar</a></li>
                                                    <li><a href="blogs-7.html">Blog style 3 with Left Sidebar</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="blog-1.html">Blog Details 1</a></li>
                                            <li><a href="blog-2.html">Blog Details 2</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a id="menu-profile" class="mdl-button mdl-js-button mdl-js-ripple-effect">Profile <i class="fa fa-chevron-down"></i></a>
                                        <ul class="menu-dropdown">
                                            <li><a href="login.html">Login Page</a></li>
                                            <li><a data-toggle="modal" data-target="#loginpopup">Login Popup</a></li>
                                            <li><a href="register.html">Register Page</a></li>
                                            <li><a data-toggle="modal" data-target="#registerpopup">Register Popup</a></li>
                                            <li><a href="myappointment.html">My Appointment Page</a></li>
                                            <li><a href="myrequest.html">My Request Page</a></li>
                                            <li><a href="myprofile.html">My Profile Page</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="components.html" id="menu-shortcodes" class="mdl-button mdl-js-button mdl-js-ripple-effect">Components</a></li>
                                    <li></li>
                                    <li class="mobile-menu-close"><i class="fa fa-times"></i></li>
                                </ul>
                                <!-- End Menu Section -->
                                <div id="menu-bar"><a><i class="fa fa-bars"></i></a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Main Header Section -->
        </header>
        <!-- End Header -->
        <!-- Start Page Title Section -->
        <div class="page-ttl">
            <div class="layer-stretch">
                <div class="page-ttl-container" >
                    <h1>Registrarse</h1>
                    <p><a href="#">Home</a> &#8594; <span>Register</span></p>
                </div>
            </div>
        </div>
        <!-- End Page Title Section -->
        <!-- Start Register Section -->
        <div class="layer-stretch">
            <div class="layer-wrapper">
                <div class="form-container">
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-user-o"></i>
                        <!--<input class="mdl-textfield__input" type="text" pattern="[A-Z,a-z, ]*" id="register-name"> -->
                        <asp:TextBox ID="txtNombre" class="mdl-textfield__input" pattern="[A-Z,a-z, ]*" runat="server"></asp:TextBox>
                        <label class="mdl-textfield__label" for="register-name">Nombre <em>*</em></label>
                        <span class="mdl-textfield__error">Please Enter Valid Name!</span>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-user-o"></i>
                        <!--<input class="mdl-textfield__input" type="text" pattern="[A-Z,a-z, ]*" id="register-name"> -->
                        <asp:TextBox ID="txtApellido" class="mdl-textfield__input" pattern="[A-Z,a-z, ]*" runat="server"></asp:TextBox>
                        <label class="mdl-textfield__label" for="register-name">Apellido <em>*</em></label>
                        <span class="mdl-textfield__error">Please Enter Valid Name!</span>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-user-o"></i>
                        <!--<input class="mdl-textfield__input" type="text" pattern="[A-Z,a-z, ]*" id="register-name"> -->
                        <asp:TextBox ID="txtDocumento" class="mdl-textfield__input" runat="server"></asp:TextBox>
                        <label class="mdl-textfield__label" for="register-name">Documento <em>*</em></label>
                        <span class="mdl-textfield__error">Please Enter Valid Name!</span>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-envelope-o"></i>
                        <!--<input class="mdl-textfield__input" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" id="register-email">  -->
                        <asp:TextBox ID="txtUsuario" class="mdl-textfield__input" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" runat="server"></asp:TextBox>
                        <label class="mdl-textfield__label" for="register-email">email <em>*</em></label>
                        <span class="mdl-textfield__error">Please Enter Valid Email!</span>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-user-o"></i>
                        <!--<input class="mdl-textfield__input" type="text" pattern="[A-Z,a-z, ]*" id="register-name"> -->
                        <asp:TextBox ID="txtDireccion" class="mdl-textfield__input" runat="server"></asp:TextBox>
                        <label class="mdl-textfield__label" for="register-name">Direccion <em>*</em></label>
                        <span class="mdl-textfield__error">Please Enter Valid Name!</span>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-user-o"></i>
                        <!--<input class="mdl-textfield__input" type="text" pattern="[A-Z,a-z, ]*" id="register-name"> -->
                        <asp:TextBox ID="txtTelefono" class="mdl-textfield__input" runat="server"></asp:TextBox>
                        <label class="mdl-textfield__label" for="register-name">Telefono <em>*</em></label>
                        <span class="mdl-textfield__error">Please Enter Valid Name!</span>
                    </div>
                    <div class="col-md-6">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-calendar-o"></i>
                            <asp:TextBox ID="txtFecha" runat="server" class="mdl-textfield__input" onfocus="(this.type='date')" onblur="(this.type='text')"></asp:TextBox>
                            <label class="mdl-textfield__label" for="appointment-date">Fecha Nacimiento</label>
                            <span class="mdl-textfield__error">Please Enter Valid Date Number!</span>
                        </div>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-key"></i>
                        <!--<input class="mdl-textfield__input" type="password" id="register-password">-->
                        <asp:TextBox ID="txtContraseña" class="mdl-textfield__input" runat="server"></asp:TextBox>
                        <label class="mdl-textfield__label" for="register-password">Contraseña <em>*</em></label>
                        <span class="mdl-textfield__error">Please Enter Valid Password(Min 6 Character)!</span>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-user-o"></i>
                        <!--<input class="mdl-textfield__input" type="text" pattern="[A-Z,a-z, ]*" id="register-name"> -->
                        <div class="text-justify">
                            <strong>
                                <label for="register-name"><em>*</em>Genero</label>
                                <asp:RadioButtonList ID="RadioButtonGenero" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem>Masculino</asp:ListItem>
                                    <asp:ListItem>Femenino</asp:ListItem>
                                </asp:RadioButtonList>
                            </strong>
                        </div>

                        <span class="mdl-textfield__error">Please Enter Valid Name!</span>
                    </div>


                    <div class="login-condition">
                        By clicking Creat Account you agree to our<br />
                        <a href="#">terms &#38; condition</a>
                    </div>
                    <div class="form-submit">
                        <!--<button class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary">Create Account</button>-->
                        <asp:Button ID="btnRegistrar" class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary" runat="server" Text="Crear Cuenta" OnClick="btnRegistrar_Click" />
                    </div>
                    <div class="or-using">Or Using</div>
                    <div class="social-login">
                        <a href="https://www.facebook.com/" class="social-facebook"><i class="fa fa-facebook"></i>Facebook</a>
                        <a href="https://accounts.google.com/" class="social-google"><i class="fa fa-google"></i>Google</a>
                    </div>
                    <div class="login-link">
                        <span class="paragraph-small">Already have an account?</span>
                        <a href="#" class="">Login Now</a>
                    </div>
                </div>

            </div>
        </div>
        <!-- End Register Section -->
        <!-- Start Emergency Section -->
        <div id="emergency">
            <div class="layer-stretch">
                <div class="layer-wrapper">
                    <div class="layer-ttl">
                        <h3>On Emergency</h3>
                    </div>
                    <div class="layer-container">
                        <div class="paragraph-medium paragraph-black">
                            At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas.
                        </div>
                        <div class="emergency-number">Call : 3016706105</div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Emergency Section -->
        <!-- Start Make an Appointment Modal -->
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
        </div>
        <!-- End Make an Appointment Modal -->
        <!-- Start Login Modal -->
        <div id="loginpopup" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <h5 class="modal-title">Login Now</h5>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body text-center">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-envelope-o"></i>
                            <input class="mdl-textfield__input" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" id="loginpopup-email">
                            <label class="mdl-textfield__label" for="loginpopup-email">Email <em>*</em></label>
                            <span class="mdl-textfield__error">Please Enter Valid Email!</span>
                        </div>
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-key"></i>
                            <input class="mdl-textfield__input" type="password" id="loginpopup-password">
                            <label class="mdl-textfield__label" for="loginpopup-password">Password <em>*</em></label>
                            <span class="mdl-textfield__error">Please Enter Valid Password!</span>
                            <div class="forgot-pass">Forgot Password?</div>
                        </div>
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon form-bot-check">
                            <i class="fa fa-question"></i>
                            <input class="mdl-textfield__input" type="number" id="loginpopup-bot">
                            <label class="mdl-textfield__label" for="loginpopup-bot">What is 7 plus 1 = <em>* </em></label>
                            <span class="mdl-textfield__error">Please Enter Correct Value!</span>
                        </div>
                        <div class="form-submit">
                            <button class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary">Login Now</button>
                        </div>
                        <div class="or-using">Or Using</div>
                        <div class="social-login">
                            <a href="#" class="social-facebook"><i class="fa fa-facebook"></i>Facebook</a>
                            <a href="#" class="social-google"><i class="fa fa-google"></i>Google</a>
                        </div>
                        <div class="login-link">
                            <span class="paragraph-small">Don't have an account?</span>
                            <a href="#" class="">Register as New User</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Login Modal -->
        <!-- Start Register Modal -->
        <div id="registerpopup" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <h5 class="modal-title">Register as New User</h5>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body text-center">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-user-o"></i>
                            <input class="mdl-textfield__input" type="text" pattern="[A-Z,a-z, ]*" id="registerpopup-name">
                            <label class="mdl-textfield__label" for="registerpopup-name">Name <em>*</em></label>
                            <span class="mdl-textfield__error">Please Enter Valid Name!</span>
                        </div>
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-envelope-o"></i>
                            <input class="mdl-textfield__input" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" id="registerpopup-email">
                            <label class="mdl-textfield__label" for="registerpopup-email">Email <em>*</em></label>
                            <span class="mdl-textfield__error">Please Enter Valid Email!</span>
                        </div>
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-key"></i>
                            <input class="mdl-textfield__input" type="password" id="registerpopup-password">
                            <label class="mdl-textfield__label" for="registerpopup-password">Password <em>*</em></label>
                            <span class="mdl-textfield__error">Please Enter Valid Password(Min 6 Character)!</span>
                        </div>
                        <div class="login-condition">By clicking Creat Account you agree to our <a href="#">terms &#38; condition</a></div>
                        <div class="form-submit">
                            <button class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary">Create Account</button>
                        </div>
                        <div class="or-using">Or Using</div>
                        <div class="social-login">
                            <a href="#" class="social-facebook"><i class="fa fa-facebook"></i>Facebook</a>
                            <a href="#" class="social-google"><i class="fa fa-google"></i>Google</a>
                        </div>
                        <div class="login-link">
                            <span class="paragraph-small">Already have an account?</span>
                            <a href="#" class="">Login Now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Register Modal -->
        <!-- Fixed Appointment Button at Bottom -->
        <div id="appointment-button" class="animated fadeInUp">
            <button id="appointment-now" class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored mdl-button--raised"><i class="fa fa-plus"></i></button>
            <div class="mdl-tooltip mdl-tooltip--top" data-mdl-for="appointment-now">Make An Appointment</div>
        </div>
        <!-- End Fixed Appointment Button at Bottom -->
        <!-- Start Footer Section -->
        <footer id="footer">
            <div class="layer-stretch">
                <!-- Start main Footer Section -->
                <div class="row layer-wrapper">
                    <div class="col-md-4 footer-block">
                        <div class="footer-ttl">
                            <p>Basic Info</p>
                        </div>
                        <div class="footer-container footer-a">
                            <div class="tbl">
                                <div class="tbl-row">
                                    <div class="tbl-cell"><i class="fa fa-map-marker"></i></div>
                                    <div class="tbl-cell">
                                        <p class="paragraph-medium paragraph-white">
                                            Your office, Building Name<br />
                                            Street name, Area<br />
                                            City, Country Pin Code
                                        </p>
                                    </div>
                                </div>
                                <div class="tbl-row">
                                    <div class="tbl-cell"><i class="fa fa-phone"></i></div>
                                    <div class="tbl-cell">
                                        <p class="paragraph-medium paragraph-white">11122333333</p>
                                    </div>
                                </div>
                                <div class="tbl-row">
                                    <div class="tbl-cell"><i class="fa fa-envelope"></i></div>
                                    <div class="tbl-cell">
                                        <p class="paragraph-medium paragraph-white">hello@yourdomain.com</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 footer-block">
                        <div class="footer-ttl">
                            <p>Quick Links</p>
                        </div>
                        <div class="footer-container footer-b">
                            <div class="tbl">
                                <div class="tbl-row">
                                    <ul class="tbl-cell">
                                        <li><a href="event-1.html">Event Style 1</a></li>
                                        <li><a href="event-2.html">Event Style 2</a></li>
                                        <li><a href="contact.html">Contact</a></li>
                                        <li><a href="gallery.html">Gallery</a></li>
                                        <li><a href="privacy-policy.html">Privacy policy</a></li>
                                        <li><a href="terms-conditions.html">Terms condition</a></li>
                                        <li><a href="faq.html">Faq</a></li>
                                    </ul>
                                    <ul class="tbl-cell">
                                        <li><a href="login.html">Login</a></li>
                                        <li><a href="register.html">Register</a></li>
                                        <li><a href="forgot.html">Forgot Password</a></li>
                                        <li><a href="myappointment.html">My Appointment</a></li>
                                        <li><a href="myrequest.html">My Request</a></li>
                                        <li><a href="myprofile.html">My Profile</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 footer-block">
                        <div class="footer-ttl">
                            <p>Newsletter</p>
                        </div>
                        <div class="footer-container footer-c">
                            <div class="footer-subscribe">
                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input">
                                    <input class="mdl-textfield__input" type="text" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" id="subscribe-email">
                                    <label class="mdl-textfield__label" for="subscribe-email">Your Email</label>
                                    <span class="mdl-textfield__error">Please Enter Valid Email!</span>
                                </div>
                                <div class="footer-subscribe-button">
                                    <button class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary">Submit</button>
                                </div>
                            </div>
                            <ul class="social-list social-list-colored footer-social">
                                <li>
                                    <a href="#" target="_blank" id="footer-facebook" class="fa fa-facebook"></a>
                                    <span class="mdl-tooltip mdl-tooltip--top" data-mdl-for="footer-facebook">Facebook</span>
                                </li>
                                <li>
                                    <a href="#" target="_blank" id="footer-twitter" class="fa fa-twitter"></a>
                                    <span class="mdl-tooltip mdl-tooltip--top" data-mdl-for="footer-twitter">Twitter</span>
                                </li>
                                <li>
                                    <a href="#" target="_blank" id="footer-google" class="fa fa-google"></a>
                                    <span class="mdl-tooltip mdl-tooltip--top" data-mdl-for="footer-google">Google</span>
                                </li>
                                <li>
                                    <a href="#" target="_blank" id="footer-instagram" class="fa fa-instagram"></a>
                                    <span class="mdl-tooltip mdl-tooltip--top" data-mdl-for="footer-instagram">Instagram</span>
                                </li>
                                <li>
                                    <a href="#" target="_blank" id="footer-youtube" class="fa fa-youtube"></a>
                                    <span class="mdl-tooltip mdl-tooltip--top" data-mdl-for="footer-youtube">Youtube</span>
                                </li>
                                <li>
                                    <a href="#" target="_blank" id="footer-linkedin" class="fa fa-linkedin"></a>
                                    <span class="mdl-tooltip mdl-tooltip--top" data-mdl-for="footer-linkedin">Linkedin</span>
                                </li>
                                <li>
                                    <a href="#" target="_blank" id="footer-flickr" class="fa fa-flickr"></a>
                                    <span class="mdl-tooltip mdl-tooltip--top" data-mdl-for="footer-flickr">Flickr</span>
                                </li>
                                <li>
                                    <a href="#" target="_blank" id="footer-rss" class="fa fa-rss"></a>
                                    <span class="mdl-tooltip mdl-tooltip--top" data-mdl-for="footer-rss">Rss</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End main Footer Section -->
            <!-- Start Copyright Section -->
            <div id="copyright">
                <div class="layer-stretch">
                    <div class="paragraph-medium paragraph-white">2017 © Pepdev ALL RIGHTS RESERVED.</div>
                </div>
            </div>
            <!-- End of Copyright Section -->
        </footer>
        <!-- End of Footer Section -->

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
    </body>
    </html>
</asp:Content>
