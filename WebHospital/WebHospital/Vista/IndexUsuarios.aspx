<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterUsuarios.Master" AutoEventWireup="true" CodeBehind="IndexUsuarios.aspx.cs" Inherits="WebHospital.Vista.IndexUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <<<<<<< Updated upstream
    <%--<form runat="server">--%>
    <!-- cuerpo de la pagina-->
    <div id="slider" class="slider-height">
        <div class="flexslider slider-wrapper">
            <ul class="slides">
                <li>
                    <div class="slider-info">
                        <h1 class="animated fadeInDown">Hospital de Paz de ariporo</h1>
                        <p class="animated fadeInDown">RED SALUD CASANARE E.S.E, es la institución que presta servicios de salud de primer Nivel de atención de forma íntegra y humanizada, con seguridad, calidad, pertinencia y compromiso con el bienestar de la comunidad en 16 municipios del Departamento de Casanare . #twitterhash, @facebooktag</p>
                    </div>
                    <img src="Template/images/descargar.jpg" alt="" />
                    <%--<div class="slider-button slider-appointment">
                        <a class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect animated fadeInUp">Haga su Cita<i class="fa fa-flag-checkered"></i></a>
                    </div>--%>
                </li>
                <li>
                    <div class="slider-info">
                        <h2>Nuestra Identidad Nuestra Responsabilidad</h2>
                        <p>RED SALUD CASANARE E.S.E., para el año 2020, se consolidará en el ámbito Departamental, como una empresa moderna, altamente competitiva y auto sostenible, que brinde servicios integrales de Salud en los niveles I y II ambulatorio, con calidad, eficiencia y eficacia. elit#twitterhash, @facebooktag</p>
                    </div>
                    <img src="Template/images/hospital2.jpg" alt="" />
                    <%--<div class="slider-button slider-appointment">
                        <a class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect animated fadeInUp">Mas informacion <i class="fa fa-external-link"></i></a>
                    </div>--%>
                </li>
                <li>
                    <div class="slider-info">
                        <h2>Servicio las 24/7</h2>
                        <p>A esta hora, los Funcionarios Administrativos de Red Salud Casanare E.S.E realizan la jornada laboral desde el Hospital Local de Paz de Ariporo, como iniciativa para conocer y observar el funcionamiento de la IPS. Además, las necesidades de los usuarios, colaboradores y de la comunidad en general #twitterhash, @facebooktag</p>
                    </div>
                    <img src="Template/images/hospiatal23.jpg" alt="" />
                    <%--<div class="slider-button slider-appointment">
                        <a class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect animated fadeInUp">About Us<i class="fa fa-chevron-right"></i></a>
                    </div>--%>
                </li>
            </ul>
=======
>>>>>>> Stashed changes

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

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbHospitalPazConnectionString1 %>" ProviderName="<%$ ConnectionStrings:dbHospitalPazConnectionString1.ProviderName %>"></asp:SqlDataSource>
                    <asp:GridView ID="gvCitas" runat="server" AllowPaging="True" CssClass="auto-style2" DataSourceID="SqlDataSource1" Height="186px" Width="378px" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
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
    
</div>
    </div>
</asp:Content>
