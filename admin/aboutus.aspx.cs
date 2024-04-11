using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
public partial class admin_aboutus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            StreamReader sr = new StreamReader(Server.MapPath("~/html/ab.html"));
            ckeditior.Text = sr.ReadToEnd();
            sr.Close();
            sr.Dispose();

        }
    }
    
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        StreamWriter sw = new StreamWriter(Server.MapPath("~/html/ab.html"));
        sw.Write(ckeditior.Text);
        sw.Close();
        sw.Dispose();
    }
}