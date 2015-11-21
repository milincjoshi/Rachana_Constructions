using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for RachanaC
/// </summary>
public class RachanaC
{
	public RachanaC()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int Get_maxid(string tablename) {
        int id_max;

        string q = string.Format("Select MAX(Id) from {0} ",tablename);
        SqlDataAdapter adp = new SqlDataAdapter(q,cs);
        DataTable dt = new DataTable();
        adp.Fill(dt);

        try { id_max = int.Parse(dt.Rows[0][0].ToString()); }
        catch { id_max = 0; }
        
        id_max++;

        dt = null;
        adp = null;
        q = null;
        tablename = null;

        return id_max;
    }

        public DataTable  displayImages() {
        
        SqlConnection cn = new SqlConnection(RachanaC.cs);
        cn.Open();

        string get_imgs = string.Format("Select * from RachanaPhotoGallery ORDER BY Id DESC");
        SqlDataAdapter get_imgs_adp = new SqlDataAdapter(get_imgs, cn);
        DataTable get_imgsdt = new DataTable();
        get_imgs_adp.Fill(get_imgsdt);

        cn.Close();
        return get_imgsdt;

    }

     public static string cs = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Milin\Documents\Visual Studio 2013\Projects\Rachana\App_Data\RachanaDatabase.mdf;Integrated Security=True";
     
}