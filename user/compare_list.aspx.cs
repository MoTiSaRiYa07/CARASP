using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class user_compare_list : System.Web.UI.Page
{
    string str;
    myconn x = new myconn();
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {


        string comp1 = Request.QueryString.Get("c1");
        string comp2 = Request.QueryString.Get("c2");
        string model1 = Request.QueryString.Get("m1");
        string model2 = Request.QueryString.Get("m2");
        string version1 = Request.QueryString.Get("v1");
        string version2 = Request.QueryString.Get("v2");
        x.cnopen();

        str = "SELECT distinct tbl_comp.compid, tbl_comp.compname, tbl_model.modelid, tbl_model.modelname, tbl_version.versionid, tbl_version.versionname, tbl_model.image, tbl_car_factors.price, tbl_car_factors.body_type, tbl_car_factors.year, tbl_car_factors.fuel, tbl_car_factors.transmission, tbl_car_factors.no_of_gears FROM tbl_comp INNER JOIN tbl_model ON tbl_comp.compid = tbl_model.compid INNER JOIN tbl_version ON tbl_model.modelid = tbl_version.modelid INNER JOIN   tbl_car_factors ON tbl_model.modelid = tbl_car_factors.modelid where tbl_comp.compid='" + comp1 + "' and tbl_model.modelid='" + model1 + "' and tbl_version.versionid='" + version1 + "'";
        da = new SqlDataAdapter(str, x.cn);
        ds = new DataSet();
        da.Fill(ds);
        carimg1.ImageUrl = "~/admin/model_img/" + ds.Tables[0].Rows[0]["image"].ToString();
        lblcomp1.Text = ds.Tables[0].Rows[0]["compname"].ToString();
        lblmodel1.Text = ds.Tables[0].Rows[0]["modelname"].ToString();
        lblversion1.Text = ds.Tables[0].Rows[0]["versionname"].ToString();
        lblprice1.Text = ds.Tables[0].Rows[0]["price"].ToString();
        lblbody_type1.Text = ds.Tables[0].Rows[0]["body_type"].ToString();
        lblyear1.Text= ds.Tables[0].Rows[0]["year"].ToString();
        lblfuel1.Text= ds.Tables[0].Rows[0]["fuel"].ToString();
        lbltrans1.Text = ds.Tables[0].Rows[0]["transmission"].ToString();
        lblgear1.Text = ds.Tables[0].Rows[0]["no_of_gears"].ToString();
        x.cnclose();



        x.cnopen();

        str = "SELECT distinct tbl_comp.compid, tbl_comp.compname, tbl_model.modelid, tbl_model.modelname, tbl_version.versionid, tbl_version.versionname, tbl_model.image, tbl_car_factors.price, tbl_car_factors.body_type, tbl_car_factors.year, tbl_car_factors.fuel, tbl_car_factors.transmission, tbl_car_factors.no_of_gears FROM tbl_comp INNER JOIN tbl_model ON tbl_comp.compid = tbl_model.compid INNER JOIN tbl_version ON tbl_model.modelid = tbl_version.modelid INNER JOIN   tbl_car_factors ON tbl_model.modelid = tbl_car_factors.modelid where tbl_comp.compid='" + comp2 + "' and tbl_model.modelid='" + model2 + "' and tbl_version.versionid='" + version2 + "'";
        da = new SqlDataAdapter(str, x.cn);
        ds = new DataSet();
        da.Fill(ds);
        carimg2.ImageUrl = "~/admin/model_img/" + ds.Tables[0].Rows[0]["image"].ToString();
        lblcomp2.Text = ds.Tables[0].Rows[0]["compname"].ToString();
        lblmodel2.Text = ds.Tables[0].Rows[0]["modelname"].ToString();
        lblversion2.Text = ds.Tables[0].Rows[0]["versionname"].ToString();
        lblprice2.Text = ds.Tables[0].Rows[0]["price"].ToString();
        lblbody_type2.Text = ds.Tables[0].Rows[0]["body_type"].ToString();
        lblyear2.Text = ds.Tables[0].Rows[0]["year"].ToString();
        lblfuel2.Text = ds.Tables[0].Rows[0]["fuel"].ToString();
        lbltrans2.Text = ds.Tables[0].Rows[0]["transmission"].ToString();
        lblgear2.Text = ds.Tables[0].Rows[0]["no_of_gears"].ToString();
        x.cnclose();



        x.cnopen();

        str = "SELECT tbl_comp.compid, tbl_comp.compname, tbl_model.modelid, tbl_model.modelname, tbl_version.versionid, tbl_version.versionname, tbl_car_specification.height, tbl_car_specification.length,  tbl_car_specification.width, tbl_car_specification.wheelbase, tbl_car_specification.door, tbl_car_specification.seating_capacity, tbl_car_specification.fuel_capacity FROM            tbl_comp INNER JOIN  tbl_model ON tbl_comp.compid = tbl_model.compid INNER JOIN  tbl_version ON tbl_model.modelid = tbl_version.modelid INNER JOIN   tbl_car_specification ON tbl_model.modelid = tbl_car_specification.modelid where tbl_comp.compid='" + comp1 + "' and tbl_model.modelid='" + model1 + "' and tbl_version.versionid='" + version1 + "'";
        da = new SqlDataAdapter(str, x.cn);
        ds = new DataSet();
        da.Fill(ds);
        lblcomp5.Text = ds.Tables[0].Rows[0]["compname"].ToString();
        lblmodel5.Text = ds.Tables[0].Rows[0]["modelname"].ToString();
        lblversion5.Text = ds.Tables[0].Rows[0]["versionname"].ToString();
        lblheight1.Text = ds.Tables[0].Rows[0]["height"].ToString();
        lbllength1.Text = ds.Tables[0].Rows[0]["length"].ToString();
        lblwidth1.Text = ds.Tables[0].Rows[0]["width"].ToString();
        lblwheelbase1.Text = ds.Tables[0].Rows[0]["wheelbase"].ToString();
        lbldoor1.Text = ds.Tables[0].Rows[0]["door"].ToString();
        lblSeating_capacity1.Text = ds.Tables[0].Rows[0]["seating_capacity"].ToString();
        lblfuel_capacity1.Text = ds.Tables[0].Rows[0]["Fuel_capacity"].ToString();
        x.cnclose();


        x.cnopen();

        str = "SELECT tbl_comp.compid, tbl_comp.compname, tbl_model.modelid, tbl_model.modelname, tbl_version.versionid, tbl_version.versionname, tbl_car_specification.height, tbl_car_specification.length,  tbl_car_specification.width, tbl_car_specification.wheelbase, tbl_car_specification.door, tbl_car_specification.seating_capacity, tbl_car_specification.fuel_capacity FROM            tbl_comp INNER JOIN  tbl_model ON tbl_comp.compid = tbl_model.compid INNER JOIN  tbl_version ON tbl_model.modelid = tbl_version.modelid INNER JOIN   tbl_car_specification ON tbl_model.modelid = tbl_car_specification.modelid where tbl_comp.compid='" + comp2 + "' and tbl_model.modelid='" + model2 + "' and tbl_version.versionid='" + version2 + "'";
        da = new SqlDataAdapter(str, x.cn);
        ds = new DataSet();
        da.Fill(ds);
        lblcomp6.Text = ds.Tables[0].Rows[0]["compname"].ToString();
        lblmodel6.Text = ds.Tables[0].Rows[0]["modelname"].ToString();
        lblversion6.Text = ds.Tables[0].Rows[0]["versionname"].ToString();
        lblheight2.Text = ds.Tables[0].Rows[0]["height"].ToString();
        lbllength2.Text = ds.Tables[0].Rows[0]["length"].ToString();
        lblwidth2.Text = ds.Tables[0].Rows[0]["width"].ToString();
        lblwheelbase2.Text = ds.Tables[0].Rows[0]["wheelbase"].ToString();
        lbldoor2.Text = ds.Tables[0].Rows[0]["door"].ToString();
        lblSeating_capacity2.Text = ds.Tables[0].Rows[0]["seating_capacity"].ToString();
        lblfuel_capacity2.Text = ds.Tables[0].Rows[0]["Fuel_capacity"].ToString();
        x.cnclose();

        x.cnopen();

        str = "SELECT  tbl_comp.compid, tbl_model.modelid AS Expr1, tbl_version.versionid AS Expr2, tbl_feature.ac, tbl_feature.climate_control, tbl_feature.cd_player, tbl_feature.power_steering, tbl_feature.power_window,  tbl_feature.central_locking, tbl_feature.steering_adjustment, tbl_feature.electrically_adjustable_driver_seat, tbl_feature.steering_mounted_controls, tbl_feature.rear_ac_vent, tbl_feature.remote_controlled_boot,   tbl_feature.leather_seats, tbl_feature.rear_wiper, tbl_feature.electrically_adjustable_mirrors, tbl_feature.anti_lock_braking_system, tbl_feature.airbag, tbl_feature.parking_sensors,   tbl_feature.traction_control FROM            tbl_comp INNER JOIN     tbl_model ON tbl_comp.compid = tbl_model.compid INNER JOIN    tbl_version ON tbl_model.modelid = tbl_version.modelid INNER JOIN tbl_feature ON tbl_model.modelid = tbl_feature.modelid where tbl_comp.compid='" + comp1 + "' and tbl_model.modelid='" + model1 + "' and tbl_version.versionid='" + version1 + "'";
        da = new SqlDataAdapter(str, x.cn);
        ds = new DataSet();
        da.Fill(ds);
        lblac1.Text = ds.Tables[0].Rows[0]["ac"].ToString();
        lblclimate_control1.Text = ds.Tables[0].Rows[0]["climate_control"].ToString();
        lblcd_player1.Text = ds.Tables[0].Rows[0]["cd_player"].ToString();
        lblpower_steering1.Text = ds.Tables[0].Rows[0]["power_steering"].ToString();
        lblpower_window1.Text = ds.Tables[0].Rows[0]["power_window"].ToString();
        lblcentral_locking1.Text = ds.Tables[0].Rows[0]["central_locking"].ToString();
        lblsteering_adjustment1.Text = ds.Tables[0].Rows[0]["steering_adjustment"].ToString();
        lbldriver_seat1.Text = ds.Tables[0].Rows[0]["electrically_adjustable_driver_seat"].ToString();
        lblsteering_mounted1.Text = ds.Tables[0].Rows[0]["steering_mounted_controls"].ToString();
        lblrear_ac1.Text = ds.Tables[0].Rows[0]["rear_ac_vent"].ToString();
        lblremote_controlboot1.Text = ds.Tables[0].Rows[0]["remote_controlled_boot"].ToString();
        lblrear_wiper1.Text = ds.Tables[0].Rows[0]["rear_wiper"].ToString();
        lblleather_seat1.Text = ds.Tables[0].Rows[0]["leather_seats"].ToString();
        lblmirror1.Text = ds.Tables[0].Rows[0]["electrically_adjustable_mirrors"].ToString();
        lblantilock1.Text = ds.Tables[0].Rows[0]["anti_lock_braking_system"].ToString();
        lblairbag1.Text = ds.Tables[0].Rows[0]["airbag"].ToString();
        lblparking_sensor1.Text = ds.Tables[0].Rows[0]["parking_sensors"].ToString();
        lbltraction_control1.Text = ds.Tables[0].Rows[0]["traction_control"].ToString();

        x.cnclose();



        x.cnopen();

        str = "SELECT  tbl_comp.compid, tbl_model.modelid AS Expr1, tbl_version.versionid AS Expr2, tbl_feature.ac, tbl_feature.climate_control, tbl_feature.cd_player, tbl_feature.power_steering, tbl_feature.power_window,  tbl_feature.central_locking, tbl_feature.steering_adjustment, tbl_feature.electrically_adjustable_driver_seat, tbl_feature.steering_mounted_controls, tbl_feature.rear_ac_vent, tbl_feature.remote_controlled_boot,   tbl_feature.leather_seats, tbl_feature.rear_wiper, tbl_feature.electrically_adjustable_mirrors, tbl_feature.anti_lock_braking_system, tbl_feature.airbag, tbl_feature.parking_sensors,   tbl_feature.traction_control FROM            tbl_comp INNER JOIN     tbl_model ON tbl_comp.compid = tbl_model.compid INNER JOIN    tbl_version ON tbl_model.modelid = tbl_version.modelid INNER JOIN tbl_feature ON tbl_model.modelid = tbl_feature.modelid where tbl_comp.compid='" + comp2 + "' and tbl_model.modelid='" + model2 + "' and tbl_version.versionid='" + version2 + "'";
        da = new SqlDataAdapter(str, x.cn);
        ds = new DataSet();
        da.Fill(ds);
        lblac2.Text = ds.Tables[0].Rows[0]["ac"].ToString();
        lblclimate_control2.Text = ds.Tables[0].Rows[0]["climate_control"].ToString();
        lblcd_player2.Text = ds.Tables[0].Rows[0]["cd_player"].ToString();
        lblpower_steering2.Text = ds.Tables[0].Rows[0]["power_steering"].ToString();
        lblpower_window2.Text = ds.Tables[0].Rows[0]["power_window"].ToString();
        lblcentral_locking2.Text = ds.Tables[0].Rows[0]["central_locking"].ToString();
        lblsteering_adjustment2.Text = ds.Tables[0].Rows[0]["steering_adjustment"].ToString();
        lbldriver_seat2.Text = ds.Tables[0].Rows[0]["electrically_adjustable_driver_seat"].ToString();
        lblsteering_mounted2.Text = ds.Tables[0].Rows[0]["steering_mounted_controls"].ToString();
        lblrear_ac2.Text = ds.Tables[0].Rows[0]["rear_ac_vent"].ToString();
        lblremote_controlboot2.Text = ds.Tables[0].Rows[0]["remote_controlled_boot"].ToString();
        lblrear_wiper2.Text = ds.Tables[0].Rows[0]["rear_wiper"].ToString();
        lblleather_seat2.Text = ds.Tables[0].Rows[0]["leather_seats"].ToString();
        lblmirror2.Text = ds.Tables[0].Rows[0]["electrically_adjustable_mirrors"].ToString();
        lblantilock2.Text = ds.Tables[0].Rows[0]["anti_lock_braking_system"].ToString();
        lblairbag2.Text = ds.Tables[0].Rows[0]["airbag"].ToString();
        lblparking_sensor2.Text = ds.Tables[0].Rows[0]["parking_sensors"].ToString();
        lbltraction_control2.Text = ds.Tables[0].Rows[0]["traction_control"].ToString();

        x.cnclose();

    }
    
}