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

public partial class TEST_profileDeelete : System.Web.UI.Page
{

    string ss2;
    protected void Page_Load(object sender, EventArgs e)
    {

        // n = Convert.ToInt32(Label3.Text) + 1;
        //Label3.Text = n.ToString();
        if (!IsPostBack)
        {
            //Session["DelID"] = "0";

            SqlConnection con = new SqlConnection();
            con.ConnectionString = Convert.ToString(ConfigurationManager.ConnectionStrings["connection"]);

            SqlDataAdapter sc = new SqlDataAdapter("select NAME,EID from EMPLOYEE", con);
            DataTable dt1 = new DataTable();
            sc.Fill(dt1);
            foreach (DataRow dr in dt1.Rows)
                DropDownList1.Items.Add(dr[1].ToString());
        }
        else
        {
            //string ss = Session["DelId"].ToString();
            
            string ss = DropDownList1.SelectedIndex.ToString();
            string ss1 = DropDownList1.SelectedValue.ToString();
            Label3.Text = ss;
            DropDownList1.Items.Clear();
            SqlConnection con = new SqlConnection();
            con.ConnectionString = Convert.ToString(ConfigurationManager.ConnectionStrings["connection"]);

            SqlDataAdapter sc = new SqlDataAdapter("select NAME,EID from EMPLOYEE", con);
            DataTable dt1 = new DataTable();
            sc.Fill(dt1);
            foreach (DataRow dr in dt1.Rows)
                DropDownList1.Items.Add(dr[1].ToString());
            DropDownList1.SelectedIndex = Convert.ToInt32(ss);
            ss1 = dt1.Rows[Convert.ToInt32(ss)]["NAME"].ToString();
            Label3.Text = ss1;
            ss2 = dt1.Rows[Convert.ToInt32(ss)]["EID"].ToString();
            
        }      

            
            
            
        
            
        
        //string scal = dt1.Rows[0]["SCID"].ToString();

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //string s;
        //s = DropDownList1.SelectedValue.ToString();
        //Session["DelId"] = s.ToString();
        //Label3.Text=s;
        //Label3.Text = "1";

        /*SqlConnection con = new SqlConnection();
        con.ConnectionString = Convert.ToString(ConfigurationManager.ConnectionStrings["connection"]);

        SqlDataAdapter sc = new SqlDataAdapter("select FULLNAME,EID from EMPLOYEE", con);
        DataTable dt1 = new DataTable();
        sc.Fill(dt1);
        foreach (DataRow dr in dt1.Rows)
            DropDownList1.Items.Add(dr[1].ToString());
         */
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = Convert.ToString(ConfigurationManager.ConnectionStrings["connection"]);

        SqlCommand sc1 = new SqlCommand("Delete from  employee where eid=" + ss2, con);
        con.Open();
        sc1.ExecuteNonQuery();
        con.Close();
    }
}
