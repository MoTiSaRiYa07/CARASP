using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using AjaxControlToolkit.HTMLEditor.ToolbarButton;
public partial class user_cars : System.Web.UI.Page
{
    myconn x = new myconn();
    string str;
    SqlDataAdapter da,da1 = new SqlDataAdapter();
    DataSet ds,ds1;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["btype"] != null)
        {
            lbl1.Text = Request.QueryString.Get("btype").ToString();
            x.cnopen();
            str = "SELECT DISTINCT tbl_car_factors.body_type,tbl_car_factors.price as Expr1,tbl_model.modelid,tbl_model.image,tbl_comp.compid, tbl_model.modelname, tbl_comp.compname FROM tbl_car_factors INNER JOIN  tbl_model ON tbl_car_factors.modelid = tbl_model.modelid INNER JOIN tbl_comp ON tbl_model.compid = tbl_comp.compid WHERE (tbl_car_factors.body_type = '" + lbl1.Text + "')";
            da = new SqlDataAdapter(str, x.cn);
            ds = new DataSet();
            da.Fill(ds);
            ListView1.DataSource = ds;
            ListView1.DataBind();
            x.cnclose();
        }
    
       else if (Request.QueryString["compid"] != null)
        {
            lbl.Text = Request.QueryString.Get("compid").ToString();
    x.cnopen();
            str = "SELECT DISTINCT MAX(tbl_car_factors.price) AS Expr1, tbl_car_factors.body_type,tbl_model.modelid,tbl_comp.compid, tbl_model.modelname, tbl_model.image, tbl_comp.compname FROM  tbl_car_factors INNER JOIN    tbl_model ON tbl_car_factors.modelid = tbl_model.modelid INNER JOIN tbl_comp ON tbl_model.compid = tbl_comp.compid WHERE        (tbl_model.compid = " + lbl.Text + ") GROUP BY tbl_car_factors.body_type, tbl_model.modelname, tbl_model.image, tbl_comp.compname,tbl_model.modelid,tbl_comp.compid";
            da = new SqlDataAdapter(str, x.cn);
    ds = new DataSet();
    da.Fill(ds);
            ListView1.DataSource = ds.Tables[0];
            ListView1.DataBind();
            x.cnclose();



           
        }

    }

           
        

    

    protected void chkcardetail_SelectedIndexChanged(object sender, EventArgs e)
    {
        x.cnopen();
        foreach (ListItem item in chkcardetail.Items)
        {
            if (item.Selected)
            {
                str = "SELECT DISTINCT MAX(tbl_car_factors.price) AS Expr1, tbl_car_factors.body_type,tbl_model.modelid,tbl_comp.compid, tbl_model.modelname, tbl_model.image, tbl_comp.compname FROM  tbl_car_factors INNER JOIN    tbl_model ON tbl_car_factors.modelid = tbl_model.modelid INNER JOIN tbl_comp ON tbl_model.compid = tbl_comp.compid WHERE        (tbl_model.compid = " + item.Value + ") GROUP BY tbl_car_factors.body_type, tbl_model.modelname, tbl_model.image, tbl_comp.compname,tbl_model.modelid,tbl_comp.compid";
                da = new SqlDataAdapter(str, x.cn);
                ds = new DataSet();
                da.Fill(ds);    
                ListView1.DataSource = ds;
                ListView1.DataBind();
            }
        }
        x.cnclose();
    }
    //protected void chktransmission_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    x.cnopen();
    //    str = "SELECT DISTINCT tbl_car_factors.transmission, tbl_car_factors.modelid, tbl_car_factors.price, tbl_car_factors.body_type, tbl_model.modelname, tbl_model.image, tbl_comp.compname, tbl_comp.compid FROM tbl_car_factors INNER JOIN  tbl_model ON tbl_car_factors.modelid = tbl_model.modelid INNER JOIN tbl_comp ON tbl_model.compid = tbl_comp.compid WHERE (tbl_car_factors.transmission = '" + chktransmission.SelectedItem + "')";
    //    da = new SqlDataAdapter(str, x.cn);
    //    ds = new DataSet();
    //    da.Fill(ds);
    //    ListView1.DataSource = ds;
    //    ListView1.DataBind();
    //    x.cnclose();

    //}


    protected void ddlbudget_SelectedIndexChanged(object sender, EventArgs e)
    {
        str = "SELECT        MAX(tbl_car_factors.price) AS Expr1, tbl_car_factors.modelid,tbl_car_factors.body_type, tbl_model.modelname, tbl_model.image, tbl_comp.compid, tbl_comp.compname FROM tbl_car_factors INNER JOIN tbl_model ON tbl_car_factors.modelid = tbl_model.modelid INNER JOIN         tbl_comp ON tbl_model.compid = tbl_comp.compid WHERE        (tbl_car_factors.price <= " + ddlbudget.SelectedItem + ") GROUP BY tbl_car_factors.modelid, tbl_model.modelname, tbl_model.image, tbl_comp.compid, tbl_comp.compname,tbl_car_factors.body_type ";
        da = new SqlDataAdapter(str, x.cn);
        ds = new DataSet();
        da.Fill(ds);
        ListView1.DataSource = ds;
        ListView1.DataBind();
        
    }
}