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
    public partial class Admin_Authermanegement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        public object TextBox1 { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        //authermanagemetn add
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkifautherexist())
            {
                Response.Write("<script>alert('AUther Id already exists');</script>");
            }
            else
            {
                addnewAuther();
            }
        }
        //authermanagemetn update
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkifautherexist())
            {
                updateauther();
            }
            else
            {
                Response.Write("<script>alert('AUther doesnot exist');</script>");
               
            }
            
        }
        //authermanagemetn delete
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkifautherexist())
            {
                deleteauther();
            }
            else
            {
                Response.Write("<script>alert('AUther doesnot exist');</script>");

            }
        }
        //authermanagemetn go
        protected void Button2_Click(object sender, EventArgs e)
        {

        }
        //function auther one

        void addnewAuther()
        {
            // Response.Write("<script>alert('Testing');</script>");
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Auther_master(auther_id ,auther_name) values(@auther_id ,@auther_name)", con);
                cmd.Parameters.AddWithValue("@auther_id", TextBox11.Text.Trim());
                cmd.Parameters.AddWithValue("@auther_name", TextBox12.Text.Trim());
               
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Auther added successfull');</script>");
                clear();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

       

        //function auther delete
        void deleteauther()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE FROM Auther_master  WHERE auther_id='" + TextBox11.Text.Trim() + "'", con);
               
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Auther deleted successfull');</script>");
                clear();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        //function auther update
        void updateauther()
        {
           
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE Auther_master SET auther_name = @auther_name WHERE auther_id='"+ TextBox11.Text.Trim() + "'", con);
                                cmd.Parameters.AddWithValue("@auther_name", TextBox12.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Auther updated successfull');</script>");
                clear();
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
               
            }
        }
        //function auther one
        bool checkifautherexist()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM Auther_master where auther_id='" + TextBox11.Text.Trim() + "';", con);
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
            TextBox11.Text = "";
            TextBox12.Text = "";
        }
    }
}