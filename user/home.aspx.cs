using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class user_Default : System.Web.UI.Page
{
    myconn x = new myconn();
    string str;
    SqlDataAdapter da,da1,da2,da3,da4,da5 = new SqlDataAdapter();
    DataSet ds,ds1,ds2,ds3,ds4,ds5;

    protected void Page_Load(object sender, EventArgs e)
    {

        str = "select * from tbl_just_launched";
        da2 = new SqlDataAdapter(str, x.cn);
        ds2 = new DataSet();
        da2.Fill(ds2);
        lvjust_launched.DataSource = ds2;
        lvjust_launched.DataBind();

        str = "select * from tbl_popular";
        da3 = new SqlDataAdapter(str, x.cn);
        ds3 = new DataSet();
        da3.Fill(ds3);
        lv_popular.DataSource = ds3;
        lv_popular.DataBind();

        str = "select * from tbl_upcoming";
        da1 = new SqlDataAdapter(str, x.cn);
        ds1 = new DataSet();
        da1.Fill(ds1);
        lvupcoming.DataSource = ds1;
        lvupcoming.DataBind(); 
        
        str = "SELECT DISTINCT top (10) tbl_comp.compname,tbl_comp.compid , tbl_model.modelname,tbl_model.modelid, tbl_model.image FROM tbl_comp INNER JOIN  tbl_model ON tbl_comp.compid = tbl_model.compid";
        da = new SqlDataAdapter(str, x.cn);
        ds = new DataSet();
        da.Fill(ds);
        ListView1.DataSource = ds;
        ListView1.DataBind();


        str = "select top (2) * from tbl_news";
        da4 = new SqlDataAdapter(str, x.cn);
        ds4 = new DataSet();
        da4.Fill(ds4);
        lv_news.DataSource = ds4;
        lv_news.DataBind();

        str = "select top (2) * from tbl_video";
        da5 = new SqlDataAdapter(str, x.cn);
        ds5 = new DataSet();
        da5.Fill(ds5);
        dlvideo.DataSource = ds5;
        dlvideo.DataBind();

    }


}