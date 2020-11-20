using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Drawing;



public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();
        string sqlquery = "select Email,Password from [dbo].[LoginTable] where Email=@Email and password = @password";
        SqlCommand cmd = new SqlCommand(sqlquery, con);
        cmd.Parameters.AddWithValue("Email",txtUsername.Text);
        cmd.Parameters.AddWithValue("Password", txtPwd.Text);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        cmd.ExecuteNonQuery();
        con.Close();
        if (dt.Rows.Count > 0)
        {
            Session["UserId"] = txtUsername.Text;
            Response.Redirect("Welcome.aspx");
            Session.RemoveAll();
        }
       
        else
        {
            litmsg.Text = "Your username and password is wrong...!";
            
        }
    }

    protected void btnregister_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }
}