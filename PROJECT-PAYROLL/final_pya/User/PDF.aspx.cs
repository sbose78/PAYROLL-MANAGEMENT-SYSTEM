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
using iTextSharp.text.pdf;

using System.Collections.Generic;

using System.Diagnostics;
using iTextSharp.text;
using iTextSharp.text.error_messages;
using System.IO;

public partial class TEST_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //bool bRet = false;
        string Month = "", year = "", eid = "";
        string sFilePDF = "C:\\Filled-out Form.pdf";
         string BASIC_DATA="x" ;
            string HRA_DATA="x";
            string DA_DATA = "x";
            string PF_DATA = "x";
            string GROSS_DATA = "x";
            string NET_DATA = "x";
            string Total = "x";
            eid = Session["userid"].ToString();
            Month = Session["month"].ToString();
            year = Session["year"].ToString();

        //Debug.WriteLine("Chapter 5 example 1: My First Table");



        Document document = new Document();

        SqlConnection con = new SqlConnection();
        con.ConnectionString = Convert.ToString(ConfigurationManager.ConnectionStrings["connection"]);

        SqlDataAdapter sc = new SqlDataAdapter("select NAME,SCID from EMPLOYEE where EID=" + eid, con);
        DataTable dt1 = new DataTable();
        sc.Fill(dt1);
        string s1 = dt1.Rows[0]["FULLNAME"].ToString();
        string scal = dt1.Rows[0]["SCID"].ToString();
        //Name_data.Text = s1;
        //scale_data.Text = scal;




        DataTable dt = new DataTable();
       // SqlDataAdapter sda = new SqlDataAdapter("Select * from DISPATCH", con);
        SqlDataAdapter sda = new SqlDataAdapter("Select * from DISPATCH  where EID=" + eid + "and MONTH=" + Month + "AND YEAR=" + year, con);
        sda.Fill(dt);

        foreach (DataRow dr in dt.Rows)
        {
            BASIC_DATA = dr[4].ToString();
            HRA_DATA = dr[5].ToString();
            DA_DATA = dr[6].ToString();
             PF_DATA = dr[7].ToString();
            GROSS_DATA = dr[8].ToString();
             NET_DATA = dr[9].ToString();
             Total = dr[9].ToString() + "/-";
        }

        //SqlConnection con = new SqlConnection();
        //con.ConnectionString = Convert.ToString(ConfigurationManager.ConnectionStrings["connection"]);


        try
        {
            // step 2:

            // we create a writer that listens to the document

            // and directs a PDF-stream to a file


            PdfWriter writer = PdfWriter.GetInstance(document,
                               new FileStream(sFilePDF, FileMode.Create));

            // step 3: we open the document

            document.Open();

            // step 4: we create a table and add it to the document

            //Table aTable = new Table(2, 2);    // 2 rows, 2 columns
            //Table t1 = new Table();
            
            /*
            aTable.AddCell("0.0");
            aTable.AddCell("0.1");
            aTable.AddCell("1.0");
            aTable.AddCell("1.1");
            document.Add(aTable);           */
            //AcroFields fields = writer.AcroForm(); ;

            // set form fields
            /*fields.SetField("name", "John Doe");
            fields.SetField("address", "2 Milky Way, London");
            fields.SetField("postal_code", "XX1 4YY");
            fields.SetField("email", "johndoe@hotmail.com");*/
            //document.Add(new Paragraph("Hello World!"));
            document.Add(new Paragraph(" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"));
            document.Add(new Paragraph("        Employee Name :    "+s1.ToUpper()));
            document.Add(new Paragraph("        Scale         :    "+scal));
            document.Add(new Paragraph(" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"));
            document.Add(new Paragraph(" "));
            document.Add(new Paragraph(" "));
            document.Add(new Paragraph(" "));            
            document.Add(new Paragraph(" "));
            document.Add(new Paragraph(" "));
            document.Add(new Paragraph(" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"));
            document.Add(new Paragraph("                                  Salary  Detail For this month"));
            document.Add(new Paragraph(" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"));
            document.Add(new Paragraph("                                     BASIC    :     "+BASIC_DATA));
            document.Add(new Paragraph("                                     HRA       :     "+HRA_DATA));
            document.Add(new Paragraph("                                     DA          :     "+DA_DATA));
            document.Add(new Paragraph("                                     PF         :     "+PF_DATA));
            document.Add(new Paragraph("                                     GROSS  :     "+GROSS_DATA));
            document.Add(new Paragraph(" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"));
            document.Add(new Paragraph("                                 NET   :     "+NET_DATA));
            document.Add(new Paragraph(" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"));
            





        }
        catch (DocumentException de)
        {
            //this.Message = de.Message;
        }
        catch (IOException ioe)
        {
            //this.Message = ioe.Message;
        }



        document.Close();
        //Response.Redirect("C:\\Filled-out Form.pdf");

    }
}
