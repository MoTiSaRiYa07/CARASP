using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class user_news_single : System.Web.UI.Page
{
    myconn x = new myconn();
    string str;
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {

        lbl.Text = Request.QueryString.Get("nid");
        str = "select * from tbl_news where nid=" + lbl.Text + "";
        da = new SqlDataAdapter(str, x.cn);
        ds = new DataSet();
        da.Fill(ds);
        img.ImageUrl = "~/admin/news/" + ds.Tables[0].Rows[0]["photo"].ToString();
        lblname.Text = ds.Tables[0].Rows[0]["news"].ToString();
        lbldescription.Text = ds.Tables[0].Rows[0]["detail"].ToString();
    }
}