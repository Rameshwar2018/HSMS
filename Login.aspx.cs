using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;



public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        con.Open();

        if (DropDownList1.Text == "Admin")
        {
            SqlCommand cmd = new SqlCommand("select * from ADMIN_REG where USERNAME =@USERNAME and PASS=@PASS", con);

            cmd.Parameters.AddWithValue("@USERNAME", TextBox1.Text);
            cmd.Parameters.AddWithValue("@PASS", TextBox2.Text);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);


            if (dt.Rows.Count > 0)
            {
                Session["useridseek"] = TextBox1.Text;
                Session["value2"] = TextBox1.Text;
                Response.Redirect("AdminAuthorities.aspx?userid=" + TextBox1.Text + "?password=" + TextBox2.Text);
                //Response.Write("login sucess");

            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
            }

        }

        if (DropDownList1.Text == "Society Member")
        {
            SqlCommand cmd = new SqlCommand("select * from MEM_REG where USERNAME =@USERNAME and PASS=@PASS", con);

            cmd.Parameters.AddWithValue("@USERNAME", TextBox1.Text);
            cmd.Parameters.AddWithValue("@PASS", TextBox2.Text);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);


            if (dt.Rows.Count > 0)
            {
                Session["useridseek"] = TextBox1.Text;
                Session["value2"] = TextBox1.Text;
                Response.Redirect("MemberPage.aspx?userid=" + TextBox1.Text + "?password=" + TextBox2.Text);
                //Response.Write("login sucess");

            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
            }
        }

        if (DropDownList1.Text == "Staff")
        {
            SqlCommand cmd = new SqlCommand("select * from SATFF_REG where USERNAME =@USERNAME and PASS=@PASS", con);

            cmd.Parameters.AddWithValue("@USERNAME", TextBox1.Text);
            cmd.Parameters.AddWithValue("@PASS", TextBox2.Text);

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);


            if (dt.Rows.Count > 0)
            {
                Session["useridseek"] = TextBox1.Text;
                Session["value2"] = TextBox1.Text;
                Response.Redirect("StaffPage.aspx?userid=" + TextBox1.Text + "?password=" + TextBox2.Text);
                //Response.Write("login sucess");

            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
            }






        }
    }
}