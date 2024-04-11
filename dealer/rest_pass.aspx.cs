using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class dealer_rest_pass : System.Web.UI.Page
{
    myconn x = new myconn();
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds;
    string str;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        lbl.Text = Request.QueryString["uid"].ToString();

        str = "SELECT tbl_codedel.userid, tbl_codedel.code FROM tbl_codedel INNER JOIN   tbl_dealer ON tbl_codedel.userid = tbl_dealer.dealerid WHERE (tbl_codedel.userid = " + lbl.Text + ")";
        da = new SqlDataAdapter(str, x.cn);
        ds = new DataSet();
        da.Fill(ds);
        x.cnopen();
        str = "update tbl_dealer set password= '" + txtpass.Text + "' where dealerid=" + lbl.Text + " ";
        cmd = new SqlCommand(str, x.cn);
        cmd.ExecuteNonQuery();
        Response.Redirect("dealer_login1.aspx");
        x.cnclose();
    }
}