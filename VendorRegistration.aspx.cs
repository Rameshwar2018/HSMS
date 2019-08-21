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

public partial class VendorRegistration : System.Web.UI.Page
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
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into VEN_REG (FNAME, LNAME, TYPE, MOB, EMAIL, ADDR, CITY, STATE, PIN, SOCIETY) values(@FNAME, @LNAME, @TYPE, @MOB, @EMAIL, @ADDR, @CITY, @STATE, @PIN, @SOCIETY)", con);
        cmd.Parameters.AddWithValue("@FNAME", TextBox1.Text);
        cmd.Parameters.AddWithValue("@LNAME", TextBox2.Text);
        cmd.Parameters.AddWithValue("@TYPE", DropDownList1.Text);
        cmd.Parameters.AddWithValue("@MOB", TextBox11.Text);
        cmd.Parameters.AddWithValue("@EMAIL", TextBox12.Text);
        cmd.Parameters.AddWithValue("@ADDR", TextBox7.Text);
        cmd.Parameters.AddWithValue("@CITY", TextBox8.Text);
        cmd.Parameters.AddWithValue("@STATE", TextBox9.Text);
        cmd.Parameters.AddWithValue("@PIN", TextBox10.Text);
        cmd.Parameters.AddWithValue("@SOCIETY", Label2.Text);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Response.Redirect("AdminAuthorities.aspx");
        
    }
}