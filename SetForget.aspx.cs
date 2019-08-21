using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class SetForget : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        con.Open();

        SqlCommand cmd = new SqlCommand("update MEM_REG set PASS=@password where USERNAME='" + Request.QueryString["userid"] + "'", con);
        cmd.Parameters.AddWithValue("@password", TextBox1.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Response.Redirect("Login.aspx");
        //Response.Write("Password updated sucessfully!!");
        
    }
}