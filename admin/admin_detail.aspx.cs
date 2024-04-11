using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class admin_admin_detail : System.Web.UI.Page
{
    myconn x = new myconn();
    string str,qry;
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds;
    int a;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["aname"] == null)
            {
                Response.Redirect("login.aspx");
            }
            x.cnopen();
            str = "select * from tbl_admin where aname='" + Session["aname"] + "' ";
            da = new SqlDataAdapter(str, x.cn);
            ds = new DataSet();
            da.Fill(ds);

            a = int.Parse(ds.Tables[0].Rows[0]["aid"].ToString());
            img.ImageUrl = "profile_pic/" + ds.Tables[0].Rows[0]["profile_pic"].ToString();
            //img.ImageUrl = ds.Tables[0].Rows[0]["profile_pic"].ToString();
            txtaname.Text = ds.Tables[0].Rows[0]["aname"].ToString();
            txtlname.Text = ds.Tables[0].Rows[0]["lname"].ToString();
            txtemail.Text = ds.Tables[0].Rows[0]["email"].ToString();
            txtadd.Text = ds.Tables[0].Rows[0]["address"].ToString();

            txtcno.Text = ds.Tables[0].Rows[0]["contactno"].ToString();

            x.cnclose();
        }
    }
    protected void btedit_Click(object sender, EventArgs e)
    {
        btnupdate.Visible = true;
        txtaname.ReadOnly = false;
        txtlname.ReadOnly = false;
        txtemail.ReadOnly = false;
        txtadd.ReadOnly = false;
        txtcno.ReadOnly = false;
        btedit.Visible = false;


    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        x.cnopen();
        qry = "update tbl_admin set aname='" + txtaname.Text + "',lname='" + txtlname.Text + "',email='" + txtemail.Text + "',address='" + txtadd.Text + "',contactno='" + txtcno.Text + "' where aname='" + txtaname.Text + "' ";
        cmd = new SqlCommand(qry, x.cn);
        cmd.ExecuteNonQuery();
        x.cnclose();
        btedit.Visible = true;
        

    }
}