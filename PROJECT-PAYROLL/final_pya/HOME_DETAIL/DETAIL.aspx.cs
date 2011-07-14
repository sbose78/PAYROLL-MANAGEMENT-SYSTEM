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

public partial class DETAIL : System.Web.UI.Page
{
    //Boolean f = true;
    protected void Page_Load(object sender, EventArgs e)
    {
        String p = Session["privilege"].ToString().Trim();
        chk.Text = "1";
        if (!p.Equals("ADMINISTRATOR"))
        {
            Server.Transfer("error.aspx");
        }


        SqlConnection con = new SqlConnection();
        con.ConnectionString = Convert.ToString(ConfigurationManager.ConnectionStrings["connection"]);
        if (!IsPostBack)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter("select SCID from SALARY", con);
           // DropDownList1.Items.Add("--Select--");
            adp.Fill(dt);
            //int a = dt.Rows.Count;
            foreach (DataRow dr in dt.Rows)
                DropDownList1.Items.Add(dr[0].ToString());
        }
    }
    protected void SUBMIT_Click(object sender, EventArgs e)
    {
        if (chk.Text!="0")
        {
            Label7.Text = "";
            SqlConnection con = new SqlConnection();
            con.ConnectionString = Convert.ToString(ConfigurationManager.ConnectionStrings["connection"]);
            string A = "";
            if (PRIVILEGE.SelectedIndex == 0)
                A = "ADMINISTRATOR";
            else if (PRIVILEGE.SelectedIndex == 1)
                A = "EMPLOYEE";
            SqlCommand smd = new SqlCommand("insert into EMPLOYEE values ('" + FULLNAME.Text + "'," + DropDownList1.SelectedItem.ToString() + ",1,'" + EMAIL.Text + "',3,5,2001,'" + 11.00 + "','PASSWORD','" + A + "')", con);
            con.Open();
            smd.ExecuteNonQuery();
            con.Close();

            DataTable d = new DataTable();
            SqlConnection con1 = new SqlConnection();
            con1.ConnectionString = Convert.ToString(ConfigurationManager.ConnectionStrings["connection"]);
            SqlDataAdapter adp = new SqlDataAdapter("select EID from EMPLOYEE where EMAIL='" + EMAIL.Text + "'", con1);
            adp.Fill(d);
            DataRow dr = d.Rows[0];
            String k = dr["EID"].ToString();
            TextBox2.Text = "Data insert successful and your id is :" + k;
            Label1.Text = "your given password:'PASSWORD'\nplease change it after LOGIN";
        }
        else
        {
            //Label1.Text = "Enter correct E-MAIL";
            TextBox2.Text = "";
            Label1.Text = "";
        }
    }

    protected void EMAIL_TextChanged1(object sender, EventArgs e)
    {
        //1. EMAIL.TEXT  
        //2.  select eid from db where email= email
        // 3 if atlewast 1 row
        DataTable d = new DataTable();
        SqlConnection con1 = new SqlConnection();
        con1.ConnectionString = Convert.ToString(ConfigurationManager.ConnectionStrings["connection"]);
        SqlDataAdapter adp = new SqlDataAdapter("select EID from EMPLOYEE where EMAIL='" + EMAIL.Text + "'", con1);
        adp.Fill(d);
        if (d.Rows.Count != 0)
        {
            Label7.Text = "EMAIL IS ALREADY EXIST OR NOT A VALID EMAIL.";
            chk.Text = "0";
        }
        else
        {
            Label7.Text = "";
            chk.Text = "1";
        }
            //Page_Load(sender, e);
    }
    protected void PRIVILEGE_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ADD_Click(object sender, EventArgs e)
    {
        FULLNAME.Text = "";
        EMAIL.Text = "";
        Label7.Text = "";
        Label1.Text = "";
        TextBox2.Text = "";
    }
}
