<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterMedico.Master" AutoEventWireup="true" CodeBehind="ProcesoGeneral.aspx.cs" Inherits="WebHospital.Vista.ProcesoGeneral" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">

        <!-- Start Page Title Section -->
        <div class="page-ttl">
            <div class="layer-stretch">
                <div class="page-ttl-container">
                    <h1>PROCEDIMIENTOS</h1>
                    <p><a href="indexadministrador.aspx">Home</a> &#8594; <span>Bienvenido a Procedimientos</span></p>
                </div>
            </div>
        </div>
        <!-- End Page Title Section -->
        <!-- Start Register Section -->
        <div class="layer-stretch">


            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                <i class="fa fa-user-o"></i>
                <asp:TextBox ID="txtbuscar" runat="server" class="mdl-textfield__input"></asp:TextBox>
                <label class="mdl-textfield__label" for="appointment-name">Buscar Paciente</label>
                <span class="mdl-textfield__error">Porfavor verifique el buscar del paciente!</span>
                <!-- botones -->
            </div>
            <div class="form-submit">
                <%--<asp:Button ID="butonBuscar" runat="server" class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary" Text="Buscar" OnClick="butonBuscar_Click"></asp:Button>--%>
                &nbsp;<br />
                <%--<asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                    <Columns>
                        <asp:CommandField SelectText="AGREGAR" ShowSelectButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>--%>
                <br />
                <br />
            </div>
            <!-- datagriv -->
            <div class="layer-wrapper">
                <asp:Button class="close" data-dismiss="modal">&times;</asp:Button>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource1" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField SelectText="AGREGAR" ShowSelectButton="True" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#487575" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#275353" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbHospitalPazConnectionString1 %>" ProviderName="<%$ ConnectionStrings:dbHospitalPazConnectionString1.ProviderName %>" SelectCommand="SELECT Especialidad.Especialidad, Medico.Nombre&quot;Nombre Medico&quot;, Medico.Apellido&quot;Apellido Medico&quot;, Paciente.IdPaciente, Paciente.Nombre&quot;Nombre Paciente&quot;, Paciente.Apellido&quot;Apellido Paciente&quot;, Paciente.Documento FROM Especialidad INNER JOIN Medico ON Especialidad.IdEspecialidad = Medico.IdEspecialidad CROSS JOIN Paciente"></asp:SqlDataSource>
                <div class="form-container">
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-user-o"></i>
                        <asp:TextBox ID="txtDiagnostico" runat="server" class="mdl-textfield__input"></asp:TextBox>
                        <label class="mdl-textfield__label" for="appointment-name">Diagnostico</label>
                        <span class="mdl-textfield__error">Porfavor verifique su Diagnostico!</span>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-user-o"></i>
                        <asp:TextBox ID="txtValoracion" runat="server" class="mdl-textfield__input"></asp:TextBox>
                        <label class="mdl-textfield__label" for="appointment-name">Valoracion</label>
                        <span class="mdl-textfield__error">Porfavor verifique su Valoracion!</span>
                    </div>
                     <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                        <i class="fa fa-user-o"></i>
                        <asp:TextBox ID="txtPaciente" runat="server" class="mdl-textfield__input"></asp:TextBox>
                        <label class="mdl-textfield__label" for="appointment-name">Paciente</label>
                        <span class="mdl-textfield__error">Porfavor verifique su Paciente!</span>
                    </div>
                         <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-user-o"></i>
                            <i class="fa fa-hospital-o"></i>
                            <%--<asp:DropDownList ID="cmbEspecialidad" runat="server" class="mdl-textfield__input"></asp:DropDownList>--%>
                           <asp:DropDownList ID="dropEspecialidad" runat="server" class="mdl-selectfield__select" AutoPostBack="true" OnSelectedIndexChanged="EspecialidadSeleccionada"></asp:DropDownList>
                            <label class="mdl-textfield__label" for="appointment-name">Especialidad</label>
                            <span class="mdl-textfield__error">Porfavor verifique su Especialidad!</span>
                        </div>
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                            <i class="fa fa-user-md"></i>
                            <%--<asp:DropDownList ID="cmbMedico" runat="server" class="mdl-textfield__input"></asp:DropDownList>--%>
                           <asp:DropDownList ID="dropEspecialista" runat="server" class="mdl-selectfield__select" AutoPostBack="true"></asp:DropDownList>
                            <label class="mdl-textfield__label" for="appointment-name">Medico</label>
                            <span class="mdl-textfield__error">Porfavor verifique su medico!</span>
                        </div>
                        <div class="form-submit">
                            <asp:Button ID="btnRegistrar" runat="server" class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary" Text="Registrar Proceso" OnClick="btnRegistrar_Click" Style="left: 35px; bottom: -30px"></asp:Button>
                        </div>


                    </div>
                </div>
            </div>
            <!-- End Register Section -->
    </form>

</asp:Content>
