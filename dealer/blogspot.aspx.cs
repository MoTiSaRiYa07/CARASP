using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class dealer_blogspot : System.Web.UI.Page
{
    myconn x = new myconn();
    SqlCommand cmd = new SqlCommand();
    string str,qry;
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds;
    int a;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["dname"] == null)
        {
            Response.Redirect("dealer_login1.aspx");
        }
        else
        {
           
            str = "select * from tbl_dealer where dealername='" + Session["dname"] + "'";
            da = new SqlDataAdapter(str, x.cn);
            ds = new DataSet();
            da.Fill(ds);
            a = int.Parse(ds.Tables[0].Rows[0]["dealerid"].ToString());
       }

        lbl.Text = Request.QueryString.Get("nid").ToString();
        str = "select * from tbl_news where nid=" + lbl.Text + "";
        da = new SqlDataAdapter(str, x.cn);
        ds = new DataSet();
        da.Fill(ds);
        DataList2.DataSource = ds;
        DataList2.DataBind();

    }
    protected void btnsubmit_Click1(object sender, EventArgs e)
    {
        x.cnopen();
        str = "insert into tbl_dealer_comment values(" + a + ",'" + txtcomment.Text + "','" + DateTime.Now + "')";
        cmd = new SqlCommand(str, x.cn);
        cmd.ExecuteNonQuery();
        x.cnclose();
        txtcomment.Text = "";

    }
  
}