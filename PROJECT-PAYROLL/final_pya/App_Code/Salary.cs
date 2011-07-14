using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public class Salary
{

    /// <summary>
    ///  THIS CLASS CALCULATES THE VARIOUS SUBPARTS OF THE SALARY.
    /// </summary>

    private double pda;
    private double phra;
    private double ppf;
    private double basic;
    private double pincrement;
    private double pdeduct;
    public Salary(int n)
    {
    }

    public Salary(double basic1,double pda1, double phra1, double ppf1, double pincrement1,double pdeduct1 )
    {
        pdeduct = pdeduct1;
        pda = pda1;
        phra = phra1;
        basic = basic1;
        ppf = ppf1;
        pincrement = pincrement1;

    }

    public  String test()
    {
        return "OKAY .. DONE";
    }
    public double getBasic()
    {
        return basic;
    }
    
    public double getDA()
    {
        return basic * (pda/100);
    }
    public double getHRA()
    {
        return basic * (phra/100);
    }

    public double getPF()
    {
        return basic*(ppf/100);
    }

    public double getIncrement()
    {
        return (pincrement / 100) * basic;
    }

    public double getDeduction()
    {
        return (pdeduct / 100) * getGross();
    }

    public double getGross()
    {
        return basic + getHRA() + getDA() + getIncrement();
    }

    public double getNetpay()
    {
        return getGross() - getPF() - getDeduction();
    }
    public double calculate()
    {
        double salary = getNetpay();
        return salary;
    }

}
