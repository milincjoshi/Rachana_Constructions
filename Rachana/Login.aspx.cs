using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login1_LoggingIn(object sender, LoginCancelEventArgs e)
    {
       
    }
    
    protected void login_Click(object sender, EventArgs e)
    {
        if (username.Text == "##############" && password.Text == "###########")
        {
            Session["User"] = username.Text; 
            Response.Redirect("upload_images.aspx");
        }
        else
        {
            wrong.Visible = true;
        }
    }
}