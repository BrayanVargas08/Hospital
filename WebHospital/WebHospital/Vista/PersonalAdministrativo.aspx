<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterAdministrador.Master" AutoEventWireup="true" CodeBehind="PersonalAdministrativo.aspx.cs" Inherits="WebHospital.Vista.PersonalAdministrativo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
    <html lang="en">
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

        <!-- Start Page Title Section -->
        <div class="page-ttl">
            <div class="layer-stretch">
                <div class="page-ttl-container">
                    <h1>Doctors</h1>
                    <p><a href="#">Home</a> &#8594; <span>Doctors</span></p>
                </div>
            </div>
        </div>
        <!-- End Page Title Section -->
        <div id="doctor-page" class="layer-stretch">
            <div class="layer-wrapper text-center">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="theme-material-card text-center">
                            <div class="sub-ttl">Registro Personal Administrativo</div>

                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon form-bot-check">
                                <asp:RadioButtonList ID="rblAdministrativos" runat="server" RepeatDirection="Horizontal" CellPadding="10">
                                    <asp:ListItem >Gerente</asp:ListItem>
                                    <asp:ListItem Value="2">Emfermero Gefe</asp:ListItem>
                                    <asp:ListItem>Secretari(@)</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>

                            <div class="col-md-7">
                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                                    <i class="fa fa-user-o"></i>
                                    <asp:TextBox ID="txtNombre" runat="server" class="mdl-textfield__input"></asp:TextBox>
                                    <label class="mdl-textfield__label">Nombre</label>
                                    <span class="mdl-textfield__error">Porfavor !</span>
                                </div>


                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                                    <i class="fa fa-user-circle"></i>
                                    <asp:TextBox ID="txtApellido" class="mdl-textfield__input" runat="server"></asp:TextBox>
                                    <label class="mdl-textfield__label">Apellido</label>
                                    <span class="mdl-textfield__error">Por favor ingrese un apellido valido!</span>
                                </div>

                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                                    <i class="fa fa-address-card-o"></i>
                                    <asp:TextBox ID="txtDocumento" class="mdl-textfield__input" runat="server"></asp:TextBox>
                                    <label class="mdl-textfield__label" for="sideapnt-name">Documento</label>
                                    <span class="mdl-textfield__error">Por favor ingrese un Documento valido!</span>
                                </div>

                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                                    <i class="fa fa-envelope-o"></i>
                                    <asp:TextBox ID="txtemail" class="mdl-textfield__input" runat="server"></asp:TextBox>
                                    <label class="mdl-textfield__label" for="sideapnt-email">Email</label>
                                    <span class="mdl-textfield__error">Por favor ingrese un Email valido</span>
                                </div>

                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                                    <i class="fa fa-phone"></i>
                                    <asp:TextBox ID="txtTelefono" class="mdl-textfield__input" runat="server"></asp:TextBox>
                                    <label class="mdl-textfield__label" for="sideapnt-name">Telefono</label>
                                    <span class="mdl-textfield__error">Por favor ingrese un Telefono valido!</span>
                                </div>

                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                                    <i class="fa fa-home"></i>
                                    <asp:TextBox ID="txtDireccion" class="mdl-textfield__input" runat="server"></asp:TextBox>
                                    <label class="mdl-textfield__label" for="sideapnt-mobile">Dirección</label>
                                    <span class="mdl-textfield__error">Porfavor ingrese una Direccion valida</span>
                                </div>

                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                                    <i class="fa fa-key"></i>
                                    <asp:TextBox ID="txtPassword" class="mdl-textfield__input" runat="server"></asp:TextBox>
                                    <label class="mdl-textfield__label" for="sideapnt-mobile">Contraseña</label>
                                    <span class="mdl-textfield__error">Porfavor ingrese una contraseña</span>
                                </div>
                            </div>
                            <div class="side-error"></div>
                            <asp:Button ID="btnRegistrar" class="mdl-button mdl-js-button mdl-button--colored mdl-js-ripple-effect mdl-button--raised button button-primary m-1" data-loading-text="<i class='fa fa-spinner fa-spin'></i> Processing" runat="server" Text="Guardar" OnClick="btnRegistrar_Click" />
                        </div>
                    </div>

                    <%--//prueba--%>

                    <div class="col-sm-6">
                        <div class="theme-material-card text-center">
                            <div class="sub-ttl">Registro Personal Administrativo</div>

                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon form-bot-check">
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" CellPadding="10">
                                </asp:RadioButtonList>
                            </div>

                            <div class="col-md-7">
                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                                    <i class="fa fa-user-o"></i>
                                    <asp:TextBox ID="TextBox1" runat="server" class="mdl-textfield__input"></asp:TextBox>
                                    <label class="mdl-textfield__label">Nombre</label>
                                    <span class="mdl-textfield__error">Porfavor !</span>
                                </div>


                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                                    <i class="fa fa-user-circle"></i>
                                    <asp:TextBox ID="TextBox2" class="mdl-textfield__input" runat="server"></asp:TextBox>
                                    <label class="mdl-textfield__label">Apellido</label>
                                    <span class="mdl-textfield__error">Por favor ingrese un apellido valido!</span>
                                </div>

                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                                    <i class="fa fa-address-card-o"></i>
                                    <asp:TextBox ID="TextBox3" class="mdl-textfield__input" runat="server"></asp:TextBox>
                                    <label class="mdl-textfield__label" for="sideapnt-name">Documento</label>
                                    <span class="mdl-textfield__error">Por favor ingrese un Documento valido!</span>
                                </div>

                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                                    <i class="fa fa-envelope-o"></i>
                                    <asp:TextBox ID="TextBox4" class="mdl-textfield__input" runat="server"></asp:TextBox>
                                    <label class="mdl-textfield__label" for="sideapnt-email">Email</label>
                                    <span class="mdl-textfield__error">Por favor ingrese un Email valido</span>
                                </div>

                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                                    <i class="fa fa-phone"></i>
                                    <asp:TextBox ID="TextBox5" class="mdl-textfield__input" runat="server"></asp:TextBox>
                                    <label class="mdl-textfield__label" for="sideapnt-name">Telefono</label>
                                    <span class="mdl-textfield__error">Por favor ingrese un Telefono valido!</span>
                                </div>

                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                                    <i class="fa fa-home"></i>
                                    <asp:TextBox ID="TextBox6" class="mdl-textfield__input" runat="server"></asp:TextBox>
                                    <label class="mdl-textfield__label" for="sideapnt-mobile">Dirección</label>
                                    <span class="mdl-textfield__error">Porfavor ingrese una Direccion valida</span>
                                </div>

                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                                    <i class="fa fa-key"></i>
                                    <asp:TextBox ID="TextBox7" class="mdl-textfield__input" runat="server"></asp:TextBox>
                                    <label class="mdl-textfield__label" for="sideapnt-mobile">Contraseña</label>
                                    <span class="mdl-textfield__error">Porfavor ingrese una contraseña</span>
                                </div>
                            </div>
                            <div class="side-error"></div>
                            <asp:Button ID="Button1" class="mdl-button mdl-js-button mdl-button--colored mdl-js-ripple-effect mdl-button--raised button button-primary m-1" data-loading-text="<i class='fa fa-spinner fa-spin'></i> Processing" runat="server" Text="Guardar" OnClick="btnRegistrar_Click" />
                        </div>
                    </div>


                </div>
            </div>
        </div>

    </body>

    </html>
</asp:Content>
