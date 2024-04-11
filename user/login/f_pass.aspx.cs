using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
public partial class user_login_f_pass : System.Web.UI.Page
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
    protected void btn_continue_Click(object sender, EventArgs e)
    {
         str = "select * from tbl_user where email='" + txtemail.Text +"'";
        da=new SqlDataAdapter(str,x.cn);
        ds = new DataSet();
        da.Fill(ds);
        string u = ds.Tables[0].Rows[0]["userid"].ToString();



        MailMessage mail = new MailMessage();
        string mailid = ds.Tables[0].Rows[0]["email"].ToString();
        mail.To.Add(mailid);
        mail.From = new MailAddress("kingofembroidery@gmail.com");
        
        mail.Subject = "USER REST YOUR PASSWORD";
        string code= Convert.ToString(random.Next(100000, 999999));
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
      str = "insert into tbl_code values(" + code + "," + u + ")";
      cmd = new SqlCommand(str,x.cn);
      cmd.ExecuteNonQuery();
      x.cnclose();
      Response.Redirect("reset_pass.aspx?uid=" + u + "");



    }
}