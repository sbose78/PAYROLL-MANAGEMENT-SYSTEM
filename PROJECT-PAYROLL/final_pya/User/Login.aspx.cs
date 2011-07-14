using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
public partial class User_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String s = "kk";
        
        SqlConnection con = new SqlConnection();
        con.ConnectionString = Convert.ToString(ConfigurationManager.ConnectionStrings["connection"]);
        SqlDataAdapter sdr=new SqlDataAdapter("select * from Employee where EID="+EMPID.Text+"and PASSWORD='"+PASS.Text+"'",con);
        //DataSet ds = new DataSet();
        DataTable dt1 = new DataTable();
        sdr.Fill(dt1);
        if (dt1.Rows.Count == 1)
        {
            String privilege = dt1.Rows[0]["PRIVILEGE"].ToString();
            String name = dt1.Rows[0]["NAME"].ToString();
            Login.Text = "Login successful";
            Session["userid"] = EMPID.Text;
            Session["name"] = name;
            Session["privilege"] = privilege;
            Response.Redirect("showSalary.aspx");
            //Login.Text = dt1.Rows.Count.ToString();
        }
        else
        {
            Login.Text = "Enter correct Username and password";
        }



        
    }
    protected void WebUserControl1_Load(object sender, EventArgs e)
    {

    }
}
