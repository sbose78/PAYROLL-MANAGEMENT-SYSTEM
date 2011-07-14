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

public partial class User_changePass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void EID_TextChanged(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = Convert.ToString(ConfigurationManager.ConnectionStrings["connection"]);
        SqlDataAdapter sdr = new SqlDataAdapter("select * from Employee "+"where EID="+EID.Text+" and password='"+OPass.Text+"'", con);
        DataTable d1 = new DataTable();
        sdr.Fill(d1);
        if (d1.Rows.Count == 0)
        {
            Label5.Text = "Put correct username and password";
        }
        else
        {
            
            SqlCommand com = new SqlCommand("Update Employee set password='" + NPASS.Text + "' where EID=" + EID.Text + " and password='" + OPass.Text + "'", con);
            

            con.Open();
            com.ExecuteNonQuery();
            con.Close();
            Label5.Text = "Password is changed successfully";
        }
        
    }
}
     
