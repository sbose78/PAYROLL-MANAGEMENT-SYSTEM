using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label4.Text = "";
        Label5.Text = "";
        
        SqlConnection con = new SqlConnection();
        con.ConnectionString = Convert.ToString(ConfigurationManager.ConnectionStrings["connection"]);
        if (!IsPostBack)
        {
            YES.SelectedIndex = 1;
            DataTable dt = new DataTable();
            SqlDataAdapter adpt = new SqlDataAdapter("select EID from EMPLOYEE", con);
            adpt.Fill(dt);
            EID.Items.Add("");
            foreach (DataRow dr in dt.Rows)
            {
                EID.Items.Add(dr[0].ToString());
            }
        }
    
    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void INC_TextChanged(object sender, EventArgs e)
    {

    }
    protected void EID_TextChanged(object sender, EventArgs e)
    {

    }
    protected void SUBMIT_Click(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        {
            string a;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = Convert.ToString(ConfigurationManager.ConnectionStrings["connection"]);
            SqlDataAdapter val = new SqlDataAdapter("select INCREMENTS from INCREMENT where EID="+EID.Text,con);
            DataTable dt1 = new DataTable();
           
            val.Fill(dt1);
           
            if (dt1.Rows.Count==0)
            {
                a = "0";
            }
            else
                a = dt1.Rows[0]["INCREMENTS"].ToString();

           
            
            if (a == "00")
            {
                SqlCommand adpt = new SqlCommand("insert into INCREMENT values(" + INC.Text + "," + EID.Text + ",1)", con);
                con.Open();

                adpt.ExecuteNonQuery();
                con.Close();
                Label5.Text = "value entered properly";
            }
            else
            {
                INC.Text = a;
                Label4.Text = "value already exist";
                Label5.Text = "do you want to update increment";

            }

        }
        
        
        
        if (YES.SelectedIndex.ToString()  == "0")
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = Convert.ToString(ConfigurationManager.ConnectionStrings["connection"]);
            
            string sql = "update INCREMENT  set INCREMENTS= " + NEW.Text + " where EID=" + EID.Text;
            SqlCommand val;
            if (INC.Text == "0")
            {
                 val = new SqlCommand("insert into increment values(" + NEW.Text + "," + EID.Text + ",1)",con);
            }
            else
            {
                val = new SqlCommand("update INCREMENT  set INCREMENTS= " + NEW.Text + " where EID=" + EID.Text, con);
            }
            
            
            con.Open();
            val.ExecuteNonQuery();
            con.Close();
            Label5.Text = " value updated";
            Label4.Text = "";
                       
        }



    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SUBMIT_Click(sender, e);
    }
    protected void CHANGE_TextChanged(object sender, EventArgs e)
    {

    }
}
