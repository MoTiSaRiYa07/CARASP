using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class admin_car_image : System.Web.UI.Page
{
    myconn x = new myconn();
    string str,img;
    SqlCommand cmd=new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds;
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


        str = Server.MapPath("gallery/");
        if (fu1.HasFile)
        {
            str = str + fu1.FileName;
            fu1.SaveAs(str);
            msg = true;

        }
        
        x.cnopen();


        str = "insert into tbl_gallery values(" + ddlmodel.SelectedValue + ",'" + fu1.FileName + "'," +  ddlstatus.SelectedValue + ")";
        cmd = new SqlCommand(str, x.cn);
        cmd.ExecuteNonQuery();
        imgPhoto.ImageUrl="gallery/" + fu1.FileName;
        x.cnclose();
    }
    protected void ddlmodel_SelectedIndexChanged(object sender, EventArgs e)
    {
       
        str = "select * from tbl_gallery where  modelid = " + ddlmodel.SelectedValue + " ";
        da = new SqlDataAdapter(str, x.cn);
        ds = new DataSet();
        da.Fill(ds);
        DataList1.DataSource = ds;
        DataList1.DataBind();
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }

   
}
