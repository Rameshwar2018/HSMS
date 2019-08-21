using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.IO;  

public partial class ProfileAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String soname = "";
        Label1.Text = Session["value2"].ToString();

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        conn.Open();
        SqlCommand cmd1 = new SqlCommand("SELECT SNAME FROM ADMIN_REG WHERE USERNAME=@USERNAME", conn);
        cmd1.Parameters.AddWithValue("@USERNAME", Label1.Text);

        SqlDataReader usernameRdr = null;

        usernameRdr = cmd1.ExecuteReader();

        while (usernameRdr.Read())
        {
            soname = usernameRdr["SNAME"].ToString();
            Label2.Text = soname;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        con.Open();

        if (FileUpload1.HasFile)
        {

            string str = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/UploadedImage/" + str));
            string Image = "~/UploadedImage/" + str.ToString();

            SqlCommand cmd1 = new SqlCommand("delete from IMG_UPLOAD WHERE SOCIETY=@SOCIETY", con);
            cmd1.Parameters.AddWithValue("@SOCIETY", Label2.Text);
            cmd1.ExecuteNonQuery();

            SqlCommand cmd = new SqlCommand("insert into IMG_UPLOAD (IMAGE, SOCIETY, USERNAME) values (@IMAGE, @SOCIETY, @USERNAME)", con);
            cmd.Parameters.AddWithValue("@IMAGE", Image);
            cmd.Parameters.AddWithValue("@SOCIETY", Label2.Text);
            cmd.Parameters.AddWithValue("@USERNAME", Label1.Text);

            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("AdminAuthorities.aspx");
        }  

        
      }

}