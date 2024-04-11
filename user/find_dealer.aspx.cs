using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class user_find_dealer : System.Web.UI.Page
{
    myconn x = new myconn();
    SqlDataAdapter da = new SqlDataAdapter();
    
    DataSet ds;
    string str;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ddlcomp_SelectedIndexChanged(object sender, EventArgs e)
    {
        x.cnopen();
        str = "SELECT DISTINCT tbl_dealer.address, tbl_dealer_model.compid FROM tbl_dealer_model INNER JOIN tbl_dealer ON tbl_dealer_model.dealerid = tbl_dealer.dealerid WHERE tbl_dealer_model.compid = " + ddlcomp.SelectedValue;
    
        da = new  SqlDataAdapter(str,x.cn);
        ds = new DataSet();
        da.Fill(ds);
        ddlcity.DataSource = ds.Tables[0];
       ddlcity.DataBind();
       ddlcity.DataValueField = "address";
        ddlcity.DataTextField ="address";
        
        ddlcity.DataBind();
        x.cnclose();
    }
  
    protected void btndealer_Click(object sender, EventArgs e)
    {
        x.cnopen();
        str="SELECT * FROM tbl_dealer where address='" + ddlcity.SelectedItem + "'";
        da = new SqlDataAdapter(str, x.cn);
        ds = new DataSet();
        da.Fill(ds);
        ListView2.DataSource = ds.Tables[0];
        ListView2.DataBind();

        x.cnclose();
    }
}