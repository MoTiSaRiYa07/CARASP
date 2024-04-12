using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class admin_popular : System.Web.UI.Page
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


        str = Server.MapPath("popular/");
        if (fu1.HasFile)
        {
            str = str + fu1.FileName;
            fu1.SaveAs(str);
            msg = true;

        }
        x.cnopen();
        str1 = "INSERT INTO tbl_popular VALUES (@CompName, @Model, @Price, @fuel, @FileName, @Status)";
        cmd = new SqlCommand(str1, x.cn);
        cmd.Parameters.AddWithValue("@CompName", ddlcompname.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@Model", ddlmodel.SelectedItem.ToString());
        cmd.Parameters.AddWithValue("@Price", Convert.ToDecimal(txtprice.Text));
        cmd.Parameters.AddWithValue("@fuel", ddlFuel.SelectedValue);
        cmd.Parameters.AddWithValue("@FileName", fu1.FileName);
        cmd.Parameters.AddWithValue("@Status", ddlstatus.SelectedValue);
        cmd.ExecuteNonQuery();
        x.cnclose();
        ddlFuel.Items.Clear();
        txtprice.Text = "";

    }
}