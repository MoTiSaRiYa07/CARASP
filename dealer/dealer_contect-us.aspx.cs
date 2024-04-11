using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
public partial class dealer_dealer_contect_us : System.Web.UI.Page
{
    myconn x = new myconn();
    SqlCommand cmd = new SqlCommand();

    string str;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["dname"] == null)
        {
            Response.Redirect("dealer_login1.aspx");
        }
        else
        {
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        x.cnopen();
        str = "insert into tbl_msg values('" + txtname.Text + "','" + txtpno.Text + "','" + txtemail.Text + "','" + txtmsg.Text + "')";
        cmd = new SqlCommand(str, x.cn);
        cmd.ExecuteNonQuery();


        MailMessage mail = new MailMessage();
        string mailid = "kingofembroidery@gmail.com";
        mail.To.Add(mailid);
        mail.From = new MailAddress("kingofembroidery@gmail.com");
        mail.Subject = "message from " + txtname.Text;
        string Body = "Name: " + txtname.Text + "<br>" + "Phone no: " + txtpno.Text + "<br>" + "Email :" + txtemail.Text + "<br>" + txtmsg.Text;
        mail.Body = Body;
        mail.IsBodyHtml = true;

        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Credentials = new System.Net.NetworkCredential("kingofembroidery@gmail.com", "nhucdvtnfsemscnv");
        smtp.Port = 587;
        smtp.EnableSsl = true;
        smtp.Send(mail);
        lblmsg.Text = "Message send";
        clear();
        x.cnclose();
    }
    public void clear()
    {
        txtname.Text = "";
        txtpno.Text = "";
        txtemail.Text = "";
        txtmsg.Text = "";

    }
}