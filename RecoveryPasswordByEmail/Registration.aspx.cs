using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Net.Mail;
using System.Net;

public partial class Registration : System.Web.UI.Page
{
    static string activationcode;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    
    protected void Btnregister_Click(object sender, EventArgs e)
    {
        Random random = new Random();
        activationcode = random.Next(1001, 9999).ToString();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();
        string sqlquery = "insert into [dbo].[LoginTable]" +
            "(Name,LastName,Gender,DOB,Email,Password,MobileNo,Status,ActivationCode) " +
            "values(@Name,@LastName,@Gender,@DOB,@Email,@Password,@MobileNo,@Status,@ActivationCode)";
        SqlCommand cmd = new SqlCommand(sqlquery, con);
        //cmd.Parameters.AddWithValue("@UserId",UserId);
        cmd.Parameters.AddWithValue("@Name", txtname.Text);
        cmd.Parameters.AddWithValue("@LastName", txtLastname.Text);
        cmd.Parameters.AddWithValue("@Gender", DDlist.Text);
        cmd.Parameters.AddWithValue("@DOB", txtDOB.Text);
        cmd.Parameters.AddWithValue("@Email",txtemail.Text);
        cmd.Parameters.AddWithValue("@Password", txtpassword.Text);
        cmd.Parameters.AddWithValue("@MobileNo", txtmobile.Text);
        cmd.Parameters.AddWithValue("@Status","unverfied");
        cmd.Parameters.AddWithValue("@ActivationCode",activationcode);


        cmd.ExecuteNonQuery();
        sendcode();
        con.Close();
        //Session["Activationcode"] = activationcode;
        
        Response.Redirect("ActivationEmail.aspx?emailadd=" + txtemail.Text + "&Activationcode=" +activationcode);
        
    }
    public void sendcode()
    {
        try
        {


            MailMessage mail = new MailMessage();

            mail.To.Add(txtemail.Text);
            mail.From = new MailAddress("funmail395@gmail.com");

            mail.Subject = "Activation Code to verify the Email";
            string body = string.Format("Dear "+txtname.Text+"Your Activation code is "+activationcode+"\n\nThank You\n\n Regards Wani@Mudasir");
            mail.Body = body;
            mail.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient
            {
                Host = "smtp.gmail.com",
                Port = 587,
                EnableSsl = true,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                UseDefaultCredentials = true,
                Credentials = new System.Net.NetworkCredential("wanimudasir312@gmail.com", "Mudasir@111")
            };
            smtp.EnableSsl = true;
            smtp.Send(mail);
        }
        catch (Exception ex)
        {
            Response.Write(ex.StackTrace);
        }

    }



    protected void BtnAlready_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }



    protected void txtname_TextChanged(object sender, EventArgs e)
    {

    }
}