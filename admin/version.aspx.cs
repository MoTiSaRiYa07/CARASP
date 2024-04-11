using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_version : System.Web.UI.Page
{
    version x = new version();
    string qry;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["aname"] == null)
        {
            Response.Redirect("login.aspx");
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        qry = "insert into tbl_version values(" + ddlmodel.SelectedValue + ",'" + txtvname.Text + "'," + ddlstatus.SelectedValue + ")";
        x.versionins(qry);
    }
}