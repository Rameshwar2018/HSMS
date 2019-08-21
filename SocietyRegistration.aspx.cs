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
using System.Drawing.Imaging;
using System.Drawing; 


public partial class SocietyRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into ADMIN_REG (FNAME, LNAME, USERNAME, PASS, SNAME, NOF, MOB, EMAIL, ADDR, CITY, STATE, PIN, DOB, TYPE, REGNO, DOCS) values(@FNAME, @LNAME, @USERNAME, @PASS, @SNAME, @NOF, @MOB, @EMAIL, @ADDR, @CITY, @STATE, @PIN, @DOB, @TYPE, @REGNO, @DOCS)", con);
        cmd.Parameters.AddWithValue("@FNAME", TextBox1.Text);
        cmd.Parameters.AddWithValue("@LNAME", TextBox2.Text);
        cmd.Parameters.AddWithValue("@USERNAME", TextBox14.Text);
        cmd.Parameters.AddWithValue("@PASS", TextBox3.Text);
        cmd.Parameters.AddWithValue("@SNAME", TextBox5.Text);
        cmd.Parameters.AddWithValue("@NOF", TextBox6.Text);
        cmd.Parameters.AddWithValue("@MOB", TextBox11.Text);
        cmd.Parameters.AddWithValue("@EMAIL", TextBox12.Text);
        cmd.Parameters.AddWithValue("@ADDR", TextBox7.Text);
        cmd.Parameters.AddWithValue("@CITY", TextBox8.Text);
        cmd.Parameters.AddWithValue("@STATE", TextBox9.Text);
        cmd.Parameters.AddWithValue("@PIN", TextBox10.Text);
        cmd.Parameters.AddWithValue("@TYPE", DropDownList1.Text);
        cmd.Parameters.AddWithValue("@DOB", TxtDD.Text + "-" + TxtMM.Text + "-" + TxtYYYY.Text);
        cmd.Parameters.AddWithValue("@REGNO", TextBox4.Text);
        
        if (FileUpload1.HasFile)
        {
            string str = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Documents/" + str));
            string doc = "~/Documents/" + str.ToString();
            cmd.Parameters.AddWithValue("@DOCS", doc);
        }

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);   
        Response.Redirect("Home.aspx");       
    }


    protected void TextBox14_TextChanged(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(TextBox14.Text))
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from ADMIN_REG where USERNAME=@Name", con);
            cmd.Parameters.AddWithValue("@Name", TextBox14.Text);
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
                lblStatus.Text = "Username Is Available For You !";
                System.Threading.Thread.Sleep(2000);
            }
        }

        else
        {
            checkusername.Visible = false;
        } 
 
    }
}