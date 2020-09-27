<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterAdministrador.Master" AutoEventWireup="true" CodeBehind="Hospitalizacion.aspx.cs" Inherits="WebHospital.Vista.Hospitalizacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form  runat="server">
  
   
   <!-- Start Page Title Section -->
    <div class="page-ttl">
        <div class="layer-stretch">
            <div class="page-ttl-container">
                <h1>HOSPITALIZACION</h1>
                <p><a href="#">ADMINISTRADOR</a> &#8594; <span>Bienvenido  HOSPITALIZACION</span></p>
            </div>
        </div>
    </div><!-- End Page Title Section -->
       

    <!-- Start Register Section -->
    <div class="layer-stretch">

        <div class="layer-wrapper">
             <asp:Button class="close" data-dismiss="modal">&times;</asp:Button>
            
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IdUrgencia" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged2">
                 <AlternatingRowStyle BackColor="White" />
                 <Columns>
                     <asp:BoundField DataField="IdUrgencia" HeaderText="IdUrgencia" ReadOnly="True" SortExpression="IdUrgencia" />
                     <asp:BoundField DataField="FechaHIngreso" HeaderText="FechaHIngreso" SortExpression="FechaHIngreso" />
                     <asp:BoundField DataField="FechaHSalida" HeaderText="FechaHSalida" SortExpression="FechaHSalida" />
                     <asp:BoundField DataField="Motivo" HeaderText="Motivo" SortExpression="Motivo" />
                     <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                     <asp:BoundField DataField="IdTriage" HeaderText="IdTriage" SortExpression="IdTriage" />
                     <asp:BoundField DataField="IdPaciente" HeaderText="IdPaciente" SortExpression="IdPaciente" />
                     <asp:BoundField DataField="IdMedico" HeaderText="IdMedico" SortExpression="IdMedico" Visible="False" />
                     <asp:CommandField SelectText="AGREGAR" ShowSelectButton="True" />
                 </Columns>
                 <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                 <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                 <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                 <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                 <SortedAscendingCellStyle BackColor="#FDF5AC" />
                 <SortedAscendingHeaderStyle BackColor="#4D0000" />
                 <SortedDescendingCellStyle BackColor="#FCF6C0" />
                 <SortedDescendingHeaderStyle BackColor="#820000" />
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbHospitalPazConnectionString1 %>" DeleteCommand="DELETE FROM [Urgencia] WHERE [IdUrgencia] = @IdUrgencia" InsertCommand="INSERT INTO [Urgencia] ([FechaHIngreso], [FechaHSalida], [Motivo], [Descripcion], [IdTriage], [IdPaciente], [IdMedico]) VALUES (@FechaHIngreso, @FechaHSalida, @Motivo, @Descripcion, @IdTriage, @IdPaciente, @IdMedico)" ProviderName="<%$ ConnectionStrings:dbHospitalPazConnectionString1.ProviderName %>" SelectCommand="SELECT [IdUrgencia], [FechaHIngreso], [FechaHSalida], [Motivo], [Descripcion], [IdTriage], [IdPaciente], [IdMedico] FROM [Urgencia]" UpdateCommand="UPDATE [Urgencia] SET [FechaHIngreso] = @FechaHIngreso, [FechaHSalida] = @FechaHSalida, [Motivo] = @Motivo, [Descripcion] = @Descripcion, [IdTriage] = @IdTriage, [IdPaciente] = @IdPaciente, [IdMedico] = @IdMedico WHERE [IdUrgencia] = @IdUrgencia">
                 <DeleteParameters>
                     <asp:Parameter Name="IdUrgencia" Type="Int32" />
                 </DeleteParameters>
                 <InsertParameters>
                     <asp:Parameter Name="FechaHIngreso" Type="DateTime" />
                     <asp:Parameter Name="FechaHSalida" Type="DateTime" />
                     <asp:Parameter Name="Motivo" Type="String" />
                     <asp:Parameter Name="Descripcion" Type="String" />
                     <asp:Parameter Name="IdTriage" Type="Int32" />
                     <asp:Parameter Name="IdPaciente" Type="Int32" />
                     <asp:Parameter Name="IdMedico" Type="Int32" />
                 </InsertParameters>
                 <UpdateParameters>
                     <asp:Parameter Name="FechaHIngreso" Type="DateTime" />
                     <asp:Parameter Name="FechaHSalida" Type="DateTime" />
                     <asp:Parameter Name="Motivo" Type="String" />
                     <asp:Parameter Name="Descripcion" Type="String" />
                     <asp:Parameter Name="IdTriage" Type="Int32" />
                     <asp:Parameter Name="IdPaciente" Type="Int32" />
                     <asp:Parameter Name="IdMedico" Type="Int32" />
                     <asp:Parameter Name="IdUrgencia" Type="Int32" />
                 </UpdateParameters>
             </asp:SqlDataSource>
            
             <br />
             <br />
            
            <div class="form-container">
                
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                    <i class="fa fa-user-o"></i>
                    <asp:TextBox ID="txtFechaHingreso" runat="server" class="mdl-textfield__input" onfocus="(this.type='date')" onblur="(this.type='text')" ></asp:TextBox>
                   <label class="mdl-textfield__label" for="appointment-name">Fecha Ingreso</label>
                   <span class="mdl-textfield__error">Porfavor verifique su fecha de traslado!</span>
                </div>
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                    <i class="fa fa-user-o"></i>
                    <asp:TextBox ID="txtFechaHSalida" runat="server" class="mdl-textfield__input" onfocus="(this.type='date')" onblur="(this.type='text')" ></asp:TextBox>
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
