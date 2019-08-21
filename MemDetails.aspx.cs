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

public partial class MemDetails : System.Web.UI.Page
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

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        con2.Open();
        SqlCommand cmd1 = new SqlCommand("UPDATE MEM_REG SET STATUS='" + DropDownList1.SelectedItem.Text + "'WHERE FNAME='" + Request.QueryString["id"].ToString() + "'", con2);
        SqlCommand cmd2 = new SqlCommand("UPDATE MEM_REG SET FLATNO='" + TextBox1.Text + "'WHERE FNAME='" + Request.QueryString["id"].ToString() + "'", con2);
        cmd2.ExecuteNonQuery();
        cmd1.ExecuteNonQuery();

        Response.Redirect("MemApproval.aspx");

    }
}