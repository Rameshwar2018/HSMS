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

public partial class MemberPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String soname = "";
        Label1.Text = Session["value2"].ToString();

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        conn.Open();
        SqlCommand cmd1 = new SqlCommand("SELECT SOCIETY FROM MEM_REG WHERE USERNAME=@USERNAME", conn);
        cmd1.Parameters.AddWithValue("@USERNAME", Label1.Text);

        SqlDataReader usernameRdr = null;

        usernameRdr = cmd1.ExecuteReader();

        while (usernameRdr.Read())
        {
            soname = usernameRdr["SOCIETY"].ToString();
            Label2.Text = soname;
        }

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        SqlCommand cmd2 = new SqlCommand("SELECT IMAGE FROM IMG_UPLOAD WHERE SOCIETY=@SOCIETY", con);
        cmd2.Parameters.AddWithValue("@SOCIETY", Label2.Text);

        DataTable dt = new DataTable();
        SqlDataAdapter sda = new SqlDataAdapter();
        cmd2.CommandType = CommandType.Text;
        cmd2.Connection = con;
        try
        {
            con.Open();
            sda.SelectCommand = cmd2;
            sda.Fill(dt);
            GridViewIMG.DataSource = dt;
            GridViewIMG.DataBind();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        finally
        {
            con.Close();
            sda.Dispose();
            con.Dispose();
        }
    }
}