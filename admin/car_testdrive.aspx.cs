using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using iTextSharp.text.pdf;
using iTextSharp.text;
public partial class admin_car_testdrive : System.Web.UI.Page
{
    myconn x = new myconn();

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["aname"] == null)
        {
            Response.Redirect("login.aspx");
        }
    }
    protected void btnsend_Click(object sender, EventArgs e)
    {
        //x.cnopen();

        //x.cnclose();
    }
    //protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    txtuname.Text = GridView1.SelectedRow.Cells[2].Text;
    //    txtlname.Text = GridView1.SelectedRow.Cells[3].Text;
    //    txtphoneno.Text = GridView1.SelectedRow.Cells[4].Text;

    //}

    protected void Button1_Click(object sender, EventArgs e)
    { 

    }


    protected void Button1_Click1(object sender, EventArgs e)
    {

        Response.ContentType = "application/pdf";
        Response.AddHeader("content-disposition", "attachment;filename=carTestDrive.pdf");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);

        Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
        PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
        pdfDoc.Open();

        // Create a PdfPTable to hold the GridView data
        PdfPTable table = new PdfPTable(GridView1.Columns.Count);
        table.WidthPercentage = 100;

        // Add headers to the table
        foreach (TableCell headerCell in GridView1.HeaderRow.Cells)
        {
            PdfPCell cell = new PdfPCell(new Phrase(headerCell.Text));
            cell.BackgroundColor = new BaseColor(240, 240, 240); // Optional: Set background color for header cells
            table.AddCell(cell);
        }

        // Add rows to the table
        foreach (GridViewRow row in GridView1.Rows)
        {
            foreach (TableCell cell in row.Cells)
            {
                PdfPCell pdfCell = new PdfPCell(new Phrase(cell.Text));
                table.AddCell(pdfCell);
            }
        }

        // Add the table to the PDF document
        pdfDoc.Add(table);
        pdfDoc.Close();
        Response.Write(pdfDoc);
        Response.End();
    }

    protected void btnNextPage_Click(object sender, EventArgs e)
    {

    }
}
