using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class user_find_car : System.Web.UI.Page
{
    myconn x = new myconn();
    string qry;
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {

        qry = "select *  from tbl_comp where status = 0";
        da = new SqlDataAdapter(qry, x.cn);
        ds = new DataSet();
        da.Fill(ds);
        dl1.DataSource = ds;
        dl1.DataBind();


    }
}