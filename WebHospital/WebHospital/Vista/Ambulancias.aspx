<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterAdministrador.Master" AutoEventWireup="true" CodeBehind="Ambulancias.aspx.cs" Inherits="WebHospital.Vista.Ambulancias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form  runat="server">
        // ver datos de abulanciaas
   
   <!-- Start Page Title Section -->
    <div class="page-ttl">
        <div class="layer-stretch">
            <div class="page-ttl-container">
                <h1>AMBULANCIAS</h1>
                <p><a href="#">ADMINISTRADOR</a> &#8594; <span>Bienvenido AMBULANCIAS</span></p>
            </div>
        </div>
    </div><!-- End Page Title Section -->
        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                    <i class="fa fa-user-o"></i>
                    <asp:GridView ID="Gvambualncias" runat="server" AutoGenerateColumns="false" ShowFooter="true" DataKeyNames="IdAmbulancia"
                        ShowHeaderWhenEmpty="true"
                        OnRowCommand="Gvambualncias_RowCommand" OnRowEditing="Gvambualncias_RowEditing1" OnRowCancelingEdit="Gvambualncias_RowCancelingEdit" OnRowUpdating="Gvambualncias_RowUpdating" >
                       
                        <Columns>
                            
                            <asp:TemplateField HeaderText="Codigo">
                                <ItemTemplate>
                                    <asp:label text='<%# Eval("Codigo") %>' runat="server"></asp:label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtCodigo" text='<%# Eval("Codigo") %>' runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="txtCodigo"  runat="server"></asp:TextBox>
                                </FooterTemplate>
                                </asp:TemplateField>

                             <asp:TemplateField HeaderText="Placa">
                                <ItemTemplate>
                                    <asp:label text='<%# Eval("Placa") %>' runat="server"></asp:label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtPlaca" text='<%# Eval("Placa") %>' runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="txtPlaca"  runat="server"></asp:TextBox>
                                </FooterTemplate>
                                </asp:TemplateField>

                             <asp:TemplateField HeaderText="Coductor">
                                <ItemTemplate>
                                    <asp:label text='<%# Eval("Coductor") %>' runat="server"></asp:label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtCoductor" text='<%# Eval("Coductor") %>' runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="txtCoductor"  runat="server"></asp:TextBox>
                                </FooterTemplate>
                                </asp:TemplateField>

                             <asp:TemplateField HeaderText="Estado">
                                <ItemTemplate>
                                    <asp:label text='<%# Eval("Estado") %>' runat="server"></asp:label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtEstado" text='<%# Eval("Estado") %>' runat="server"></asp:TextBox>
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="txtEstado"  runat="server"></asp:TextBox>
                                </FooterTemplate>
                                </asp:TemplateField>
                            
                             <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:ImageButton ImageUrl="~/Vista/Template/images/editar.png" runat="server" CommandName="Editar" ToolTip="Editar" Width="20px" Height="20px" /> 
                                    <asp:ImageButton ImageUrl="~/Vista/Template/images/eliminar.png" runat="server" CommandName="Eliminar" ToolTip="Eliminar" Width="20px" Height="20px" /> 
                                </ItemTemplate>
                                <EditItemTemplate>
                                     <asp:ImageButton ImageUrl="~/Vista/Template/images/guardar.png" runat="server" CommandName="Guardar" ToolTip="Guardar" Width="20px" Height="20px" /> 
                                    <asp:ImageButton ImageUrl="~/Vista/Template/images/cancelar.png" runat="server" CommandName="Cancelar" ToolTip="Cancelar" Width="20px" Height="20px" /> 
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:ImageButton ImageUrl="~/Vista/Template/images/addnew.png" runat="server" CommandName="AddNew" ToolTip="AddNew" Width="20px" Height="20px" /> 
                                </FooterTemplate>
                            </asp:TemplateField>
                        </Columns>

                    </asp:GridView>
                    <br />
                    <asp:Label ID="lblSussessMensage"  Text="" runat="server" ForeColor="Green"></asp:Label>
                     <br />
                    <asp:Label ID="lblErrorMensage"  Text="" runat="server" ForeColor="Red"></asp:Label>

                </div>
    <!-- Start Register Section -->
    <div class="layer-stretch">

        <div class="layer-wrapper">
             <asp:Button class="close" data-dismiss="modal">&times;</asp:Button>
            <div class="form-container">
                
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                    <i class="fa fa-user-o"></i>
                    <asp:TextBox ID="txtCodigo" runat="server" class="mdl-textfield__input" ></asp:TextBox>
                   <label class="mdl-textfield__label" for="appointment-name">Codigo</label>
                   <span class="mdl-textfield__error">Porfavor verifique su codigo!</span>
                </div>
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                    <i class="fa fa-user-o"></i>
                    <asp:TextBox ID="TxtPlaca" runat="server" class="mdl-textfield__input" ></asp:TextBox>
                   <label class="mdl-textfield__label" for="appointment-name">Placa</label>
                   <span class="mdl-textfield__error">Porfavor verifique su Placa!</span>
                </div>
                 <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                    <i class="fa fa-user-o"></i>
                    <asp:TextBox ID="TxtConductor" runat="server" class="mdl-textfield__input" ></asp:TextBox>
                   <label class="mdl-textfield__label" for="appointment-name">Conductor</label>
                   <span class="mdl-textfield__error">Porfavor verifique Conductor!</span>
                </div>
                 <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
                    <i class="fa fa-user-o"></i>
                    <asp:RadioButtonList ID="RdbEstado" runat="server">
                        <asp:ListItem Text="Disponible"  Value="0"></asp:ListItem>
                        <asp:ListItem Text="No Disponible" Value="1"></asp:ListItem>
                       </asp:RadioButtonList>
                    
                </div>
               
                <div class="form-submit">
                    <asp:Button ID="btnRegistrarAmb" runat="server" class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary" Text="Registrar Ambulancias" OnClick="btnRegistrarAmb_Click" ></asp:Button>
                    
                </div>
               
            </div>

        </div>
    </div><!-- End Register Section -->
</form>
</asp:Content>
