using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class dealer_testdrive_bookings : System.Web.UI.Page
{
    myconn x = new myconn();
    SqlDataAdapter da,da1 = new SqlDataAdapter();
    DataSet ds,ds1;
    string str,str1,pno;
    private string email;
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


            str1 = "SELECT distinct tbl_comp.compname, tbl_model.modelname, tbl_testdrive3.dealerid,tbl_testdrive3.email, tbl_testdrive3.date, tbl_testdrive3.city, tbl_testdrive3.phoneno,tbl_testdrive3.email,tbl_testdrive3.payment_id, tbl_testdrive3.last_name, tbl_testdrive3.user_name FROM  tbl_comp INNER JOIN  tbl_model ON tbl_comp.compid = tbl_model.compid INNER JOIN tbl_testdrive3 ON tbl_comp.compid = tbl_testdrive3.compid AND tbl_model.modelid = tbl_testdrive3.modelid where tbl_testdrive3.dealerid=" + a + " and tbl_testdrive3.status = 0";
            da1 = new SqlDataAdapter(str1, x.cn);
            ds1 = new DataSet();
            da1.Fill(ds1);
            //pno = ds1.Tables[0].Rows[0]["phoneno"].ToString();
            email = ds1.Tables[0].Rows[0]["email"].ToString();



            if (ds1.Tables[0].Rows[0]["date"].ToString() == DateTime.Now.ToString("DD-MM-yy"))
            {
                datalist1.EditItemIndex = -1;

            }
            datalist1.DataSource = ds1;
            datalist1.DataBind();
            
        }
    }





    protected void datalist1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}