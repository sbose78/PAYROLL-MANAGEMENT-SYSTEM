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



public partial class ADMIN_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        String p = Session["privilege"].ToString().Trim();
        if (!p.Equals("ADMINISTRATOR"))
        {
            Server.Transfer("error.aspx");
        }
        /*
        Salary s = new Salary(2);
        //s = new Salary(2);
        Button1.Text = s.test();

        Scale sc = new Scale(0, 0, 0, 0);
        sc.insertScale();
        */
        
         
    }
  
    public bool isValid()
    {
        if (PDA.Text != null && BASIC.Text != null && PHRA.Text != null && PPF.Text != null)
            return true;

        
        return false;

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        

        double basic = Convert.ToDouble(BASIC.Text);
        double hra = Convert.ToDouble(PHRA.Text);
        double da = Convert.ToDouble(PDA.Text);
        double pf = Convert.ToDouble(PPF.Text);

         

         Scale s=new Scale(basic,da,hra,pf);
         Boolean status= s.insertScale();
         if (status)
         {
             STATUS.Text = " SCALE ADDED , OK ! ";
         }
         else
         {
             STATUS.Text = " ERROR , TRY AGAIN ! ";
         }
         
    }
}
