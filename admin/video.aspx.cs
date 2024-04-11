using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
public partial class admin_video : System.Web.UI.Page
{
    myconn x = new myconn();
    SqlCommand cmd = new SqlCommand();
    string str1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["aname"] == null)
        {
            Response.Redirect("login.aspx");
        }
    }


    protected void btnsubmit_Click(object sender, EventArgs e)
    {

        fu1.SaveAs(Server.MapPath("~/admin/video/") + Path.GetFileName(fu1.FileName));
        string link = Path.GetFileName(fu1.FileName);
        // link = "<video width=400 controls>,source src=" + link + " type=G:/mp4></video>";
        x.cnopen();
       str1 = "insert into tbl_video values('" + txtnews.Text + "','" + link + "'," + ddlstatus.SelectedValue + ")";
       cmd = new SqlCommand(str1, x.cn);
       cmd.ExecuteNonQuery();
       x.cnclose();
        Label1.Text = "video data has been uploaded and saved successfully!";
    }
}