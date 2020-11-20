using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
// for sending Mail to the server 
using System.Net;
using System.Net.Mail;

public partial class ForgetPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnpwd_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();
        string sqlquery = "select Email,Password from [dbo].[LoginTable] where Email=@Email";
        SqlCommand cmd = new SqlCommand(sqlquery,con);
        cmd.Parameters.AddWithValue("@Email",txtEmail.Text);
        cmd.ExecuteNonQuery();
        SqlDataReader sdr = cmd.ExecuteReader();
        if(sdr.Read())
        {
            string username = sdr["Email"].ToString();
            string password = sdr["Password"].ToString();
            try
            {


                MailMessage mail = new MailMessage();

                mail.To.Add(txtEmail.Text);
                mail.From = new MailAddress("funmail395@gmail.com");

                mail.Subject = "Your Password...!";
                string body = string.Format("Hello : <h1>{0}</h1> is your Email Id </br>Your password is<h1>{1}</h1>", username, password);
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
            lblmsg.Text = "Your Password has been sent to " + txtEmail.Text;
            lblmsg.ForeColor = Color.Green;
        }


        else
        {
            lblmsg.Text = txtEmail.Text + "- This Email Doesnot Exist in Our Database...!";
            lblmsg.ForeColor = Color.Red;
        }

        
    }
}