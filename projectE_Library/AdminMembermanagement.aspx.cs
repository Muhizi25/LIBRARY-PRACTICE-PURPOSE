using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projectE_Library
{
    public partial class AdminMembermanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        //Go button
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Idbtngo();
        }
        //active button
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
             updatestatus("active");
           
        }
        //deactive button
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            
            updatestatus("pending");
        }
        //pending button
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            
            updatestatus("deactivate");
        }
        //delete button
        protected void Button1_Click(object sender, EventArgs e)
        {
            memberIddelete();
        }


        void memberIddelete()
        {

            if (checkifMemberidxist())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("DELETE FROM Member_master  WHERE member_id='" + TextBox11.Text.Trim() + "'", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Member id  deleted successfull');</script>");
                    clear();
                    GridView1.DataBind();
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
         
            }
            else
            {

                Response.Write("<script>alert('invalid member id');</script>");
            }
           
        }

        bool checkifMemberidxist()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM Member_master  where member_id ='" + TextBox11.Text.Trim() + "';", con);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }

        }

        void clear()
        {
            TextBox12.Text = "";
            TextBox11.Text ="" ;
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox1.Text = "";
            TextBox6.Text = "";
            TextBox8.Text = "";
            TextBox7.Text = "";
            TextBox5.Text = "";
        }
        void Idbtngo()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM  Member_master where member_id='" + TextBox11.Text.Trim() + "';", con);

                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox12.Text = dr.GetValue(0).ToString();
                        TextBox2.Text = dr.GetValue(1).ToString();
                        TextBox3.Text = dr.GetValue(2).ToString();
                        TextBox4.Text = dr.GetValue(3).ToString();
                        TextBox1.Text = dr.GetValue(4).ToString();
                        TextBox6.Text = dr.GetValue(5).ToString();
                        TextBox8.Text = dr.GetValue(6).ToString();
                        TextBox7.Text = dr.GetValue(7).ToString();
                        TextBox5.Text = dr.GetValue(10).ToString();
                    }

                  
                }
                else
                {
                    Response.Write("<script>alert('invalid!');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        void updatestatus(string status)
        {
            if (checkifMemberidxist())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("UPDATE  Member_master SET account_status='" + status + "' WHERE member_id='" + TextBox11.Text.ToString() + "';", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataBind();
                    Response.Write("<script>alert('Member status updated');</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");

                }
            }
            else
            {
                Response.Write("<script>alert('invalid member id');</script>");
            }
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE  Member_master SET account_status='" + status + "' WHERE member_id='"+TextBox11.Text.ToString()+"';", con);

                cmd.ExecuteNonQuery();
                con.Close();
                GridView1.DataBind();
                Response.Write("<script>alert('Member status updated');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
    }
}