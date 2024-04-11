using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class user_version : System.Web.UI.Page
{
    myconn x = new myconn();
    string str;
    SqlDataAdapter da,da1,da2 = new SqlDataAdapter();
    DataSet ds,ds1,ds2;

    protected void Page_Load(object sender, EventArgs e)
    {



        lbl.Text = Request.QueryString.Get("vid");
        lbl1.Text = Request.QueryString.Get("modelid");


       


        str="SELECT tbl_comp.compname, tbl_model.modelname, tbl_version.versionid, tbl_version.versionname  FROM  tbl_comp INNER JOIN tbl_model ON tbl_comp.compid = tbl_model.compid INNER JOIN tbl_version ON tbl_model.modelid = tbl_version.modelid where  tbl_version.versionid=" + lbl.Text + "";
        da = new SqlDataAdapter(str, x.cn);
        ds = new DataSet();
        da.Fill(ds);
        lblcomp.Text = ds.Tables[0].Rows[0]["compname"].ToString();
        lblmodel.Text = ds.Tables[0].Rows[0]["modelname"].ToString();
        lblversoin.Text = ds.Tables[0].Rows[0]["versionname"].ToString();

     
        str = "  SELECT distinct tbl_version.versionid, tbl_car_factors.price, tbl_car_factors.body_type, tbl_car_factors.year, tbl_car_factors.fuel, tbl_car_factors.transmission,  tbl_car_factors.no_of_gears FROM tbl_version INNER JOIN tbl_car_factors ON tbl_version.versionid = tbl_car_factors.versionid where tbl_version.versionid=" + lbl.Text + "";
        da = new SqlDataAdapter(str, x.cn);
        ds = new DataSet();
        da.Fill(ds);
        lvfactors.DataSource = ds;
        lvfactors.DataBind();
       
      

      
      
        str = "SELECT distinct tbl_version.versionid, tbl_car_specification.height, tbl_car_specification.length, tbl_car_specification.width, tbl_car_specification.wheelbase,  tbl_car_specification.door, tbl_car_specification.seating_capacity, tbl_car_specification.fuel_capacity  FROM tbl_version  INNER JOIN  tbl_car_specification ON tbl_version.versionid = tbl_car_specification.versionid  where tbl_version.versionid=" + lbl.Text + "";
        da1 = new SqlDataAdapter(str, x.cn);
        ds1 = new DataSet();
        da1.Fill(ds1);

        lv_specification.DataSource = ds1;
        lv_specification.DataBind();

        



        str = "SELECT distinct  tbl_version.versionid, tbl_feature.ac, tbl_feature.cd_player,  tbl_feature.climate_control, tbl_feature.power_steering, tbl_feature.power_window, tbl_feature.central_locking, tbl_feature.steering_adjustment,  tbl_feature.electrically_adjustable_driver_seat, tbl_feature.steering_mounted_controls, tbl_feature.rear_ac_vent, tbl_feature.remote_controlled_boot, tbl_feature.rear_wiper, tbl_feature.leather_seats, tbl_feature.electrically_adjustable_mirrors, tbl_feature.anti_lock_braking_system, tbl_feature.airbag,  tbl_feature.parking_sensors, tbl_feature.traction_control FROM tbl_version  INNER JOIN  tbl_feature ON tbl_version.versionid = tbl_feature.versionid where tbl_version.versionid=" + lbl.Text + "";
        da2 = new SqlDataAdapter(str, x.cn);
        ds2 = new DataSet();
        da2.Fill(ds2);

        lv_feature.DataSource = ds2;
        lv_feature.DataBind();


        str = "SELECT tbl_gallery.image, tbl_model.modelid, tbl_model.modelname FROM     tbl_gallery INNER JOIN tbl_model ON tbl_gallery.modelid = tbl_model.modelid where tbl_model.modelid=" + lbl1.Text + "";
        da = new SqlDataAdapter(str, x.cn);
        ds = new DataSet();
        da.Fill(ds);

        ListView1.DataSource = ds;
        ListView1.DataBind();


       
    }
}