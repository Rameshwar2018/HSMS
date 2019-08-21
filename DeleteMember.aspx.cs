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

public partial class DeleteMember : System.Web.UI.Page
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
        Response.Redirect("ViewAllMembers.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
       con.Open();
       SqlCommand cmd = new SqlCommand("DELETE FROM MEM_REG WHERE USERNAME='" + Request.QueryString["id"] + "'", con);
       cmd.ExecuteNonQuery();

        Response.Redirect("ViewAllMembers.aspx");

    }
}