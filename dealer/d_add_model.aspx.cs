using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class dealer_d_add_model : System.Web.UI.Page
{
    myconn x = new myconn();
    SqlCommand cmd = new SqlCommand();
    string str;
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
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {

        x.cnopen();

        foreach (ListItem item in cklmodel.Items)
        {
            if (item.Selected)
            {

                str = "insert into tbl_dealer_model values(" + a + "," + ddlcomp.SelectedValue + "," + item.Value + ")";
                cmd = new SqlCommand(str, x.cn);
                cmd.ExecuteNonQuery();
            }
        }
        x.cnclose();

    }
}
 