using System;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using iTextSharp.text.pdf;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using System.Web;
using System.Xml.Linq;
using System.Configuration;
using iText.Layout.Element;
using iTextSharp.text.pdf.codec;
using System.Runtime.CompilerServices;
using System.Windows.Forms.VisualStyles;
using iText.IO.Image;
using iText.Kernel.Pdf;
using iText.Layout;
using iText.Layout.Element;
using iText.IO.Image;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.pdf;


public partial class admin_add_company : System.Web.UI.Page
{
    company x = new company();
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds;
    SqlCommand cmd = new SqlCommand();
    myconn x1 = new myconn();
    string qry;

    public object XMLWorkerHelper { get; private set; }

    protected void Page_Load(object sender, EventArgs e)
    {


        if (Session["aname"] == null)
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            if (!IsPostBack)
            {
                PopulateData();
            }

        }

        

    }

    protected void ddlstatus_SelectedIndexChanged(object sender, EventArgs e)
    {
        //int status = Convert.ToInt32(ddlstatus.SelectedValue);

        //if (status == 0)
        //{
        //    // Display the image for status 0
        //    fu1.Visible = true; // Show the FileUpload control
        //}
        //else if (status == 1)
        //{
        //    // Hide the image for status 1
        //    fu1.Visible = false; // Hide the FileUpload control
        //}
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {


        if (IsCompanyNameExists(txtcname.Text))
        {
            lblStatus.Text = "Company name already exists. Please choose a different one.";
            return;
        }



        //else  if (Checkname() == false)
        //    {
        //        lblStatus.Text = "new name";
        //        txtcname.BackColor = System.Drawing.Color.Black;

        //    }
        string str;
        Boolean msg = true;


        str = Server.MapPath("company_logo/");
        if (fu1.HasFile)
        {
            str = str + fu1.FileName;
            fu1.SaveAs(str);
            msg = true;

        }



        //if (Checkname() == true)
        //{
        //    lblStatus.Text = "YOUR COMPNY NAME ARE SAME";
        //    txtcname.BackColor = System.Drawing.Color.Red;

        //}

       //else if (Checkname() == true)
       // {
       //     lblStatus.Text = "YOUR new name";
       //     txtcname.BackColor = System.Drawing.Color.Black;

       // }

        //else
        //{

        //    txtcname.BackColor = System.Drawing.Color.Green;
        //    lblStatus.Text = "NEW COMPNY NAME ARE SUESFULL INSERT";
        //    txtcname.Visible = true;
        //    fu1.Visible = false;
        //    ddlstatus.Visible = false;  
            
            qry = "insert into tbl_comp values('" + txtcname.Text + "','" + fu1.FileName + "'," + ddlstatus.SelectedValue + ")";
            x.compins(qry);
        clear();
    }

    private void clear()
    {
       txtcname.Text = "";
       
    }

    private bool IsCompanyNameExists(string companyName)
    {
        bool exists = false;
        using (SqlConnection connection = new SqlConnection("Data Source=JAYRAMAPIR\\SQLEXPRESS04;Initial Catalog=\"E:\\AUTO MOBILE\\APP_DATA\\DATABASE.MDF\";Integrated Security=True;Encrypt=False"))
        {
            string query = "SELECT COUNT(*) FROM tbl_comp WHERE compname = @CompanyName";
            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@CompanyName", companyName);

            try
            {
                connection.Open();
                int count = (int)command.ExecuteScalar();
                exists = (count > 0);

                if (!exists)
                {
                    // Add your code here to add the new company to the database
                    // For example:
                    // AddNewCompany(companyName);

                    // Set label status for successful addition
                    lblStatus.Text = "Company added successfully.";
                    lblStatus.ForeColor = System.Drawing.Color.Green;
                    lblStatus.Visible = true;
                    
                   //txtcname.BackColor = System.Drawing.Color.Green;


                }
                else
                {
                    // Company already exists
                    lblStatus.Text = "Company already exists.";
                    lblStatus.ForeColor = System.Drawing.Color.Red;
                    lblStatus.Visible = true;
                    //txtcname.BackColor = System.Drawing.Color.Red;

                }
            }
            
            catch (Exception ex)
            {
                lblStatus.Text = "An error occurred while adding the company.";
                lblStatus.ForeColor = System.Drawing.Color.Red;
                lblStatus.Visible = true;
            }

            //    finally
            //    {
            //        // Clear the status label message
            //        lblStatus.Text = "";
            //        lblStatus.Visible = false;
            //    }

            //finally
            //{
            //    // Clear the status label message
            //    lblStatus.Text = "";
            //    lblStatus.Visible = false;
            //}
        }
    
     

        return exists;
    }

    

    protected void btnSearch_Click(object sender, EventArgs e)
    {

        qry = "select * from tbl_comp where compname like '" + txtcname.Text + "'";
        x.compsele(qry);

        GridView1.DataSource = x.ds;
        GridView1.DataBind();   

    }



    public void DeleteRow(object sender, GridViewDeleteEventArgs e)
    {
        var compid = GridView1.DataKeys[e.RowIndex].Value;

        x1.cnopen();
        {
            qry = "Delete from tbl_comp" + " where compid = @compid";
            using (SqlCommand cmd = new SqlCommand(qry, x1.cn))
            {
                cmd.Parameters.AddWithValue("@compid", compid);
                cmd.ExecuteNonQuery();
                x1.cnclose();
            }
        }
        lblMessage.Text = "Record has been deleted successfully !";
        lblMessage.ForeColor = System.Drawing.Color.Red;
        this.PopulateData();

    }


    public void PopulateData()
    {
        DataTable table = new DataTable();
        x1.cnopen();
        {
            string sql = "Select * from tbl_comp";

            da = new SqlDataAdapter(sql, x1.cn);
            da.Fill(table);


        }
        GridView1.DataSource = table;
        GridView1.DataBind();
    }

    protected void EditRow(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        this.PopulateData();
    }


    protected void CancelEditRow(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        this.PopulateData();
    }


    protected void ChangePage(object sender, GridViewPageEventArgs e)
    {

        GridView1.PageIndex = e.NewPageIndex;
        this.PopulateData();
    }




    protected void UpdateRow(object sendedr, GridViewUpdateEventArgs e)
    {
        var compid = GridView1.DataKeys[e.RowIndex].Value;
        GridViewRow row = GridView1.Rows[e.RowIndex] as GridViewRow;

        TextBox tcompname = row.FindControl("txtcompname") as TextBox;
        FileUpload fu1 = row.FindControl("fu1") as FileUpload;
        DropDownList ddlstatus = row.FindControl("ddlstatus") as DropDownList;
        string str;
        Boolean msg = false;


        str = Server.MapPath("company_logo/");
        if (fu1.HasFile)
        {
            str = str + fu1.FileName;
            fu1.SaveAs(str);
            msg = true;

        }

        x1.cnopen();

        string sql = "Update tbl_comp set compname = @compname,complogo=@complogo,status= @status   where compid = @compid";
        cmd = new SqlCommand(sql, x1.cn);
        cmd.Parameters.AddWithValue(
        "@compname", tcompname.Text.Trim());

        cmd.Parameters.AddWithValue(
        "@complogo", fu1.FileName.Trim());
        cmd.Parameters.AddWithValue(
        "@status", ddlstatus.SelectedValue.Trim());

        cmd.Parameters.AddWithValue(
        "@compid", compid);

        cmd.ExecuteNonQuery();
        x1.cnclose();
        lblMessage.Text = "Record updated successfully !";
        GridView1.EditIndex = -1;
        this.PopulateData();
    }




    protected void Button1_Click(object sender, EventArgs e)
    {

        //Response.Clear();
        //Response.Buffer = true;
        //Response.ContentType = "application/ms-excel";
        //Response.AddHeader("content-disposition", "attachment; filename=UserInfo.xls");
        //Response.Charset = "";
        //StringWriter sw = new StringWriter();
        //HtmlTextWriter htw = new HtmlTextWriter(sw);
        //GridView1.RenderControl(htw);
        //Response.Output.Write(sw.ToString());
        //Response.End();
        



    }

        public override void VerifyRenderingInServerForm(Control control)
    {
        // Verifies that the control is rendered
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }


    //private Boolean Checkname()
    //{

    //    Boolean nameavailble = false;
    //    SqlConnection cn = new SqlConnection(@"Data Source=JAYRAMAPIR\SQLEXPRESS04;Initial Catalog=""E:\AUTO MOBILE\APP_DATA\DATABASE.MDF"";Integrated Security=True;Encrypt=False");
    //    string query = "select * from  tbl_comp where compname ='" + txtcname.Text + "'";
    //    SqlCommand cmd = new SqlCommand(query, cn);
    //    SqlDataAdapter da = new SqlDataAdapter();
    //    da.SelectCommand = cmd;
    //    DataSet ds = new DataSet();
    //    da.Fill(ds);
    //    if (ds.Tables[0].Rows.Count > 0)
    //    {
    //        nameavailble = true;
    //    }
    //    cn.Close();
    //    return nameavailble;
    //}




}

    





