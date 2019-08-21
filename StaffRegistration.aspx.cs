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


public partial class StaffPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String soname = "";
        Label2.Text = Session["value2"].ToString();

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        conn.Open();
        SqlCommand cmd1 = new SqlCommand("SELECT SNAME FROM ADMIN_REG WHERE USERNAME=@USERNAME", conn);
        cmd1.Parameters.AddWithValue("@USERNAME", Label2.Text);

        SqlDataReader usernameRdr = null;

        usernameRdr = cmd1.ExecuteReader();

        while (usernameRdr.Read())
        {
            soname = usernameRdr["SNAME"].ToString();
            Label3.Text = soname;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into SATFF_REG (FNAME, LNAME, USERNAME, PASS, SOCIETY,ADHAR, MOB, EMAIL, ADDR, CITY, STATE, PIN, DOB, TYPEOFWORK) values(@FNAME, @LNAME, @USERNAME, @PASS, @SOCIETY, @ADHAR, @MOB, @EMAIL, @ADDR, @CITY, @STATE, @PIN, @DOB, @TOW)", con);
        cmd.Parameters.AddWithValue("@FNAME", TextBox1.Text);
        cmd.Parameters.AddWithValue("@LNAME", TextBox2.Text);
        cmd.Parameters.AddWithValue("@USERNAME", TextBox13.Text);
        cmd.Parameters.AddWithValue("@PASS", TextBox3.Text);
        cmd.Parameters.AddWithValue("@SOCIETY", Label3.Text);
        cmd.Parameters.AddWithValue("@ADHAR", TextBox6.Text);
        cmd.Parameters.AddWithValue("@MOB", TextBox11.Text);
        cmd.Parameters.AddWithValue("@EMAIL", TextBox12.Text);
        cmd.Parameters.AddWithValue("@ADDR", TextBox7.Text);
        cmd.Parameters.AddWithValue("@CITY", TextBox8.Text);
        cmd.Parameters.AddWithValue("@STATE", TextBox9.Text);
        cmd.Parameters.AddWithValue("@PIN", TextBox10.Text);
        cmd.Parameters.AddWithValue("@DOB", TxtDD.Text + "-" + TxtMM.Text + "-" + TxtYYYY.Text);
        cmd.Parameters.AddWithValue("@TOW", TextBox14.Text);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Response.Redirect("AdminAuthorities.aspx");

    }
    protected void TextBox13_TextChanged(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(TextBox13.Text))
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from SATFF_REG where USERNAME=@Name", con);
            cmd.Parameters.AddWithValue("@Name", TextBox13.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                checkusername.Visible = true;
                lblStatus.Text = "UserName Already Taken";
                System.Threading.Thread.Sleep(2000);
            }

            else
            {
                checkusername.Visible = true;
                lblStatus.Text = "Username Is Available For You";
                System.Threading.Thread.Sleep(2000);
            }
        }

        else
        {
            checkusername.Visible = false;
        } 
 
    }
}