using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class admin_home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        myconn x = new myconn();
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds;
        if (Session["aname"] == null)
        {
            Response.Redirect("login.aspx");
           
          
        }
        
        string c = "select count(compid) from tbl_comp";
        da = new SqlDataAdapter(c, x.cn);
        ds = new DataSet();
        da.Fill(ds);
        lblcomp.Text = ds.Tables[0].Rows[0][0].ToString();


        string m = "select count(modelid) from tbl_model";
        da = new SqlDataAdapter(m, x.cn);
        ds = new DataSet();
        da.Fill(ds);
        lblmodel.Text = ds.Tables[0].Rows[0][0].ToString();


        string d = "select count(dealerid) from tbl_dealer";
        da = new SqlDataAdapter(d, x.cn);
        ds = new DataSet();
        da.Fill(ds);
        lbldealer.Text = ds.Tables[0].Rows[0][0].ToString();


        string u = "select count(userid) from tbl_user";
        da = new SqlDataAdapter(u, x.cn);
        ds = new DataSet();
        da.Fill(ds);
        lbluser.Text = ds.Tables[0].Rows[0][0].ToString();


        string uu = "select count(id) from tbl_just_launched";
        da = new SqlDataAdapter(uu, x.cn);
        ds = new DataSet();
        da.Fill(ds);
       lbljust.Text = ds.Tables[0].Rows[0][0].ToString();

        string uuu = "select count(id) from tbl_upcoming";
        da = new SqlDataAdapter(uuu, x.cn);
        ds = new DataSet();
        da.Fill(ds);
        lblupc.Text = ds.Tables[0].Rows[0][0].ToString();



        //string uuuu = "select count(id) from tbl_popular";
        //da = new SqlDataAdapter(uuuu, x.cn);
        //ds = new DataSet();
        //da.Fill(ds);
        //lblpur.Text = ds.Tables[0].Rows[0][0].ToString();


        string uuuuu = "select count(testdrive_id) from tbl_testdrive3";
        da = new SqlDataAdapter(uuuuu, x.cn);
        ds = new DataSet();
        da.Fill(ds);
        lbltestdrive.Text = ds.Tables[0].Rows[0][0].ToString();

        ////string str = "SELECT DISTINCT COUNT(dealerid) AS Expr1,address FROM  tbl_dealer GROUP BY address";
        //string str = "SELECT DISTINCT COUNT(userid) AS Expr1,name FROM  tbl_user GROUP BY name";
        //string str1 = "SELECT DISTINCT COUNT(userid) AS Expr1,email FROM  tbl_user GROUP BY email";

        //da = new SqlDataAdapter(str, x.cn);
        //ds = new DataSet();
        //da.Fill(ds);
        //dluser.DataSource = ds;
        //dluser.DataBind();

        //string str1 = "SELECT DISTINCT COUNT(dealerid) AS Expr2,fname FROM  tbl_dealer GROUP BY fname";

        ////da = new SqlDataAdapter(str1, x.cn);
        ////ds = new DataSet();
        ////da.Fill(ds);
        ////dldel.DataSource = ds;
        ////dldel.DataBind();

        //string str2 = "SELECT DISTINCT COUNT(userid) AS Expr2,name FROM  tbl_user GROUP BY name";

        //da = new SqlDataAdapter(str2, x.cn);
        //ds = new DataSet();
        //da.Fill(ds);
        //dluser1.DataSource = ds;
        //dluser1.DataBind();


        //string str3 = "SELECT DISTINCT COUNT(userid) AS Expr2,name FROM  tbl_user GROUP BY name";

        //da = new SqlDataAdapter(str3, x.cn);
        //ds = new DataSet();
        //da.Fill(ds);
        //dluser2.DataSource = ds;
        //dluser2.DataBind();



    }
}