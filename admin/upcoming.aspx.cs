using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class admin_upcoming : System.Web.UI.Page
{
    myconn x = new myconn();
    SqlCommand cmd = new SqlCommand();
    string str1;

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


        str = Server.MapPath("upcoming_car/");
        if (fu1.HasFile)
        {
            str = str + fu1.FileName;
            fu1.SaveAs(str);
            msg = true;

        }
        if (IsCompanyNameExists(txtcomp.Text))
        {
            lblStatus.Text = "Company name already exists. Please choose a different one.";
            return;
        }

        x.cnopen();
        str1 = "insert into tbl_upcoming values('" + txtcomp.Text + "','" + txtmodel.Text + "'," + txtprice.Text + ",'" + txtdate.Text + "','" + fu1.FileName + "'," + ddlstatus.SelectedValue + ")";
        cmd = new SqlCommand(str1,x.cn);
        cmd.ExecuteNonQuery();
        clear();
        x.cnclose();
    }

    private bool IsCompanyNameExists(string companyName)
    {
        bool exists = false;
        using (SqlConnection connection = new SqlConnection("Data Source=JAYRAMAPIR\\SQLEXPRESS04;Initial Catalog=\"E:\\AUTO MOBILE\\APP_DATA\\DATABASE.MDF\";Integrated Security=True;Encrypt=False"))
        {
            string query = "SELECT COUNT(*) FROM tbl_upcoming WHERE comp = @CompanyName";
            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@CompanyName", companyName );

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


    public void clear()
    {
        //ddlcompname.SelectedValue = "";
        txtprice.Text = "";
        txtdate.Text = "";
        txtcomp.Text = "";
        txtmodel.Text = "";

    }
}