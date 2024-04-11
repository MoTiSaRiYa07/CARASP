using AjaxControlToolkit.HTMLEditor.ToolbarButton;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_login_Default : System.Web.UI.Page
{
    myconn x = new myconn();
    SqlCommand cmd = new SqlCommand();
    string str;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void btn_login_Click(object sender, EventArgs e)
    {
        x.cnopen();
        str = "select * from tbl_user where email='" + txt_email.Text + "' and password='" + txt_pass.Text + "'";
        cmd = new SqlCommand(str, x.cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            Session["email"] = txt_email.Text;
            Response.Redirect("~/user/home.aspx");

        }
        else
        {

        }
        x.cnclose();

    }
}