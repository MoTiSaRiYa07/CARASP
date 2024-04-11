using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class admin_just_launched : System.Web.UI.Page
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


        str = Server.MapPath("just_launched/");
        if (fu1.HasFile)
        {
            str = str + fu1.FileName;
            fu1.SaveAs(str);
            msg = true;

        }
        x.cnopen();
        str1 = "insert into tbl_just_launched values('" + txtcar.Text + "','" + txtmodel.Text + "'," + txtprice.Text + ",'" + txtdate.Text + "','" + fu1.FileName + "'," + ddlstatus.SelectedValue + ")";
        cmd = new SqlCommand(str1, x.cn);
        cmd.ExecuteNonQuery();
        clear();
        x.cnclose();


    }
    public void clear()
    {
        txtcar.Text = "";
        txtmodel.Text = "";
        txtprice.Text = "";
        txtdate.Text = "";

    }
}