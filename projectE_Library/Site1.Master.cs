using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectE_Library
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(""))
                {
                    LinkButton2.Visible = true;//login
                    LinkButton1.Visible = true;//signup
                    LinkButton4.Visible = false;//logout
                    LinkButton5.Visible = false;//hellouser

                    LinkButton6.Visible = true;
                    LinkButton12.Visible = false;
                    LinkButton8.Visible = false;
                    LinkButton7.Visible = false;
                    LinkButton9.Visible = false;
                    LinkButton10.Visible = false;
                } 
                
                else if (Session["role"].Equals("user"))
                {
                    LinkButton2.Visible = false;//login
                    LinkButton1.Visible = false;//signup
                    LinkButton4.Visible = true;//logout
                    LinkButton5.Visible = true;//hellouser
                    LinkButton5.Text ="helo"+Session["username"].ToString();


                    LinkButton6.Visible = true;
                    LinkButton12.Visible = false;
                    LinkButton8.Visible = false;
                    LinkButton7.Visible = false;
                    LinkButton9.Visible = false;
                    LinkButton10.Visible = false;
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton2.Visible = false;//login
                    LinkButton1.Visible = false;//signup
                    LinkButton4.Visible = true;//logout
                    LinkButton5.Visible = true;//hellouser
                    LinkButton5.Text = "helo admin";


                    LinkButton6.Visible = false;
                    LinkButton12.Visible = true;
                    LinkButton8.Visible =true;
                    LinkButton7.Visible = true;
                    LinkButton9.Visible = true;
                    LinkButton10.Visible = true;
                }
            }
            catch (Exception ex)
            {

            }

            }
        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_Authermanegement.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_publishermanagement.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admininventory.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminBookissueing.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminMembermanagement.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Signup.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";
            LinkButton2.Visible = true;//login
                    LinkButton1.Visible = true;//signup
                    LinkButton4.Visible = false;//logout
                    LinkButton5.Visible = false;//hellouser

                    LinkButton6.Visible = true;
                    LinkButton12.Visible = false;
                    LinkButton8.Visible = false;
                    LinkButton7.Visible = false;
                    LinkButton9.Visible = false;
                    LinkButton10.Visible = false;

            Response.Redirect("homepage.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Pastpagetest1.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {

        }
    }
}