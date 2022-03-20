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
    public partial class Signup : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkMemberExist())
            {
                Response.Write("<script>alert('User id already exist with this number');</script>");
            }
            else
            {
                signuploads();
            }


          
        }
        bool checkMemberExist()
        {
             try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM Member_master where member_id='"+TextBox1.Text.Trim()+"';", con);
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




        void signuploads()
        {
            // Response.Write("<script>alert('Testing');</script>");
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Member_master(full_name ,dob,contact_no,email,state,city,pincode,full_address ,member_id,password ,account_status) values(@full_name ,@dob,@contact_no,@email,@state,@city,@pincode,@full_address ,@member_id,@password ,@account_status)", con);
                cmd.Parameters.AddWithValue("@full_name", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@state", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@city", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@full_address", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@member_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@account_status", "pending");
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Sign Up successfull . go to login page and login');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}