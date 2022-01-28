using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MovieRental
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] == null)
                {
                    LinkButton1.Visible = true; // przycisk - user login
                    LinkButton2.Visible = true; // przycisk - rejestracji

                    LinkButton3.Visible = false; // przycisk - wylogowania
                    LinkButton7.Visible = false; // powitanie uzytkownika


                    LinkButton6.Visible = true; // przycisk - admin login
                    LinkButton11.Visible = false; // przycisk - zarzadzanie rezyserami
                    LinkButton12.Visible = false; // przycisk - zarzadzanie wytworniami
                    LinkButton8.Visible = false; // przycisk - spis filmow
                    LinkButton9.Visible = false; // przycisk - wypozyczanie filmow
                    LinkButton10.Visible = false; // przycisk - zarzadzanie uzytkownikami

                } 
                else if (Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false; // przycisk - user login
                    LinkButton2.Visible = false; // przycisk - rejestracji

                    LinkButton3.Visible = true; // przycisk - wylogowania
                    LinkButton7.Visible = true; // powitanie uzytkownika
                    LinkButton7.Text = "Witaj " + Session["username"].ToString();


                    LinkButton6.Visible = true; // przycisk - admin login
                    LinkButton11.Visible = false; // przycisk - zarzadzanie rezyserami
                    LinkButton12.Visible = false; // przycisk - zarzadzanie wytworniami
                    LinkButton8.Visible = false; // przycisk - spis filmow
                    LinkButton9.Visible = false; // przycisk - wypozyczanie filmow
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; // przycisk - admin login
                    LinkButton2.Visible = false; // przycisk - rejestracji

                    LinkButton3.Visible = true; // przycisk - wylogowania
                    LinkButton7.Visible = true; // powitanie uzytkownika
                    LinkButton7.Text = "Witaj Admin";


                    LinkButton6.Visible = false; // przycisk - admin login
                    LinkButton11.Visible = true; // przycisk - zarzadzanie rezyserami
                    LinkButton12.Visible = true; // przycisk - zarzadzanie wytworniami
                    LinkButton8.Visible = true; // przycisk - spis filmow
                    LinkButton9.Visible = true; // przycisk - wypozyczanie filmow
                    LinkButton10.Visible = true; //przycisk zarządzania uzytkownikami
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminauthormanagement.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminpublishermanagement.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminmovieinventory.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminmovieissuing.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminmembermanagement.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewmovies.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }


        //wylogowywanie
        protected void LinkButton3_Click1(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButton1.Visible = true; // login uzytkownika
            LinkButton2.Visible = true; // rejestracja

            LinkButton3.Visible = false; // wyloguj
            LinkButton7.Visible = false; // witaj 


            LinkButton6.Visible = true; // logowanie admina
            LinkButton11.Visible = false; // rezyser - zarzadzanie
            LinkButton12.Visible = false; // wytwornia - zarzadzanie
            LinkButton8.Visible = false; // lista filmow
            LinkButton9.Visible = false; // wypozyczalnia
            LinkButton10.Visible = false; // zarzadzanie kontami

            Response.Redirect("homepage.aspx");
        }

        // view profile
        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("userprofile.aspx");
        }

    }
}