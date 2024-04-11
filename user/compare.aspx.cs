using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class user_compare : System.Web.UI.Page
{
    myconn x = new myconn();
    SqlCommand cmd = new SqlCommand();
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btncompare_Click1(object sender, EventArgs e)
    {
        string comp1 = ddlcompname.SelectedValue;
        string model1 = ddlmodel.SelectedValue;
        string version1 = ddlversion.SelectedValue;


        string comp2 = ddlcomp.SelectedValue;
        string model2 = ddlmodel1.SelectedValue;
        string version2 = ddlversion1.SelectedValue;

        Response.Redirect("compare_list.aspx?c1=" + comp1 + "&m1=" + model1 + "&v1=" + version1 + "&c2=" + comp2 + "&m2=" + model2 + "&v2=" + version2 + "");
    }
}