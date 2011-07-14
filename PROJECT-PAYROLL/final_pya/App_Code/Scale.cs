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

/// <summary>
/// Summary description for SalaryStructure
/// </summary>
public class Scale
{
    private double basic;
    private double hra;
    private double pf;
    private double da;
    
	public Scale(double basic,double da,double hra,double pf)
	{
		//
		// TODO: Add constructor logic here
		//

        this.basic = basic;
        this.pf = pf;
        this.da = da;
        this.hra = hra;
        
	}
    public Boolean insertScale()
    {
        SqlConnection con = new SqlConnection();

        con.ConnectionString = Convert.ToString(ConfigurationManager.ConnectionStrings["connection"]);
        

        SqlCommand com = new SqlCommand("INSERT INTO SALARY(BASIC,DA,HRA,PF) VALUES("+basic+","+da+","+hra+","+pf+")", con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();


        return true;
        // put database related code here.

    }
}
