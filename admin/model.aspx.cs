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
public partial class admin_model : System.Web.UI.Page
{
    model m = new model();
    string qry;
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds;
    SqlCommand cmd = new SqlCommand();
    myconn x1 = new myconn();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["aname"] == null)
        {
            Response.Redirect("login.aspx");
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string str;
        Boolean msg = false;


        str = Server.MapPath("model_img/");
        if (fu1.HasFile)
        {
            str = str + fu1.FileName;
            fu1.SaveAs(str);
            msg = true;

        }
        
        qry="insert into tbl_model values(" + ddlcompname.SelectedValue + ",'" + txtmname.Text + "','" + fu1.FileName + "'," + ddlstatus.SelectedValue + ")";
        m.modelins(qry);
    }





    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.ContentType = "application/pdf";
        Response.AddHeader("content-disposition", "attachment;filename=MODALDETIL.pdf");
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
}