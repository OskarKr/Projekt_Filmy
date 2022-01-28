<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="MovieRental.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
        <img src="images/home-bg.jpg" class="img-fluid" />
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-12"> 
                    <center>
                    <h2>Nasze oferty</h2>
                    <p><b>Nasze 3 główne zalety</b></p>
                    </center>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4"> 
                    <center>
                    <img width="150px" src="images/digital-inventory.png" />
                    <h4>Dostawy najnowszych filmów</h4>
                    <p class="text-justify">Do naszych magazynów trafiają kopie najowszych filmów!</p>
                    </center>
                </div>

                <div class="col-md-4"> 
                    <center>
                    <img width="150px" src="images/search-online.png" />
                    <h4>Wyszukiwarka filmów</h4>
                    <p class="text-justify">Łatwe wyszukiwanie filmów!</p>
                    </center>
                </div>

                <div class="col-md-4"> 
                    <center>
                    <img width="150px" src="images/defaulters-list.png" />
                    <h4>Wszystko legalnie</h4>
                    <p class="text-justify">Nasze akcje oraz kopie filmów są zgodnie z prawem więc nie musisz się niczym przejmować!</p>
                    </center>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
