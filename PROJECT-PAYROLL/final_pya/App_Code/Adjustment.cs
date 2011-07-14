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
/// Summary description for Adjustment
/// </summary>
public class Adjustment
{
    private int eid;

    public Adjustment(int employee_id)
    {
        eid = employee_id;
    }
    public double getIncrementOnBasic()
    {

        SqlConnection con = new SqlConnection();

        con.ConnectionString = Convert.ToString(ConfigurationManager.ConnectionStrings["connection"]);

        SqlDataAdapter gs = new SqlDataAdapter("SELECT INCREMENTS FROM INCREMENT WHERE EID = "+eid, con);
        DataTable dts = new DataTable();
        gs.Fill(dts);

        if (dts.Rows.Count != 0)
        {
            DataRow dr = dts.Rows[0];

            String i = (dr[0]).ToString();
            double inc = Convert.ToDouble(i);

            return inc;
        }
        return 0;
    }

    public double getDeductionOnGross()
    {
        return 0;
    }


}
