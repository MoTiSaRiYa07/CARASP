using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class admin_Default2 : System.Web.UI.Page
{
    myconn x = new myconn();
    string qry;
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr; 
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        x.cnopen();
        qry = "select * from tbl_admin where aname='" + txtaname.Text + "' and pass='" + txtpass.Text + "' ";
        cmd = new SqlCommand(qry, x.cn);
        dr = cmd.ExecuteReader();



        if (dr.HasRows)
        {
            Session["aname"] = txtaname.Text;
            //Response.Redirect("home.aspx");
            Response.Write("<script>alert('LOGIN SUCCESSFUL');window.location.href = 'home.aspx';</script>");            //Response.Redirect("~/user/home.aspx");


        }
        else
        {

        }
        x.cnclose();
    }
}