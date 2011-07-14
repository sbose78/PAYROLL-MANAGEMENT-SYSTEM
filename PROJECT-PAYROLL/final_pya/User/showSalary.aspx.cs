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

public partial class User_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        for (int i = 2000; i < 2038; i++)
        {

            DropDownList2.Items.Add(i.ToString());

        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["month"] = DropDownList1.SelectedValue.ToString();
        Session["year"]=DropDownList2.SelectedValue.ToString() ;
        Response.Redirect("Salary.aspx");
        //Month = Session["month"].ToString();
        //year = Session["year"].ToString();
        
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
