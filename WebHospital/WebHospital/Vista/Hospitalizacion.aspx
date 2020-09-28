<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterAdministrador.Master" AutoEventWireup="true" CodeBehind="Hospitalizacion.aspx.cs" Inherits="WebHospital.Vista.Hospitalizacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form  runat="server">
  
   
   <!-- Start Page Title Section -->
    <div class="page-ttl">
        <div class="layer-stretch">
            <div class="page-ttl-container">
                <h1>HOSPITALIZACION</h1>
                <p><a href="#">ADMINISTRADOR</a> &#8594; <span>Bienvenido HOSPITALIZACION</span></p>
            </div>
        </div>
    </div><!-- End Page Title Section -->
       

    <!-- Start Register Section -->
    <div class="layer-stretch">

        <div class="layer-wrapper">
             <asp:Button class="close" data-dismiss="modal">&times;</asp:Button>
            
             <br />
             <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="IdPaciente" DataSourceID="SqlDataSource2" EmptyDataText="No hay registros de datos para mostrar." OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                 <Columns>
                     <asp:BoundField DataField="IdPaciente" HeaderText="IdPaciente" ReadOnly="True" SortExpression="IdPaciente" Visible="False" />
                     <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                     <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                     <asp:BoundField DataField="Documento" HeaderText="Documento" SortExpression="Documento" />
                     <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" Visible="False" />
                     <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                     <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                     <asp:BoundField DataField="FechaNacimiento" HeaderText="FechaNacimiento" SortExpression="FechaNacimiento" />
                     <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" Visible="False" />
                     <asp:BoundField DataField="Genero" HeaderText="Genero" SortExpression="Genero" />
                     <asp:BoundField DataField="IdEps" HeaderText="IdEps" SortExpression="IdEps" Visible="False" />
                     <asp:CommandField SelectText="Agregar" ShowSelectButton="True" />
                 </Columns>
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbHospitalPazConnectionString1 %>" DeleteCommand="DELETE FROM [Paciente] WHERE [IdPaciente] = @IdPaciente" InsertCommand="INSERT INTO [Paciente] ([Nombre], [Apellido], [Documento], [email], [Direccion], [Telefono], [FechaNacimiento], [Password], [Genero], [IdEps]) VALUES (@Nombre, @Apellido, @Documento, @email, @Direccion, @Telefono, @FechaNacimiento, @Password, @Genero, @IdEps)" ProviderName="<%$ ConnectionStrings:dbHospitalPazConnectionString1.ProviderName %>" SelectCommand="SELECT [IdPaciente], [Nombre], [Apellido], [Documento], [email], [Direccion], [Telefono], [FechaNacimiento], [Password], [Genero], [IdEps] FROM [Paciente]" UpdateCommand="UPDATE [Paciente] SET [Nombre] = @Nombre, [Apellido] = @Apellido, [Documento] = @Documento, [email] = @email, [Direccion] = @Direccion, [Telefono] = @Telefono, [FechaNacimiento] = @FechaNacimiento, [Password] = @Password, [Genero] = @Genero, [IdEps] = @IdEps WHERE [IdPaciente] = @IdPaciente">
                 <DeleteParameters>
                     <asp:Parameter Name="IdPaciente" Type="Int32" />
                 </DeleteParameters>
                 <InsertParameters>
                     <asp:Parameter Name="Nombre" Type="String" />
                     <asp:Parameter Name="Apellido" Type="String" />
                     <asp:Parameter Name="Documento" Type="String" />
                     <asp:Parameter Name="email" Type="String" />
                     <asp:Parameter Name="Direccion" Type="String" />
                     <asp:Parameter Name="Telefono" Type="Int64" />
                     <asp:Parameter DbType="Date" Name="FechaNacimiento" />
                     <asp:Parameter Name="Password" Type="String" />
                     <asp:Parameter Name="Genero" Type="String" />
                     <asp:Parameter Name="IdEps" Type="Int32" />
                 </InsertParameters>
                 <UpdateParameters>
                     <asp:Parameter Name="Nombre" Type="String" />
                     <asp:Parameter Name="Apellido" Type="String" />
                     <asp:Parameter Name="Documento" Type="String" />
                     <asp:Parameter Name="email" Type="String" />
                     <asp:Parameter Name="Direccion" Type="String" />
                     <asp:Parameter Name="Telefono" Type="Int64" />
                     <asp:Parameter DbType="Date" Name="FechaNacimiento" />
                     <asp:Parameter Name="Password" Type="String" />
                     <asp:Parameter Name="Genero" Type="String" />
                     <asp:Parameter Name="IdEps" Type="Int32" />
                     <asp:Parameter Name="IdPaciente" Type="Int32" />
                 </UpdateParameters>
             </asp:SqlDataSource>
             <br />
            
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IdHospitalizacion" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                 <Columns>
                     <asp:BoundField DataField="IdHospitalizacion" HeaderText="IdHospitalizacion" ReadOnly="True" SortExpression="IdHospitalizacion" Visible="False" />
                     <asp:BoundField DataField="FechaHIngreso" HeaderText="FechaHIngreso" SortExpression="FechaHIngreso" />
                     <asp:BoundField DataField="FechaHSalida" HeaderText="FechaHSalida" SortExpression="FechaHSalida" />
                     <asp:BoundField DataField="Motivo" HeaderText="Motivo" SortExpression="Motivo" />
                     <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                     <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" SortExpression="Observaciones" />
                     <asp:BoundField DataField="IdPaciente" HeaderText="IdPaciente" SortExpression="IdPaciente" />
                     <asp:BoundField DataField="IdUrgencia" HeaderText="IdUrgencia" SortExpression="IdUrgencia" />
                 </Columns>
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbHospitalPazConnectionString1 %>" DeleteCommand="DELETE FROM [Hospitalizacion] WHERE [IdHospitalizacion] = @IdHospitalizacion" InsertCommand="INSERT INTO [Hospitalizacion] ([FechaHIngreso], [FechaHSalida], [Motivo], [Descripcion], [Observaciones], [IdPaciente], [IdUrgencia]) VALUES (@FechaHIngreso, @FechaHSalida, @Motivo, @Descripcion, @Observaciones, @IdPaciente, @IdUrgencia)" ProviderName="<%$ ConnectionStrings:dbHospitalPazConnectionString1.ProviderName %>" SelectCommand="SELECT [IdHospitalizacion], [FechaHIngreso], [FechaHSalida], [Motivo], [Descripcion], [Observaciones], [IdPaciente], [IdUrgencia] FROM [Hospitalizacion]" UpdateCommand="UPDATE [Hospitalizacion] SET [FechaHIngreso] = @FechaHIngreso, [FechaHSalida] = @FechaHSalida, [Motivo] = @Motivo, [Descripcion] = @Descripcion, [Observaciones] = @Observaciones, [IdPaciente] = @IdPaciente, [IdUrgencia] = @IdUrgencia WHERE [IdHospitalizacion] = @IdHospitalizacion">
                 <DeleteParameters>
                     <asp:Parameter Name="IdHospitalizacion" Type="Int32" />
                 </DeleteParameters>
                 <InsertParameters>
                     <asp:Parameter Name="FechaHIngreso" Type="DateTime" />
                     <asp:Parameter Name="FechaHSalida" Type="DateTime" />
                     <asp:Parameter Name="Motivo" Type="String" />
                     <asp:Parameter Name="Descripcion" Type="String" />
                     <asp:Parameter Name="Observaciones" Type="String" />
                     <asp:Parameter Name="IdPaciente" Type="Int32" />
                     <asp:Parameter Name="IdUrgencia" Type="Int32" />
                 </InsertParameters>
                 <UpdateParameters>
                     <asp:Parameter Name="FechaHIngreso" Type="DateTime" />
                     <asp:Parameter Name="FechaHSalida" Type="DateTime" />
                     <asp:Parameter Name="Motivo" Type="String" />
                     <asp:Parameter Name="Descripcion" Type="String" />
                     <asp:Parameter Name="Observaciones" Type="String" />
                     <asp:Parameter Name="IdPaciente" Type="Int32" />
                     <asp:Parameter Name="IdUrgencia" Type="Int32" />
                     <asp:Parameter Name="IdHospitalizacion" Type="Int32" />
                 </UpdateParameters>
             </asp:SqlDataSource>
            
            <div class="form-container">
                
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                    <i class="fa fa-user-o"></i>
                    <asp:TextBox ID="txtFechaHingreso" runat="server" class="mdl-textfield__input" ></asp:TextBox>
                   <label class="mdl-textfield__label" for="appointment-name">Fecha Ingreso</label>
                   <span class="mdl-textfield__error">Porfavor verifique su fecha de traslado!</span>
                </div>
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                    <i class="fa fa-user-o"></i>
                    <asp:TextBox ID="txtFechaHSalida" runat="server" class="mdl-textfield__input" ></asp:TextBox>
                   <label class="mdl-textfield__label" for="appointment-name">Fecha Salida</label>
                   <span class="mdl-textfield__error">Porfavor verifique su Descripcion!</span>
                </div>
                 <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                    <i class="fa fa-user-o"></i>
                    <asp:TextBox ID="TxtMotivo" runat="server" class="mdl-textfield__input" ></asp:TextBox>
                   <label class="mdl-textfield__label" for="appointment-name">Motivo</label>
                   <span class="mdl-textfield__error">Porfavor verifique su destino!</span>
                </div>
                 <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                    <i class="fa fa-user-o"></i>
                   <asp:TextBox ID="TxtDescripcion" runat="server" class="mdl-textfield__input" ></asp:TextBox>
                   <label class="mdl-textfield__label" for="appointment-name">Descripcion</label>
                   <span class="mdl-textfield__error">Porfavor verifique su Ambulancia!</span>
                </div>
                 <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                    <i class="fa fa-user-o"></i>
                   <asp:TextBox ID="TxtObservaciones" runat="server" class="mdl-textfield__input" ></asp:TextBox>
                   <label class="mdl-textfield__label" for="appointment-name">Observaciones</label>
                   <span class="mdl-textfield__error">Porfavor verifique su Ambulancia!</span>
                </div>
                 <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                    <i class="fa fa-user-o"></i>
                   <asp:TextBox ID="TxtPaciente" runat="server" class="mdl-textfield__input" ></asp:TextBox>
                   <label class="mdl-textfield__label" for="appointment-name">Paciente</label>
                   <span class="mdl-textfield__error">Porfavor verifique su Ambulancia!</span>
                </div>
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                    <i class="fa fa-user-o"></i>
                   <asp:TextBox ID="txturgencia" runat="server" class="mdl-textfield__input" ></asp:TextBox>
                   <label class="mdl-textfield__label" for="appointment-name">Urgencia</label>
                   <span class="mdl-textfield__error">Porfavor verifique su Ambulancia!</span>
                </div>
                
                <asp:Button ID="btnRegistroHospitalizacion" runat="server" class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary" Text="Registro de Hospitalizacion" OnClick="btnRegistroHospitalizacion_Click" ></asp:Button>
               
                <div class="form-submit">
                                       
                </div>
               
            </div>

        </div>
    </div><!-- End Register Section -->
</form>
</asp:Content>
