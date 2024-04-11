using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Data;
public partial class dealer_registration : System.Web.UI.Page
{
    dealer x = new dealer();
    string qry;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click1(object sender, EventArgs e)
    {


        if (Checkemail() == true)
        {
            //lblStatus.Text = "YOUR EMAIL ID ARE SAME";
            Response.Write("<script>alert('YOUR EMAIL ID ARE SAME');</script>");

            txtemail.BackColor = System.Drawing.Color.Red;

        }
        else if (CheckUSER() == true)
        {
            //lblStatus.Text = "YOUR USER NAME ARE SAME PLEASE NEW USER NAME";
            Response.Write("<script>alert('YOUR USER NAME ARE SAME PLEASE NEW USER NAME');</script>");

            txtfname.BackColor = System.Drawing.Color.Red;
        }

        else if (Checkdelar() == true)
        {
            //lblStatus.Text = "YOUR DELER NAME ARE SAME PLEASE NEW USER NAME";
            Response.Write("<script>alert('YOUR DELER NAME ARE SAME PLEASE NEW USER NAME');</script>");

            txtdname.BackColor = System.Drawing.Color.Red;

        }
        else if (txtpass.Text != txtconpass.Text)
        {
            //lblStatus.Text = "Password and Retype Password do not match.";
            //txtre_pass.BackColor = System.Drawing.Color.Red;
            Response.Write("<script>alert('password and re-typed password do not match.');</script>");


            return;
        }

        else
        {
            string str;
            Boolean msg = false;


            str = Server.MapPath("dealer_pictures/");
            if (fu1.HasFile)
            {
                str = str + fu1.FileName;
                fu1.SaveAs(str);
                msg = true;

            }
            string cityName = ddladd.SelectedItem.Text;
            string cityValue = ddladd.SelectedValue;
            if (cityValue == "0")
            {
                cityName = "";
                Response.Write("<script>alert('ADDRESS DO NOT MATCH PLEASE SELECT ADDRESS TO SURAT....');</script>");

            }
            else
            {
                qry = "insert into tbl_dealer values('" + txtfname.Text + "','" + txtlname.Text + "','" + txtdname.Text + "','" + txtemail.Text + "','" + txtpno.Text + "','" + cityName + "','" + txtpass.Text + "','" + txtconpass.Text + "','" + fu1.FileName + "' , 0)";
                x.dealerins(qry);
                MailMessage mail = new MailMessage();
                string mailid = txtemail.Text;
                mail.To.Add(mailid);
                mail.From = new MailAddress("kingofembroidery@gmail.com");
                mail.Subject = "Registration";
                string Body = "WAITING WEBSITE APPORVAL PEDDING";
                mail.Body = Body;
                mail.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Credentials = new System.Net.NetworkCredential("kingofembroidery@gmail.com", "nhucdvtnfsemscnv");
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.Send(mail);
                //Response.Redirect("dealer_login1.aspx");
                Response.Write("<script>alert('REGISTRATION WAIT');window.location.href = 'dealer_login1.aspx';</script>");            //Response.Redirect("~/user/home.aspx");
            }
        }
        }
    


    private Boolean Checkemail()
    {

        Boolean nameavailble = false;
        SqlConnection cn = new SqlConnection(@"Data Source=JAYRAMAPIR\SQLEXPRESS04;Initial Catalog=""E:\AUTO MOBILE\APP_DATA\DATABASE.MDF"";Integrated Security=True;Encrypt=False");
        string query = "select * from tbl_dealer where email ='" + txtemail.Text + "'";
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

    private Boolean CheckUSER()
    {

        Boolean nameavailble = false;
        SqlConnection cn = new SqlConnection(@"Data Source=JAYRAMAPIR\SQLEXPRESS04;Initial Catalog=""E:\AUTO MOBILE\APP_DATA\DATABASE.MDF"";Integrated Security=True;Encrypt=False");
        string query = "select * from tbl_dealer where fname ='" + txtfname.Text + "'";
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



    private Boolean Checkdelar()
    {

        Boolean nameavailble = false;
        SqlConnection cn = new SqlConnection(@"Data Source=JAYRAMAPIR\SQLEXPRESS04;Initial Catalog=""E:\AUTO MOBILE\APP_DATA\DATABASE.MDF"";Integrated Security=True;Encrypt=False");
        string query = "select * from tbl_dealer where dealername ='" + txtdname.Text + "'";
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
}