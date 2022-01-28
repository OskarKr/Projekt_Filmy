<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="MovieRental.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                             <center>
                             <img width="150px" src="images/adminuser.png"/>
                             </center>
                            </div>
                         </div>

                        <div class="row">
                            <div class="col">
                             <center>
                             <h3>Admin login</h3>
                             </center>
                            </div>
                         </div>

                        <div class="row">
                            <div class="col">
                             <center>
                                 <hr>
                             </center>
                            </div>
                         </div>

                        <div class="row">
                            <div class="col">
                                <label>Admin login</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                </div>

                                 <label>Hasło</label>
                                 <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Hasło" TextMode="Password"></asp:TextBox>
                                 </div>
                                <br />
                                <div class="form-group d-grid">
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Zaloguj" OnClick="Button1_Click" />
                                </div>
                                
                            </div>
                         </div>

                    </div>
                </div>
                <a href="homepage.aspx"><< Powrót do strony startowej</a><br /><br />
            </div>
        </div>
    </div>

</asp:Content>
