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

public partial class ADMIN_DISPATCH_SALARY : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String p = Session["privilege"].ToString().Trim() ;
        if (!p.Equals("ADMINISTRATOR"))
        {
            Server.Transfer("/PAYROLL007/error.aspx");
        }

        for(int i=2000;i<2038;i++)
        {
            
            DropDownList2.Items.Add(i.ToString());

        }

        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        int MONTH= Convert.ToInt32((DropDownList1.SelectedItem.Value.ToString()));
        int YEAR = Convert.ToInt32((DropDownList2.SelectedItem.Value.ToString()));
        Dispatch d = new Dispatch(MONTH,YEAR);
        String s=d.run();
        TextBox1.Text = s;

        //Response.Redirect("DISPATCH_SALARY.aspx");
        
        
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {



    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
}
