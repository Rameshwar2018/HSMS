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

public partial class HallBooking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String soname = "";
        Label1.Text = Session["value2"].ToString();

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            conn.Open();
            SqlCommand cmd1 = new SqlCommand("SELECT SOCIETY, FNAME, SNAME FROM MEM_REG WHERE USERNAME=@USERNAME", conn);
            cmd1.Parameters.AddWithValue("@USERNAME", Label1.Text);

            SqlDataReader usernameRdr = null;

            usernameRdr = cmd1.ExecuteReader();

            while (usernameRdr.Read())
            {
                soname = usernameRdr["SOCIETY"].ToString();
                Label2.Text = soname;
                TextBox2.Text = usernameRdr["FNAME"].ToString() + " " + usernameRdr["SNAME"].ToString();
            }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        con1.Open();
        SqlCommand cmd1 = new SqlCommand("insert into HALL_BOOKING (RQNO, NAME, EVENT, DATE, SOCIETY, UNAME) values(@RQNO, @NAME, @EVENT, @DATE, @SOCIETY, @UNAME)", con1);
        cmd1.Parameters.AddWithValue("@RQNO", TextBox1.Text);
        cmd1.Parameters.AddWithValue("@NAME", TextBox2.Text);
        cmd1.Parameters.AddWithValue("@EVENT", TextBox13.Text);
        cmd1.Parameters.AddWithValue("@DATE", TxtDD.Text + "-" + TxtMM.Text + "-" + TxtYYYY.Text);
        cmd1.Parameters.AddWithValue("@SOCIETY", Label2.Text);
        cmd1.Parameters.AddWithValue("@UNAME", Label1.Text);

        SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
        DataTable dt1 = new DataTable();
        da1.Fill(dt1);
        Response.Redirect("MemberPage.aspx");
    }
}