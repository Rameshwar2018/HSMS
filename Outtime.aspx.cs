using System;
using System.Collections;
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
using System.Configuration;

public partial class Outtime : System.Web.UI.Page
{
    String vname = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        
        vname = Session["name"].ToString();
        String soname = "";
        Label1.Text = Session["value2"].ToString();

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        conn.Open();
        SqlCommand cmd1 = new SqlCommand("SELECT SOCIETY FROM SATFF_REG WHERE USERNAME=@USERNAME", conn);
        cmd1.Parameters.AddWithValue("@USERNAME", Label1.Text);

        SqlDataReader usernameRdr = null;

        usernameRdr = cmd1.ExecuteReader();

        while (usernameRdr.Read())
        {
            soname = usernameRdr["SOCIETY"].ToString();
            Label2.Text = soname;
        }
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        DateTime d = new DateTime();
        d = DateTime.Now;

        TextBox4.Text = d.ToString("HH:mm:ss");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("UPDATE VISITOR_REG SET OUTTIME='" + TextBox4.Text + "'WHERE NAME='" + vname + "'", con);
        cmd.ExecuteNonQuery();

        Response.Redirect("StaffPage.aspx");

    }
}