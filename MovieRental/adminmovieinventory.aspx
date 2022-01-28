<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="adminmovieinventory.aspx.cs" Inherits="MovieRental.adminmovieinventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#imgview').attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Szczegóły Filmów</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img id="imgview" width="180px" src="images/movie2.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                       <asp:FileUpload onchange="readURL(this);" class="form-control" ID="FileUpload1" runat="server" />
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-3">
                        <label>Znajdź po ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="WPISZ ID"></asp:TextBox>
                              <asp:LinkButton class="btn btn-primary" ID="LinkButton4" runat="server" OnClick="Button4_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-9">
                        <label>Nazwa Filmu</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Nazwa"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Język</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                              <asp:ListItem Text="Angielski" Value="English" />
                              <asp:ListItem Text="Polski" Value="Polish" />
                              <asp:ListItem Text="Rosyjski" Value="Russian" />
                              <asp:ListItem Text="Francuski" Value="French" />
                              <asp:ListItem Text="Niemiecki" Value="German" />
                           </asp:DropDownList>
                        </div>
                        <label>Wytwórnia</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                              <asp:ListItem Text="Warner Bros." Value="Warner Bros." />
                              <asp:ListItem Text="Paramount" Value="Paramount" />
                              <asp:ListItem Text="20th Century Fox" Value="20th Century Fox" />
                           </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Nazwa Reżysera</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList3" runat="server">
                              <asp:ListItem Text="Christopher Nolan" Value="Christopher Nolan" />
                              <asp:ListItem Text="Martin Scorsese" Value="Martin Scorsese" />
                           </asp:DropDownList>
                        </div>
                        <label>Data premiery</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Gatunek</label>
                        <div class="form-group">
                           <asp:ListBox CssClass="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="5">
                              <asp:ListItem Text="Akcja" Value="Action" />
                              <asp:ListItem Text="Przygoda" Value="Adventure" />
                              <asp:ListItem Text="Kryminał" Value="Crime" />
                              <asp:ListItem Text="Drama" Value="Drama" />
                              <asp:ListItem Text="Fantasy" Value="Fantasy" />
                              <asp:ListItem Text="Horror" Value="Horror" />
                              <asp:ListItem Text="Romans" Value="Romance" />
                              <asp:ListItem Text="Science Fiction" Value="Science Fiction" />
                              <asp:ListItem Text="Thriller" Value="Thriller" />
                              <asp:ListItem Text="Dokumentalny" Value="Documental" />
                           </asp:ListBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Edycja</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Edition"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Cena(za sztukę)</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Cena(za sztukę)" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Czas trwania</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Czas trwania" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Rzeczywisty stan magazynowy</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Rzeczywisty stan" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Aktualny Stan Magazynowy</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Stan" TextMode="Number" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Wypożyczone Filmy</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Wydane" TextMode="Number" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-12">
                        <label>Opis Filmu</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Opis" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                   <br />
                  <div class="row">
                     <div class="col-4 d-grid">
                        <asp:Button ID="Button1" class="btn btn-lg btn-block btn-success" runat="server" Text="Dodaj" OnClick="Button1_Click" />
                     </div>
                     <div class="col-4 d-grid">
                        <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Zaktualizuj" OnClick="Button3_Click" />
                     </div>
                     <div class="col-4 d-grid">
                        <asp:Button ID="Button2" class="btn btn-lg btn-block btn-danger" runat="server" Text="Usuń" OnClick="Button2_Click" />
                     </div>
                  </div>
               </div>
            </div>
             <br />
            <a href="homepage.aspx"><< Powrót na stronę startową</a><br />
             <br />
         </div>
         <div class="col-md-7">
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
                         </asp:GridView>>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</asp:Content>
