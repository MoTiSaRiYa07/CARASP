using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class admin_car_detail : System.Web.UI.Page
{
    myconn x = new myconn();
    SqlCommand cmd = new SqlCommand();
    string str;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["aname"] == null)
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            MultiView1.ActiveViewIndex = 0;
        }
        //if (!IsPostBack)
        //{
        //    ViewState["comp"] = ddlcompname.SelectedIndex;
        //    ViewState["model"] = ddlmodel.SelectedIndex;
        //    ViewState["version"] = ddlversion.SelectedIndex;
       
        //}
     }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        
        x.cnopen();
        str = "insert into tbl_car_factors values(" + ViewState["model"].ToString() + "," + ViewState["version"].ToString() + "," + txtprice.Text + ",'" + ddlbodytype.SelectedItem + "','" + txtyear.Text + "','" + rbfuel.SelectedItem + "','" + txttransmissio.Text + "'," + txtgear.Text + ")";
        cmd = new SqlCommand(str, x.cn);
        cmd.ExecuteNonQuery();
        x.cnclose();



        x.cnopen();
        str = "insert into tbl_car_specification values(" + ViewState["model"].ToString() + "," + ViewState["version"].ToString() +  "," + txtheight.Text + "," + txtlength.Text + "," + txtwidth.Text + "," + txtwheelbase.Text + "," + txtdoor.Text + "," + txtseatingcapacity.Text + "," + txtfuelcapacity.Text + ")";
        cmd = new SqlCommand(str, x.cn);
        cmd.ExecuteNonQuery();
        x.cnclose();



        x.cnopen();
        str = "insert into tbl_feature values(" + ViewState["model"].ToString() + "," + ViewState["version"].ToString() + ",'" + ddlac.SelectedItem + "','" + ddlclimate_control.SelectedItem + "','" + ddlcd_player.SelectedItem + "','" + ddlpower_steering.SelectedItem + "','" + ddlpower_windows.SelectedItem + "','" + ddlcentral_locking.SelectedItem + "','" + ddlsteering_adjustment.SelectedItem + "','" + ddldriver_seat.SelectedItem + "','" + ddlsteering_mounted.SelectedItem + "','" +  ddlrear_ac_vent.SelectedItem + "','" + ddlremote_control_boot.SelectedItem + "','" + ddlrear_wiper.SelectedItem+ "','" + ddllether_seat.SelectedItem + "','" + ddlmirror.SelectedItem + "','"+ ddlanti_lock.SelectedItem +"','" + ddlairbag.SelectedItem + "','" + ddlparking_sensor.SelectedItem + "','" + ddltracing_control.SelectedItem + "')";
        cmd = new SqlCommand(str, x.cn);
        cmd.ExecuteNonQuery();
        x.cnclose();
        clear();
       
        lbl1.Text = "Inserted";
        
    }
    protected void btnnext_Click(object sender, EventArgs e)
    {
        ViewState["comp"] = ddlcompname.SelectedValue;
        ViewState["model"] = ddlmodel.SelectedValue;
        ViewState["version"] = ddlversion.SelectedValue;
        MultiView1.ActiveViewIndex = 1;

    }
    protected void btnprev_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void btnnext1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;

    }
    protected void btnprev1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;

    }
    public void clear()
    {
        txtprice.Text="";
        txtyear.Text="";
        txttransmissio.Text="";
        txtgear.Text="";
        txtheight.Text = "";
        txtlength.Text = "";
        txtwidth.Text = "";
        txtwheelbase.Text = "";
        txtdoor.Text = "";
        txtseatingcapacity.Text = "";
        txtfuelcapacity.Text = "";



    }
}