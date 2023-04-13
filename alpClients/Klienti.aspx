<%@ Page Title="Klienti" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Klienti.aspx.cs" Inherits="alpClients.Klienti" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <svg xmlns="http://www.w3.org/…svg" style="display: none;">
      <symbol id="check-circle-fill" fill="currentColor" viewBox="0 0 16 16">
        <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
      </symbol>
      <symbol id="info-fill" fill="currentColor" viewBox="0 0 16 16">
        <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm.93-9.412-1 4.705c-.07.34.029.533.304.533.194 0 .487-.07.686-.246l-.088.416c-.287.346-.92.598-1.465.598-.703 0-1.002-.422-.808-1.319l.738-3.468c.064-.293.006-.399-.287-.47l-.451-.081.082-.381 2.29-.287zM8 5.5a1 1 0 1 1 0-2 1 1 0 0 1 0 2z"/>
      </symbol>
      <symbol id="exclamation-triangle-fill" fill="currentColor" viewBox="0 0 16 16">
        <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
      </symbol>  
      <symbol id="info-trash" fill="currentColor" viewBox="0 0 16 16">
	    <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5Zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5Zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6Z"/>
	    <path d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1ZM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118ZM2.5 3h11V2h-11v1Z"/>
      </symbol>  
    </svg>


    <!-- okno - nová registrace -->
    <div class="container">
        <div class="modal fade" id="modalNew" tabindex="-1" role="dialog" aria-labelledby="modalnewlabel" aria-hidden="true">
            <div class=" modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="modalnewlabel">Registrace nového klienta</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">

                        <div class="form-check">
                            <label for="firstnameNew" class="col-form-label">Jméno:</label>
                            <asp:TextBox ID="firstnameNew" CssClass="form-control" runat="server" />
                            <div class="invalid-feedback">povinný údaj</div>
                        </div>
                        <div class="form-check">
                            <label for="lastnameNew" class="col-form-label">Příjmení:</label>
                            <asp:TextBox ID="lastnameNew" CssClass="form-control" runat="server" />
                            <div class="invalid-feedback">povinný údaj</div>
                        </div>
                        <div class="form-check">
                            <label for="sexNew" class="col-form-label">Pohlaví:</label>
                            <asp:DropDownList ID="sexNew" CssClass="form-select" runat="server">
                                <asp:ListItem Value="">Pohlaví</asp:ListItem>
                                <asp:ListItem Text="muž" />
                                <asp:ListItem Text="žena" />
                            </asp:DropDownList>
                            <div class="invalid-feedback">povinný údaj</div>
                        </div>
                        <div class="form-check">
                            <label for="emailNew" class="col-form-label">Email:</label>
                            <asp:TextBox ID="emailNew" CssClass="form-control" runat="server" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" title="Emailová adresa" />
                            <div class="invalid-feedback">povinný údaj</div>
                        </div>
                        <div class="form-check">
                            <label for="kontaktNew" class="col-form-label">Kontakt:</label>
                            <asp:TextBox ID="kontaktNew" CssClass="form-control" runat="server" pattern="^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{3,6}$" title="Telefon v mezinárodní formě" />
                            <div class="invalid-feedback">povinný údaj</div>
                        </div>

                        <div class="form-check">
                            <label for="adresaNew" class="col-form-label">Adresa:</label>
                            <asp:TextBox ID="adresaNew" CssClass="form-control" runat="server" />
                            <div class="invalid-feedback">povinný údaj</div>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Zavřít</button>
                        <button type="button" id="clearform" class="btn btn-secondary">Vyprázdnit</button>
                        <asp:Button ID="btnsave" CssClass="btn btn-primary" OnClick="btnsave_Click" Text="Přidat klienta" runat="server" />
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- okno - editace zaznamu -->
    <div class="container">
        <div class="modal fade" id="modalEdit" tabindex="-1" role="dialog" aria-labelledby="modaleditlabel" aria-hidden="true">
            <div class=" modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="modaleditlabel">Editace klienta</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">

                        <div class="form-check">
                            <label for="firstnameEdit" class="col-form-label">Jméno:</label>
                            <asp:HiddenField ID="editID" runat="server" Value='' />
                            <asp:TextBox ID="firstnameEdit" CssClass="form-control" runat="server" />
                            <div class="invalid-feedback">povinný údaj</div>
                        </div>
                        <div class="form-check">
                            <label for="lastnameEdit" class="col-form-label">Příjmení:</label>
                            <asp:TextBox ID="lastnameEdit" CssClass="form-control" runat="server" />
                            <div class="invalid-feedback">povinný údaj</div>
                        </div>
                        <div class="form-check">
                            <label for="sexEdit" class="col-form-label">Pohlaví:</label>
                            <asp:DropDownList ID="sexEdit" CssClass="form-select" runat="server">
                                <asp:ListItem Value="">Pohlaví</asp:ListItem>
                                <asp:ListItem Value="1" Text="muž" />
                                <asp:ListItem Value="2" Text="žena" />
                            </asp:DropDownList>
                            <div class="invalid-feedback">povinný údaj</div>
                        </div>
                        <div class="form-check">
                            <label for="emailEdit" class="col-form-label">Email:</label>
                            <asp:TextBox ID="emailEdit" CssClass="form-control" runat="server" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" title="Emailová adresa" />
                            <div class="invalid-feedback">povinný údaj</div>
                        </div>
                        <div class="form-check">
                            <label for="kontaktEdit" class="col-form-label">Kontakt:</label>
                            <asp:TextBox ID="kontaktEdit" CssClass="form-control" runat="server" pattern="^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{3,6}$" title="Telefon v mezinárodní formě" />
                            <div class="invalid-feedback">povinný údaj</div>
                        </div>

                        <div class="form-check">
                            <label for="adresaEdit" class="col-form-label">Adresa:</label>
                            <asp:TextBox ID="adresaEdit" CssClass="form-control" runat="server" />
                            <div class="invalid-feedback">povinný údaj</div>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Zavřít</button>
                        <asp:Button ID="btnUpdate" CssClass="btn btn-primary" OnClick="btnUpdate_Click" Text="Uložit změny" runat="server" />
                    </div>

                </div>
            </div>
        </div>
    </div>

    <!-- Button trigger modal -->
    <button type="button" id="testbtn" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modalNew">
        Nová registrace
    </button>

    <hr />

    <!-- grid - klienti   -->
    <section class="container-fluid">
        <asp:GridView ID="ClientsGridView" runat="server" CssClass=" table table-hover" DataSourceID="ClientsSqlDataSource" AutoGenerateColumns="False" DataKeyNames="Id" AllowPaging="True" OnPreRender="ClientsGridView_PreRender" ShowHeaderWhenEmpty="True" PageSize="10">
            <Columns>
                <asp:TemplateField HeaderText="Jméno" SortExpression="FirstName">
                    <ItemTemplate>
                        <asp:Label ID="FirstName" runat="server" Text='<%# Bind("FirstName") %>'></asp:Label>
                        <asp:HiddenField ID="Id" runat="server" Value='<%#Eval("Id") %>' />
                    </ItemTemplate>
                </asp:TemplateField>          
                
                <asp:TemplateField HeaderText="Příjmení" SortExpression="LastName">
                    <ItemTemplate>
                        <asp:Label ID="LastName" runat="server" Text='<%# Bind("LastName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField> 
                <asp:TemplateField HeaderText="Pohlaví" SortExpression="Sex">
                    <ItemTemplate>
                        <asp:Label ID="Sex" runat="server" Text='<%# Bind("Sex") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField> 
                <asp:TemplateField HeaderText="Email" SortExpression="Email">
                    <ItemTemplate>
                        <asp:Label ID="Email" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField> 
                <asp:TemplateField HeaderText="Kontakt" SortExpression="Contact">
                    <ItemTemplate>
                        <asp:Label ID="Contact" runat="server" Text='<%# Bind("Contact") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField> 
                <asp:TemplateField HeaderText="Adresa" SortExpression="Address">
                    <ItemTemplate>
                        <asp:Label ID="Address" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField> 

                <asp:CommandField ShowDeleteButton="True" DeleteText='<svg class="bi flex-shrink-0" width="16" height="16" role="img" aria-label="Info:"><use xlink:href="#info-trash"/></svg>' ControlStyle-CssClass="btn btn-outline-danger btn-sm"></asp:CommandField>
            </Columns>
            <RowStyle CssClass="cursor-pointer"></RowStyle>
        </asp:GridView>
        <asp:SqlDataSource runat="server" ID="ClientsSqlDataSource" ConnectionString="<%$ ConnectionStrings:ConnectionStrings %>" DeleteCommand="DELETE FROM [ClientsT] WHERE [Id] = @Id" InsertCommand="INSERT INTO [ClientsT] ([FirstName], [LastName], [Email], [Address], [Sex], [Contact]) VALUES (@FirstName, @LastName, @Email, @Address, @Sex, @Contact)" SelectCommand="SELECT * FROM [ClientsT] ORDER BY [Id]" UpdateCommand="UPDATE [ClientsT] SET [FirstName] = @FirstName, [LastName] = @LastName, [Email] = @Email, [Address] = @Address, [Sex] = @Sex, [Contact] = @Contact WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
            </DeleteParameters>
        </asp:SqlDataSource>

    </section>

    <!-- toast info -->
    <div class="position-fixed bottom-0 end-0 p-3" style="z-index: 11">        
      <div class="toast" role="alert" aria-live="assertive" aria-atomic="true" id="successAction">
	    <div class="alert alert-success d-flex align-items-center" role="alert" style="margin: 0;" >
	      <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Success:"><use xlink:href="#check-circle-fill"/></svg>
	      <div>
		    Akce byla úspěšně provedena.
	      </div>
	    </div>
      </div>  
      <div class="toast" role="alert" aria-live="assertive" aria-atomic="true" id="errorAction">
	    <div class="alert alert-warning d-flex align-items-center" role="alert" style="margin: 0;" >
	      <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Warning:"><use xlink:href="#exclamation-triangle-fill"/></svg>
	      <div>
		    Aakci nešlo provést!
	      </div>
	    </div>
      </div>  
    </div>

</asp:Content>
