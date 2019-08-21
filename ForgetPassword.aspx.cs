using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class ForgetPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        con.Open();

        if (DropDownList1.Text == "Society Member")
        {
            SqlCommand cmd = new SqlCommand("select * from MEM_REG where USERNAME =@username and DOB=@DOB", con);
            cmd.Parameters.AddWithValue("@username", TextBox1.Text);
            cmd.Parameters.AddWithValue("@DOB", TxtDD.Text + "-" + TxtMM.Text + "-" + TxtYYYY.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                if (dt.Rows[0]["status"].ToString() == "Place")
                    ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Already Placed')</script>");
                else
                {
                    Session["useridseek"] = TextBox1.Text;
                    Response.Redirect("SetForget.aspx?userid=" + TextBox1.Text);
                    //Response.Write("login sucess");
                }
            }
        }
        else if (DropDownList1.Text == "Admin")
        {
            SqlCommand cmd = new SqlCommand("select * from ADMIN_REG where USERNAME =@username and DOB=@DOB", con);
            cmd.Parameters.AddWithValue("@username", TextBox1.Text);
            cmd.Parameters.AddWithValue("@DOB", TxtDD.Text + "-" + TxtMM.Text + "-" + TxtYYYY.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                if (dt.Rows[0]["SNAME"].ToString() == "Place")
                    ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Already Placed')</script>");
                else
                {
                    Session["useridseek"] = TextBox1.Text;
                    Response.Redirect("SetForgetAdmin.aspx?userid=" + TextBox1.Text);
                    //Response.Write("login sucess");
                }
            }
        }
        else if (DropDownList1.Text == "Staff")
        {
            SqlCommand cmd = new SqlCommand("select * from SATFF_REG where USERNAME =@username and DOB=@DOB", con);
            cmd.Parameters.AddWithValue("@username", TextBox1.Text);
            cmd.Parameters.AddWithValue("@DOB", TxtDD.Text + "-" + TxtMM.Text + "-" + TxtYYYY.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                if (dt.Rows[0]["SOCIETY"].ToString() == "Place")
                    ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Already Placed')</script>");
                else
                {
                    Session["useridseek"] = TextBox1.Text;
                    Response.Redirect("SetForgetStaff.aspx?userid=" + TextBox1.Text);
                    //Response.Write("login sucess");
                }
            }
        }
    
    }
}