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

public partial class SocietyDesc : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = Session["value"].ToString();

        if (!IsPostBack)
        {
            BindGridviewData();
        }
              
    }

    private void BindGridviewData()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from ADMIN_REG where SNAME=@SNAME", con);
        cmd.Parameters.AddWithValue("@SNAME", Label2.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }

    
    protected void lnkDownload_Click(object sender, EventArgs e)
    {
        LinkButton lnkbtn = sender as LinkButton;
        GridViewRow gvrow = lnkbtn.NamingContainer as GridViewRow;
        string filePath = GridView1.DataKeys[gvrow.RowIndex].Value.ToString();
        Response.ContentType = "documents/pdf";
        Response.AddHeader("Content-Disposition", "attachment;filename=\"" + filePath + "\"");
        Response.TransmitFile(Server.MapPath(filePath));
        Response.End();
    }
}