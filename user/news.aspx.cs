using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class user_news : System.Web.UI.Page
{
    myconn x = new myconn();
    string str;
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds;                          
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] == null)
        {
            Response.Redirect("~/user/login/login_signup.aspx");
        }
        
        str = "SELECT nid, news, detail, date, photo FROM tbl_news";
        da = new SqlDataAdapter(str,x.cn);
        ds = new DataSet();
        da.Fill(ds);
        DataList1.DataSource = ds;
        DataList1.DataBind();

        str = "SELECT nid, news, detail, date, photo FROM tbl_news";
        da = new SqlDataAdapter(str, x.cn);
        ds = new DataSet();
        da.Fill(ds);
        dlnews.DataSource = ds;
        dlnews.DataBind();


        str = "select * from tbl_video ";
       da= new SqlDataAdapter(str, x.cn);
       ds = new DataSet();
       da.Fill(ds);
       DataList2.DataSource = ds;
       DataList2.DataBind();
    }

    protected void btn_read_more_Click(object sender, EventArgs e)
    {
        Response.Redirect("news_single.aspx");
    }
}