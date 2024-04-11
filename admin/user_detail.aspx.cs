using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Data;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;


public partial class admin_user_detail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["aname"] == null)
        {
            Response.Redirect("login.aspx");
        }

         if (!IsPostBack)
            {
                // Bind GridView data here
                //BindGridView();
            }
    }

    //private void BindGridView()
    //{
    //    // Sample data binding
    //    GridView1.DataSource = GridView1;
    //    GridView1.DataBind();
    //}

    protected void Button1_Click(object sender, EventArgs e)
    {

        //    Response.ContentType = "application/pdf";
        //    Response.AddHeader("content-disposition", "attachment;filename=GridViewExport.pdf");
        //    Response.Cache.SetCacheability(HttpCacheability.NoCache);

        //    StringWriter sw = new StringWriter();
        //    HtmlTextWriter hw = new HtmlTextWriter(sw);
        //    GridView1.RenderControl(hw);

        //    StringReader sr = new StringReader(sw.ToString());
        //    Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
        //    HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
        //    PdfWriter.GetInstance(pdfDoc, Response.OutputStream);

        //    pdfDoc.Open();
        //    htmlparser.Parse(sr);
        //    pdfDoc.Close();

        //    Response.Write(pdfDoc);
        //    Response.End();
        //}

        Response.Clear();
        Response.Buffer = true;
        Response.ContentType = "application/ms-excel";
        Response.AddHeader("content-disposition", "attachment; filename=UserInfo.xls");
        Response.Charset = "";
        StringWriter sw = new StringWriter();
        HtmlTextWriter htw = new HtmlTextWriter(sw);
        GridView1.RenderControl(htw);
        Response.Output.Write(sw.ToString());
        Response.End();
    }

    public override void VerifyRenderingInServerForm(Control control)
    {
        
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.ContentType = "application/pdf";
        Response.AddHeader("content-disposition", "attachment;filename=USERDETIL.pdf");
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