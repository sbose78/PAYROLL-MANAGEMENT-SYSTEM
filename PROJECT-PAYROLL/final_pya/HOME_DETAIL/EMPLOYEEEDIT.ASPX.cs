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

public partial class employeeEdit : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        int EID = Convert.ToInt32( Session["userid"].ToString().Trim());
        SqlConnection con = new SqlConnection();
        con.ConnectionString = Convert.ToString(ConfigurationManager.ConnectionStrings["connection"]);
        if (!IsPostBack)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter("select NAME,EMAIL from EMPLOYEE where EID="+EID, con);
            //DropDownList1.Items.Add("--Select--");
            adp.Fill(dt);
            //int a = dt.Rows.Count;
            //foreach (DataRow dr in dt.Rows)
              //  DropDownList1.Items.Add(dr[0].ToString());
            ENAME.Text = dt.Rows[0]["NAME"].ToString();
            EMAIL.Text = dt.Rows[0]["EMAIL"].ToString();
        }
    }
    protected void Update_Click(object sender, EventArgs e)
    {
        int EID = Convert.ToInt32(Session["userid"].ToString().Trim());
        SqlConnection con = new SqlConnection();
        con.ConnectionString = Convert.ToString(ConfigurationManager.ConnectionStrings["connection"]);
        SqlCommand smd = new SqlCommand("update EMPLOYEE set NAME = '" + ENAME.Text + "' , EMAIL = '" + EMAIL.Text + "' where EID = " + EID, con);
        con.Open();
        smd.ExecuteNonQuery();
        con.Close();
        Label3.Text = "Update successful";
    }
}
