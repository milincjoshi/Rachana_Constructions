using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PhotoGallery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
        this.LoadComplete += PhotoGallery_LoadComplete;
    }

    void PhotoGallery_LoadComplete(object sender, EventArgs e)
    {
        RachanaC r = new RachanaC();

        Image_Results.DataSource = r.displayImages();
        Image_Results.DataBind();

        r = null;
     
    }
    protected void OpenWindow(object sender, EventArgs e)
    {
        string url = "Popup.aspx";
        string s = "window.open('" + url + "', 'popup_window', 'width=300,height=100,left=100,top=100,resizable=yes');";
        ClientScript.RegisterStartupScript(this.GetType(), "script", s, true);
    }

    protected void catcombo_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}