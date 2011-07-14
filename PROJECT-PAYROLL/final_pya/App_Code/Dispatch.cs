using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for Dispatch
/// </summary>
public class Dispatch
{
    private int month;
    private int year;
	public Dispatch(int month, int year)
	{
        this.year = year;
        this.month = month;

	}

    public String run()
    {
        // step 1: retrieve EMPLOYEE table from database

        SqlConnection con = new SqlConnection();

        con.ConnectionString = Convert.ToString(ConfigurationManager.ConnectionStrings["connection"]);

        SqlDataAdapter sc = new SqlDataAdapter("SELECT EID,SCID FROM EMPLOYEE", con);
        DataTable dte = new DataTable();
        sc.Fill(dte);

        int said = 100;

        String test = "";
        foreach(DataRow dr in dte.Rows)
        {
            said++;
            String eid = dr["EID"].ToString();
            String scid = dr["SCID"].ToString();

            


            //step 2:  GET ADJUSTMENTS


            Adjustment adj = new Adjustment(Convert.ToInt32(eid));
            double d = adj.getDeductionOnGross();
            double i = adj.getIncrementOnBasic();


            Salary salary = getSalary(Convert.ToInt32(scid), i, d);

            double basic = salary.getBasic();
            double da = salary.getDA();
            double hra = salary.getHRA();
            double pf = salary.getPF();
            double gross = salary.getGross();
            double netpay = salary.getNetpay();

            test = test + "--" + basic + "," + da + "," + hra + "," + pf + "," + gross + "," + netpay;

            //insertIntoDispatch();

           
                SqlConnection con2 = new SqlConnection();

                con2.ConnectionString = Convert.ToString(ConfigurationManager.ConnectionStrings["connection"]);


                SqlCommand com2 = new SqlCommand("INSERT INTO DISPATCH (EID,MONTH,YEAR,BASIC,DA,HRA,PF,GROSS,NETPAY) VALUES("+eid+","+month+","+year+","+basic+","+da+","+hra+","+pf+","+gross+","+netpay+")", con2);
                con2.Open();
                
                com2.ExecuteNonQuery();
                
                con2.Close();
            


            // step 3 insert all details into DISPATCH database table.


        }
        return "SUCCESSFULLY INSERTED";
    }

    // THIS FUNCTION USED ONLY FOR TESTING 
    public Boolean insertIntoDispatch()
    {

        SqlConnection con = new SqlConnection();

        con.ConnectionString = Convert.ToString(ConfigurationManager.ConnectionStrings["connection"]);
        SqlCommand com = new SqlCommand("INSERT INTO DISPATCH VALUES(1,1,1,1,1,1,1,1,1,1)", con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
        return true;
    }

    // RETURNS SALARY OBJECT WITH ALL PROPERTIES 
    public Salary getSalary(int scid, double increment, double decrement)
    {


        SqlConnection con = new SqlConnection();

        con.ConnectionString = Convert.ToString(ConfigurationManager.ConnectionStrings["connection"]);

        SqlDataAdapter gs = new SqlDataAdapter("SELECT BASIC,DA,HRA,PF FROM SALARY", con);
        DataTable dts = new DataTable();
        gs.Fill(dts);

        DataRow dr = dts.Rows[0];

         String basic = ( dr[0]).ToString();
        String da = dr[1].ToString();
        String hra = dr[2].ToString();
        String pf = dr[3].ToString();

        double b=Convert.ToDouble(basic);
        double d=Convert.ToDouble(da);
        double h=Convert.ToDouble(hra);
        double p=Convert.ToDouble(pf);

        Salary s=new Salary(b,d,h,p,increment,decrement);
        
        return s;
    }
    
}
