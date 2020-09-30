<style type="text/css">
    .auto-style1 {
        left: 0px;
        top: 0px;
        height: 381px;
    }
    .auto-style2 {
        margin-left: 90px;
    }
</style>
2<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CITAS.aspx.cs" Inherits="WebHospital.Vista.Template.WebForm1" %>

<!DOCTYPE html><html xmlns="http://www.w3.org/1999/xhtml"><head runat="server"><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><meta http-equiv="X-UA-Compatible" content="IE=edge"><meta name="viewport" content="width=device-width, initial-scale=1.0"><!-- Site Title --><title>Klinik health care - HTML5 &#38; CSS3 Template for Clinic and Hospital</title><!-- Meta Description Tag --><meta name="Description" content="Klinik is a HTML5 & CSS3 responsive template" /><!-- Favicon Icon --><link rel="icon" type="image/x-icon" href="images/favicon.png" /><!-- Font Awesoeme Stylesheet CSS --><link rel="stylesheet" href="font-awesome/css/font-awesome.min.css" /><!-- Google web Font --><link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Montserrat:400,500" /><!-- Bootstrap core CSS --><link rel="stylesheet" href="css/bootstrap.min.css" /><!-- Material Design Lite Stylesheet CSS --><link rel="stylesheet" href="css/material.min.css" /><!-- Material Design Select Field Stylesheet CSS --><link rel="stylesheet" href="css/mdl-selectfield.min.css" /><!-- Owl Carousel Stylesheet CSS --><link rel="stylesheet" href="css/owl.carousel.min.css" /><!-- Animate Stylesheet CSS --><link rel="stylesheet" href="css/animate.min.css" /><!-- Magnific Popup Stylesheet CSS --><link rel="stylesheet" href="css/magnific-popup.css" /><!-- Flex Slider Stylesheet CSS --><link rel="stylesheet" href="css/flexslider.css" /><!-- Custom Main Stylesheet CSS --><link rel="stylesheet" href="css/style.css" /></head><body><form id="form1" runat="server">
        <%--Formulario Citas--%>
        <div class="auto-style1">
            <div class="row">
                <div class="col-md-4">
                    <div class="theme-material-card text-center">
                        <div class="modal-header text-center">
                            <h5 class="modal-title">AGENDE AQUI SU CITA </h5>
                        </div>
                        <div class="modal-body">

                            <div class="col-md-9">
                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                                    <i class="fa fa-user-o"></i>
                                    <asp:TextBox ID="TxtDocumento" runat="server" class="mdl-textfield__input" pattern="[0-9 ]*"></asp:TextBox>
                                    <label class="mdl-textfield__label" for="appointment-name">Documento</label>
                                    <span class="mdl-textfield__error">Porfavor verifique su documento!</span>
                                </div>
                            </div>


                            <div class="col-md-9">
                                <div class="mdl-selectfield mdl-js-selectfield mdl-selectfield--floating-label form-input-icon">
                                    <i class="fa fa-hospital-o"></i>
                                    <asp:DropDownList ID="dropEspecialidad" runat="server" class="mdl-selectfield__select" AutoPostBack="true" OnSelectedIndexChanged="EspecialidadSeleccionada"></asp:DropDownList>
                                    <label class="mdl-selectfield__label" for="appointment-department">Selecione Especialidad</label>
                                </div>
                            </div>
                            <div class="col-md-9">
                                <div class="mdl-selectfield mdl-js-selectfield mdl-selectfield--floating-label form-input-icon">
                                    <i class="fa fa-user-md"></i>
                                    <asp:DropDownList ID="dropEspecialista" runat="server" class="mdl-selectfield__select" AutoPostBack="true"></asp:DropDownList>
                                    <label class="mdl-selectfield__label" for="appointment-doctor">Seleccione Un Especialista</label>
                                </div>
                            </div>

                            <div class="col-md-9">
                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                                    <i class="fa fa-user-o"></i>
                                    <asp:TextBox ID="txtF" class="mdl-textfield__input" onfocus="(this.type='date')" runat="server"></asp:TextBox>
                                    <%--<asp:TextBox ID="txtfechaCita" runat="server" class="mdl-textfield__input" onfocus="(this.type='date')"></asp:TextBox>--%>
                                    <label class="mdl-textfield__label" for="appointment-name">Fecha de Cita</label>
                                    <span class="mdl-textfield__error">Porfavor verifique su fecha de Cita!</span>
                                </div>
                            </div>

                        </div>
                        <div class="text-center pt-4">

                            <asp:Button ID="btnRegistrarCita" runat="server" class="mdl-button mdl-js-button mdl-button--colored mdl-js-ripple-effect mdl-button--raised button button-primary button-lg make-appointment" OnClick="btnRegistrarCita_Click" Text="AGENDAR CITA" />

                        </div>
                    </div>
                </div>

                <%--Lista de Citas--%>

                <div class="col-md-7">
                    <div class="theme-material-card text-center">

                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbHospitalPazConnectionString1 %>" ProviderName="<%$ ConnectionStrings:dbHospitalPazConnectionString1.ProviderName %>">
                        </asp:SqlDataSource>
                        <asp:GridView ID="gvCitas" runat="server" AllowPaging="True" CssClass="auto-style2" DataSourceID="SqlDataSource1" Height="186px" Width="378px">
                        </asp:GridView>

                    </div>
                </div>
            </div>


            

            
        </div>




        <!-- End Make an Appointment Modal -->


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
            (function (i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date(); a = s.createElement(o),
                    m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
            })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');
            ga('create', 'UA-93901876-1', 'auto');
            ga('send', 'pageview');
        </script>
    </form>
</body>
</html>
