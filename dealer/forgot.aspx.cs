using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class dealer_forgot : System.Web.UI.Page
{

    myconn x = new myconn();
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds;
    string str;
    SqlCommand cmd = new SqlCommand();
    static Random random = new Random();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnResetPassword_Click(object sender, EventArgs e)
    {
        str = "select * from tbl_dealer where email='" + txtemail.Text + "'";
        da = new SqlDataAdapter(str, x.cn);
        ds = new DataSet();
        da.Fill(ds);
        string u = ds.Tables[0].Rows[0]["dealerid"].ToString();



        MailMessage mail = new MailMessage();
        string mailid = ds.Tables[0].Rows[0]["email"].ToString();
        mail.To.Add(mailid);
        mail.From = new MailAddress("kingofembroidery@gmail.com");

        mail.Subject = " Dealer Reset your password";
        string code = Convert.ToString(random.Next(100000, 999999));
        string Body = "code: " + code;
        mail.Body = Body;
        mail.IsBodyHtml = true;

        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Credentials = new System.Net.NetworkCredential("kingofembroidery@gmail.com", "nhucdvtnfsemscnv");
        smtp.Port = 587;
        smtp.EnableSsl = true;
        smtp.Send(mail);

        x.cnopen();
        str = "insert into tbl_codedel values(" + code + "," + u + ")";
        cmd = new SqlCommand(str, x.cn);
        cmd.ExecuteNonQuery();
        x.cnclose();
        Response.Redirect("rest_ppss.aspx?uid=" + u + "");



    }
}
    