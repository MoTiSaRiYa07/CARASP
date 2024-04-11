using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class admin_create_event : System.Web.UI.Page
{
    myconn x = new myconn();
    SqlCommand cmd = new SqlCommand();
    string str;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["aname"] == null)
        {
            Response.Redirect("login.aspx");
        }   
    }
    
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        x.cnopen();
        str = "insert into tbl_event values('" + txtedate.Text + "','" + txtename.Text + "','" + txteadd.Text + "','" + txtewebsite.Text + "')";
        cmd = new SqlCommand(str, x.cn);
        cmd.ExecuteNonQuery();
        x.cnclose();
        clear();

    }
    public void clear()
    {
        txtedate.Text = "";
        txtename.Text = "";
        txteadd.Text = "";
        txtewebsite.Text = "";
    }
}