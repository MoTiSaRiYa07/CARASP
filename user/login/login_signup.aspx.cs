using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.ComponentModel.DataAnnotations;
using System.Data;
using System.Net.Mail;

public partial class user_login_signup : System.Web.UI.Page
{
    myconn x = new myconn();
    SqlCommand cmd = new SqlCommand();
    string str;
    SqlDataReader dr;
    static Random random = new Random();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_signup_Click(object sender, EventArgs e)
    {

        //if (!(txtotp.Text.ToString().Equals(Session["otp"].ToString())))
        //{
        //    Response.Write("<script>alert('Invaild OTP.');</script>");

        //    txtotp.BackColor = System.Drawing.Color.Red;
        //}

         if (Checkname()==true)
        {
            //lblStatus.Text = "YOUR USER NAME ARE SAME";
            Response.Write("<script>alert('YOUR USER NAME ARE SAME.');</script>");

            txtname.BackColor = System.Drawing.Color.Red;
        }

        else if (Checkemail()==true)
        {
            //lblStatus.Text = "YOUR EMAIL ID ARE SAME";
            Response.Write("<script>alert('YOUR EMAIL ID ARE SAME.');</script>");

            txtemail.BackColor = System.Drawing.Color.Red;

        }
       else if (txtpassword.Text != txtre_pass.Text)
        {
            //lblStatus.Text = "Password and Retype Password do not match.";
            //txtre_pass.BackColor = System.Drawing.Color.Red;
            Response.Write("<script>alert('password and re-typed password do not match.');</script>");


            return;
        }

        else
        {
            //x.cnopen();
            //str = "insert into tbl_user values('" + txtname.Text + "','" + txtlname.Text + "','" + txtpno.Text + "','" + ddlcity.SelectedItem + "','" + txtemail.Text + "','" + txtpassword.Text + "')";
            //cmd = new SqlCommand(str, x.cn);
            //cmd.ExecuteNonQuery();
            //Session["email"] = txtemail.Text;
            //Response.Write("<script>alert('REGISTRATION SUCCESSFUL');window.location.href = '/user/home.aspx';</script>");            //Response.Redirect("~/user/home.aspx");

            ////Response.Redirect("~/user/home.aspx");

            //clear();
            //x.cnclose();
            x.cnopen();
            string cityName = ddlcity.SelectedItem.Text;
            string cityValue = ddlcity.SelectedValue;

            // Check if the selected city is "selectcity" and handle it accordingly
            if (cityValue == "0")
            {
                cityName = "";
                Response.Write("<script>alert('CITY DO NOT MATCH PLEASE SELECT CITY TO SURAT....');</script>");

            }
            else
            {

                string str = "INSERT INTO tbl_user (name, lname, phoneno, city, email, password) VALUES (@name, @lname, @phoneno, @city, @email, @password)";
                SqlCommand cmd = new SqlCommand(str, x.cn);
                cmd.Parameters.AddWithValue("@name", txtname.Text);
                cmd.Parameters.AddWithValue("@lname", txtlname.Text);
                cmd.Parameters.AddWithValue("@phoneno", txtpno.Text);
                cmd.Parameters.AddWithValue("@city", cityName); // Use the modified city name
                cmd.Parameters.AddWithValue("@email", txtemail.Text);
                cmd.Parameters.AddWithValue("@password", txtpassword.Text);
                cmd.ExecuteNonQuery();
                Session["email"] = txtemail.Text;
                Response.Write("<script>alert('Registration successful');window.location.href = 'Login2.aspx';</script>");
                clear();
                x.cnclose();
            }

        }
    }

    private Boolean Checkname()
    {
        
        Boolean nameavailble = false;
         SqlConnection cn = new SqlConnection(@"Data Source=JAYRAMAPIR\SQLEXPRESS04;Initial Catalog=""E:\AUTO MOBILE\APP_DATA\DATABASE.MDF"";Integrated Security=True;Encrypt=False");
    string query = "select * from tbl_user where name ='" + txtname.Text + "'";
        SqlCommand cmd = new SqlCommand(query,cn);
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet(); 
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            nameavailble = true;
        }
        cn.Close();
        return nameavailble;
 }

    private Boolean Checkemail()
    {

        Boolean nameavailble = false;
        SqlConnection cn = new SqlConnection(@"Data Source=JAYRAMAPIR\SQLEXPRESS04;Initial Catalog=""E:\AUTO MOBILE\APP_DATA\DATABASE.MDF"";Integrated Security=True;Encrypt=False");
        string query = "select * from tbl_user where email ='" + txtemail.Text + "'";
        SqlCommand cmd = new SqlCommand(query, cn);
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            nameavailble = true;
        }
        cn.Close();
        return nameavailble;
    }




    protected void btnlogin_Click(object sender, EventArgs e)
    {
    //    x.cnopen();
    //    str = "select * from tbl_user where email='" + txt_email.Text + "' and password='" + txt_pass.Text + "'";
    //    cmd = new SqlCommand(str, x.cn);
    //    dr = cmd.ExecuteReader();
    //    if (dr.HasRows)
    //    {
    //        Session["email"] = txt_email.Text;
    //        Response.Redirect("~/user/home.aspx");

    //    }
    //    else
    //    {

    //    }
    //    x.cnclose();
    }

    public void clear()
    {
        txtname.Text = "";
        txtlname.Text = "";
        txtemail.Text = "";
        txtpassword.Text = "";
        txtre_pass.Text = "";

        txtpno.Text = "";
    }

    protected void btn_login_Click(object sender, EventArgs e)
    {
       

    }

   

    //protected void btnotp_Click(object sender, EventArgs e)
    //{
    //    MailMessage mail = new MailMessage();

    //    String mailid = txtemail.Text;
    //    mail.To.Add(mailid);
    //    mail.From = new MailAddress("kingofembroidery@gmail.com");

    //    mail.Subject = "Registration USer Confirmation OTP";
    //    string code = Convert.ToString(random.Next(100000, 999999));
    //    string Body = "code: " + code;
    //    mail.Body = Body;
    //    mail.IsBodyHtml = true;

    //    SmtpClient smtp = new SmtpClient();
    //    smtp.Host = "smtp.gmail.com";
    //    smtp.Credentials = new System.Net.NetworkCredential("kingofembroidery@gmail.com", "nhucdvtnfsemscnv");
    //    smtp.Port = 587;
    //    smtp.EnableSsl = true;
    //    smtp.Send(mail);

    //    Session["otp"] = code;
    //}


}