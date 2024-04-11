using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class dealer_dealer_news : System.Web.UI.Page
{
    string news,str;
    myconn x = new myconn();
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["dname"] == null)
        {
            Response.Redirect("dealer_login1.aspx");
        }
        else
        {
           
        }
    }






   
}