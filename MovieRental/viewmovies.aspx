<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="viewmovies.aspx.cs" Inherits="MovieRental.viewmoovies" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
            $(document).ready(function () {
                $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
            });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">

            <div class="col-sm-12">
                
                <div class="row">
                    <div class="col-sm-12 col-md-12">
                        <asp:Panel class="alert alert-success" role="alert" ID="Panel1" runat="server" Visible="false">
                            <asp:Label ID="Label1" runat="server" Text="Label1"></asp:Label>
                        </asp:Panel>
                    </div>
                </div>
                <br />
                <div class="row">
                    
                    <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Spis Filmów</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MovieRentalDBConnectionString %>" SelectCommand="SELECT * FROM [movie_master_tbl]"></asp:SqlDataSource>
                     <div class="col">
                       <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="movie_id" DataSourceID="SqlDataSource1">
                           <Columns>
                               <asp:BoundField DataField="movie_id" HeaderText="ID" ReadOnly="True" SortExpression="movie_id" >
                               
                               <ItemStyle Font-Bold="True" />
                               </asp:BoundField>
                               
                               <asp:TemplateField>
                                   <ItemTemplate>
                                      <div class="container-fluid">
                                          <div class="row">
                                              <div class="col-lg-10">
                                                  <div class="row">
                                                      <div class="col-lg-12">
                                                          <asp:Label ID="Label1" runat="server" Text='<%# Eval("movie_name") %>' Font-Size="X-Large" Font-Bold="True"></asp:Label>
                                                      </div>
                                                  </div>

                                                  <div class="row">
                                                      <div class="col-lg-12">

                                                          Reżyser -
                                                          <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Text='<%# Eval("director_name") %>'></asp:Label>
                                                          &nbsp;| Gatunek -
                                                          <asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("genre") %>'></asp:Label>
                                                          &nbsp;| Dub -
                                                          <asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("language") %>'></asp:Label>

                                                      </div>
                                                  </div>

                                                  <div class="row">
                                                      <div class="col-lg-12">

                                                          Wytwórnia -
                                                          <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("publisher_name") %>'></asp:Label>
                                                          &nbsp;| Premiera -
                                                          <asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("publish_date") %>'></asp:Label>
                                                          &nbsp;| Czas trwania -
                                                          <asp:Label ID="Label7" runat="server" Font-Bold="True" Text='<%# Eval("duration_time") %>'></asp:Label>
                                                          min&nbsp;| Edycja -
                                                          <asp:Label ID="Label8" runat="server" Font-Bold="True" Text='<%# Eval("edition") %>'></asp:Label>

                                                      </div>
                                                  </div>

                                                  <div class="row">
                                                      <div class="col-lg-12">

                                                          Cena -
                                                          <asp:Label ID="Label9" runat="server" Font-Bold="True" Text='<%# Eval("movie_cost") %>'></asp:Label>
                                                          zł&nbsp;| Ilość -
                                                          <asp:Label ID="Label10" runat="server" Font-Bold="True" Text='<%# Eval("actual_stock") %>'></asp:Label>
                                                          &nbsp;| Dostępne -
                                                          <asp:Label ID="Label11" runat="server" Font-Bold="True" Text='<%# Eval("current_stock") %>'></asp:Label>

                                                      </div>
                                                  </div>

                                                  <div class="row">
                                                      <div class="col-lg-12">

                                                          Opis -
                                                          <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" Text='<%# Eval("movie_description") %>'></asp:Label>

                                                      </div>
                                                  </div>
                                              </div>
                                              <div class="col-lg-2">
                                                  <asp:Image class="img-fluid p-2" ID="Image1" runat="server" ImageUrl='<%# Eval("movie_img_link") %>' />
                                              </div>
                                          </div>
                                      </div>
                                   </ItemTemplate>
                               </asp:TemplateField>
                               
                           </Columns>
                         </asp:GridView>
                     </div>
                  </div>
               </div>
            
                </div>
            </div>
            <center>
                 <a href="homepage.aspx"><< Powrót na stronę startową</a><span class="clearfix"></span><br />
            </center>

        </div>
    </div>

</asp:Content>
