<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="MovieRental.usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                             <center>
                             <img width="100px" src="images/generaluser.png"/>
                             </center>
                            </div>
                         </div>

                        <div class="row">
                            <div class="col">
                             <center>
                             <h4>Rejestracja Użytkownika</h4>
                             </center>
                            </div>
                         </div>

                        <div class="row">
                            <div class="col">
                             
                                 <hr>
                             
                            </div>
                         </div>

                        <div class="row">
                     <div class="col-md-6">
                        <label>Pełne Imię</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Pełne imię"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Data urodzenia</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"  TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Nr Telefonu</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Numer" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Email</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Kraj</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                              <asp:ListItem Text="Select" Value="select" />
                              <asp:ListItem Text="Poland" Value="Poland" />
                              <asp:ListItem Text="United States" Value="United States" />  
                              <asp:ListItem Text="Russia" Value="Russia" />
                           </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Miasto</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="City"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Kod Pocztowy</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Kod pocztowy" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <label>Pełny Adres</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Pełny adres" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                        <br />
                  <div class="row">
                     <div class="col">
                        <center>
                           <span class="badge rounded-pill bg-info">Dane logowania</span>
                        </center>
                     </div>
                  </div>
                        <br />

                    <div class="row">
                     <div class="col-md-6">
                        <label>Login</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="Loign"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Hasło</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Hasło" TextMode="Password"></asp:TextBox>
                        </div>
                     </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col">
                                <div class="form-group d-grid">
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Zarejestruj" OnClick="Button1_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                    
                </div>
                <a href="homepage.aspx"><< Powrót do strony startowej</a><br /><br />
            </div>
         </div>

</asp:Content>
