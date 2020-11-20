using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class ActivationEmail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "Activation Code has been send to " + Request.QueryString["emailadd"].ToString() + ", " +
            "Kindly check and verify your account...";
        
    }
    protected void BtnVerify_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string sqlquery = "select Email from [dbo].[LoginTable] where Email='" + Request.QueryString["emailadd"] + "'";

            SqlCommand cmd = new SqlCommand(sqlquery, con);
            SqlDataAdapter sda = new SqlDataAdapter();
            sda.SelectCommand = cmd;
            DataSet ds = new DataSet();
            sda.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                //string activationcode = ds.Tables[0].Rows[0]["ActivationCode"].ToString();
                string activationcode = Request.QueryString["Activationcode"];
                //Label3.Text = activationcode;
                if (activationcode == TextBox1.Text)
                {
                    ChangeStatus();
                    
                    Label3.Text = "Your email has been varified successfully";
                }
                else
                {
                    Label3.Text = "You Have entered invalid activation code... Kindly Check Your Mail";
                }
            }

            con.Close();

        }
        catch (Exception ex)
        {
            Response.Write(ex.StackTrace);
     
        }

    }
    private void ChangeStatus()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();
        string UpdateData = "update LoginTable set Status ='varified' where Email = '"
            + Request.QueryString["emailadd"] + "'";
        SqlCommand cmd = new SqlCommand(UpdateData, con);
        cmd.ExecuteNonQuery();
        con.Close();


    }

    protected void Btnlnk_Click(object sender, EventArgs e)
    {

        Response.Redirect("login.aspx");
    }
}









