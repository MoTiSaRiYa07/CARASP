    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;
    using System.Web.UI;
    using System.Web.UI.WebControls;
    using System.Data.SqlClient;
    using System.Data;
    using System.Xml.Linq;
    using System.Net.Mail;
    public partial class user_shoe_detail : System.Web.UI.Page
    {
        string str,str1;
        myconn x = new myconn();
        SqlDataAdapter da,da1 = new SqlDataAdapter();
        DataSet ds,ds1;
        SqlCommand cmd = new SqlCommand();
        string str3;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["email"] == null)
            {
                Response.Redirect("~/user/login/login_signup.aspx");
            }

            else
            {

                String email = Session["email"].ToString();
                //str = "select * from tbl_user where email = " + email;
                str = "select * from tbl_user where email='" + Session["email"] + "' ";

                da = new SqlDataAdapter(str, x.cn);
                ds = new DataSet();
                da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtname.Text = ds.Tables[0].Rows[0]["name"].ToString();
                txtemail.Text = ds.Tables[0].Rows[0]["email"].ToString();
            }
            else
            {
                // Handle the case where no user data is found, e.g., display an error message or redirect the user.
            }
        
         }

                lbl.Text = Request.QueryString.Get("compid").ToString();
                lbl1.Text = Request.QueryString.Get("modelid").ToString();
                x.cnopen();

                str = "SELECT distinct tbl_comp.compname, tbl_model.modelname, tbl_model.image, tbl_comp.compid, tbl_car_factors.price, tbl_car_factors.year, tbl_car_factors.fuel, transmission ,tbl_model.modelid FROM     tbl_comp INNER JOIN tbl_model ON tbl_comp.compid = tbl_model.compid INNER JOIN tbl_car_factors ON tbl_model.modelid = tbl_car_factors.modelid where tbl_comp.compid=" + lbl.Text + " and tbl_model.modelid=" + lbl1.Text + "";

                da = new SqlDataAdapter(str, x.cn);
                ds = new DataSet();
                da.Fill(ds);
                lblcompname.Text = ds.Tables[0].Rows[0]["compname"].ToString();
                lblmodel.Text = ds.Tables[0].Rows[0]["modelname"].ToString();
                lblcal.Text = ds.Tables[0].Rows[0]["year"].ToString();
                lblfuel.Text = ds.Tables[0].Rows[0]["fuel"].ToString();
                lbltransmission.Text = ds.Tables[0].Rows[0]["transmission"].ToString();
                imgcar.ImageUrl = "~/admin/model_img/" + ds.Tables[0].Rows[0]["image"].ToString();

                x.cnclose();



                x.cnopen();
                str1 = "SELECT tbl_car_factors.price, tbl_car_factors.fuel,tbl_car_factors.versionid, tbl_car_factors.transmission, tbl_car_factors.modelid, tbl_version.versionname, tbl_model.modelname FROM            tbl_car_factors INNER JOIN  tbl_version ON tbl_car_factors.versionid = tbl_version.versionid INNER JOIN  tbl_model ON tbl_car_factors.modelid = tbl_model.modelid AND tbl_version.modelid = tbl_model.modelid WHERE        (tbl_car_factors.modelid = " + lbl1.Text + ")";
                da1 = new SqlDataAdapter(str1, x.cn);
                ds1 = new DataSet();
                da1.Fill(ds1);
                dlversion.DataSource = ds1;
                dlversion.DataBind();

                x.cnclose();
                str = "SELECT distinct tbl_color.color, tbl_color.colorname, tbl_model.modelid FROM tbl_model INNER JOIN tbl_color ON tbl_model.modelid = tbl_color.modelid where tbl_model.modelid=" + lbl1.Text + "";
                da = new SqlDataAdapter(str, x.cn);
                ds = new DataSet();
                da.Fill(ds);

                lvcolor.DataSource = ds;
                lvcolor.DataBind();
            }
    
        protected void lnksubmit_Click(object sender, EventArgs e)
        {

            x.cnopen();
         str = "insert into user1 values('" + txtname.Text + "','" + txtemail.Text + "','" + txtcommit.Text + "')";
            cmd = new SqlCommand(str, x.cn);
            cmd.ExecuteNonQuery();
            MailMessage mail = new MailMessage();
            string mailid = "kingofembroidery@gmail.com";
            mail.To.Add(mailid);
            mail.From = new MailAddress("kingofembroidery@gmail.com");
            mail.Subject = "message from " + txtname.Text;
            string Body = "Name: " + txtname.Text + "<br>" +  "<br>" + "Email :" + txtemail.Text + "<br>" + "message for user comment for car: " + txtcommit.Text +"";
            mail.Body = Body;
            mail.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Credentials = new System.Net.NetworkCredential("kingofembroidery@gmail.com", "nhucdvtnfsemscnv");
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.Send(mail);
            //lblmsg.Text = "Message send";
            clear();
            Response.Redirect("~/user/home.aspx");
            clear();
            x.cnclose();

       

        }

        private void clear()
        {
           txtcommit.Text = "";
            txtemail.Text = "";
            txtname.Text = "";
        }
    }