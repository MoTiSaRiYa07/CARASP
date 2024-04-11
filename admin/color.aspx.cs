using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_color : System.Web.UI.Page
{
    color x = new color();
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
        string str;
        Boolean msg = false;


        str = Server.MapPath("color/");
        if (fu1.HasFile)
        {
            str = str + fu1.FileName;
            fu1.SaveAs(str);
            msg = true;

        }


        qry = "insert into tbl_color values(" + ddlmodel.SelectedValue + ",'" + txtcolorname.Text + "','" + fu1.FileName + "'," + ddlstatus.SelectedValue + ")";
        x.colorins(qry);
        txtcolorname.Text = "";

    }
}