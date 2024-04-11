using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class dealer_dealer_login1 : System.Web.UI.Page
{
    myconn x = new myconn();
    string qry;
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr; 
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        x.cnclose();
        x.cnopen();

        qry = "select * from tbl_dealer where dealername='" +txtdname.Text + "' and password='" + txtpass.Text + "'" ;
        cmd = new SqlCommand(qry, x.cn);
        dr = cmd.ExecuteReader();
        //Response.Write("<script>alert('LOGIN SUCCESSFUL');window.location.href = 'dealer_home.aspx';</script>");            //Response.Redirect("~/user/home.aspx");



        if (dr.HasRows)
        {
            //Session["dname"] = txtdname.Text;
            //Response.Redirect("dealer_home.aspx");
            //Response.Write("<script>alert('LOGIN SUCCESSFUL');window.location.href = 'dealer_home.aspx';</script>");            //Response.Redirect("~/user/home.aspx");
            x.cnclose();
            x.cnopen();

            qry = "select * from tbl_dealer where dealername='" + txtdname.Text + "' and password='" + txtpass.Text + "' and status = 1";
            cmd = new SqlCommand(qry, x.cn);
            dr = cmd.ExecuteReader();
            //Response.Write("<script>alert('LOGIN SUCCESSFUL');window.location.href = 'dealer_home.aspx';</script>");            //Response.Redirect("~/user/home.aspx");



            if (dr.HasRows)
            {
                Session["dname"] = txtdname.Text;
                //Response.Redirect("dealer_home.aspx");
                Response.Write("<script>alert('LOGIN SUCCESSFUL');window.location.href = 'dealer_home.aspx';</script>");            //Response.Redirect("~/user/home.aspx");

            }
            else
            {
                // redirect to eaiting pagge

                Response.Write("<script>alert('LOGIN wait')</script>");            //Response.Redirect("~/user/home.aspx");


            }
            x.cnclose();
        }
        else
        {

        }
        x.cnclose();
    }
}