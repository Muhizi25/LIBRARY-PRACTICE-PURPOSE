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
    public partial class Admin_publishermanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (publishercked())
            {
                Response.Write("<script>alert('Publisher Id already exists');</script>");
            }
            else
            {
                publisheradmin();
            }
        }


        //check if publisher exists
        bool publishercked()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM Publisher_master  where publisher_id ='" + TextBox11.Text.Trim() + "';", con);
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
        //updatepublisher
        void updatepublisher()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE Publisher_master SET publisher_name = @publisher_name WHERE publisher_id ='" + TextBox11.Text.Trim() + "'", con);
                cmd.Parameters.AddWithValue("@auther_name", TextBox12.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Publisher updated successfull');</script>");
                clear();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
        //delete publisher
        void deletepublisher()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE FROM Publisher_master  WHERE publisher_id ='" + TextBox11.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Publisher deleted successfull');</script>");
                clear();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        //add publisher
        void publisheradmin()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Publisher_master(publisher_id ,publisher_name) values(@publisher_id ,@publisher_name)", con);
                cmd.Parameters.AddWithValue("@publisher_id", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@publisher_name", TextBox12.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Publisher added successfull');</script>");
                 clear();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        void clear()
        {
            TextBox11.Text = "";
            TextBox12.Text = "";

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (publishercked())
            {
                Response.Write("<script>alert('AUther doesnot exist');</script>");
            }
            else
            {
                updatepublisher();

            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (publishercked())
            {
                deletepublisher();
                
            }
            else
            {
                Response.Write("<script>alert('publisher doesnot exist');</script>");

            }
        }
    }
}