using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class upload_images : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.LoadComplete += upload_images_LoadComplete;
       
    }

    void upload_images_LoadComplete(object sender, EventArgs e)
    {
      
        if (Session.Count==0)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            string User = Session["User"].ToString();

            RachanaC r = new RachanaC();
            Image_Results.DataSource = r.displayImages();
            Image_Results.DataBind();
        }
    }
    protected void Upload_Image_Click(object sender, EventArgs e)
    {
        string User = Session["User"].ToString();

        if (User == null || User == string.Empty)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {

             string cat = "hello";
            RachanaC r = new RachanaC();
            SqlConnection cn = new SqlConnection(RachanaC.cs);
            cn.Open();

            //file upload code
            if (FileUpload1.HasFiles)
            {

                foreach (var file in FileUpload1.PostedFiles)
                {
                    string q = "/images/PhotoGallery/" + file.FileName;
                    FileUpload1.SaveAs(MapPath(q));


                    int max_id = r.Get_maxid("RachanaPhotoGallery"); ;
                    //Inserting in db
                    string q1 = string.Format("insert into RachanaPhotoGallery values ({0},'{1}','{2}','{3}') ", max_id, q, cat, User);

                    SqlCommand insertCommand = new SqlCommand(q1, cn);
                    insertCommand.ExecuteNonQuery();
                    Response.Write("Image Uploaded");
                }

            }
            r = null;
            cn.Close();
        }
    }
    protected void Image_Results_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        
    }
    protected void Image_Results_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        RachanaC r=new RachanaC();

        SqlConnection cn = new SqlConnection(RachanaC.cs);
        cn.Open();

        string i= Image_Results.Rows[e.RowIndex].Cells[0].Text;
        string deleterow = string.Format("delete from RachanaPhotoGallery where Id = {0}",i);
        SqlCommand delete_cmd=new SqlCommand(deleterow,cn);
        delete_cmd.ExecuteNonQuery();

        Image_Results.DataSource= r.displayImages();

        cn.Close();
        r=null;
        i=null;

        delete_cmd.Dispose();
        
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session["User"] = null;
        Response.Redirect("index.aspx");
    }
}