using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Welcome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserId"] != null)
        {
            lblusername.Text = Session["UserId"].ToString();

        }
        else
        {
            Response.Redirect("Login.aspx");

        }
    }

    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Session.Abandon();
        Response.Redirect("Login.aspx");

    }
}