using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Xml.Linq;
using Newtonsoft.Json;
using Razorpay.Api;
using System.Net.Mail;
using System.Net;

public partial class user_testdrive : System.Web.UI.Page
{
    myconn x = new myconn();
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds;
    string str, qry;
   
    private const string _key = "rzp_test_KqP18llvA4wTW0";
    private const string _secret = "zkb6tzexXXFBcVIGvDo5VDHV";
    private const decimal registrationAmount = 2500;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            txtpay.Text = registrationAmount.ToString();
        }

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
            txtname.Text = ds.Tables[0].Rows[0]["name"].ToString();
            txtlname.Text = ds.Tables[0].Rows[0]["lname"].ToString();
            txtemail.Text = ds.Tables[0].Rows[0]["email"].ToString();
            txtphoneno.Text = ds.Tables[0].Rows[0]["phoneno"].ToString();



        }
     
    }

    protected void btnbook_Click(object sender, EventArgs e)
    {

        if (string.IsNullOrEmpty(Label1.Text))
        {
            Response.Write("<script>alert('Please choose a dealer to proceed with the test drive booking.');</script>");
            return;
        }

        if (!IsPaymentSuccessful())
        {
            Response.Write("<script>alert('Payment is not successful. Make a Payment. Please try again.');</script>");
            return;
        }

        // Proceed with the test drive booking
        InsertTestDriveBooking();

        //x.cnopen();
        //string paymentOrderId = PaymentOrderId.Value;
        //string paymentId = PaymentId.Value;

        //string query = "INSERT INTO tbl_testdrive3 (user_name, last_name, email, phoneno, compid, modelid, city, date, dealerid, payment_order_id, payment_id) VALUES (@user_name, @last_name, @email, @phoneno, @compid, @modelid, @city, @date, @dealerid, @payment_order_id, @payment_id)";

        //SqlCommand cmd = new SqlCommand(query, x.cn);
        //cmd.Parameters.AddWithValue("@user_name", txtname.Text);
        //cmd.Parameters.AddWithValue("@last_name", txtlname.Text);
        //cmd.Parameters.AddWithValue("@email", txtemail.Text);
        //cmd.Parameters.AddWithValue("@phoneno", txtphoneno.Text);
        //cmd.Parameters.AddWithValue("@compid", ddlcomp.SelectedValue);
        //cmd.Parameters.AddWithValue("@modelid", ddlmodel.SelectedValue);
        //cmd.Parameters.AddWithValue("@city", ddlcity.SelectedValue);
        //cmd.Parameters.AddWithValue("@date", txtdate.Text);
        //cmd.Parameters.AddWithValue("@dealerid", Label1.Text);
        //cmd.Parameters.AddWithValue("@payment_order_id", paymentOrderId);
        //cmd.Parameters.AddWithValue("@payment_id", paymentId);

        //cmd.ExecuteNonQuery();

       

        //Response.Write("<script>alert('YOUR TEST DRIVE IS SUCCESSFULLY BOOKED.');window.location.href = 'home.aspx';</script>");

        //x.cnopen();
        //string paymentOrderId = PaymentOrderId.Value;
        //string paymentId = PaymentId.Value;

        //string query = "INSERT INTO tbl_testdrive3 (user_name, last_name, email, phoneno, compid, modelid, city, date, dealerid, payment_order_id, payment_id) VALUES (@user_name, @last_name, @email, @phoneno, @compid, @modelid, @city, @date, @dealerid, @payment_order_id, @payment_id)";

        //SqlCommand cmd = new SqlCommand(query, x.cn);
        //cmd.Parameters.AddWithValue("@user_name", txtname.Text);
        //cmd.Parameters.AddWithValue("@last_name", txtlname.Text);
        //cmd.Parameters.AddWithValue("@email", txtemail.Text);
        //cmd.Parameters.AddWithValue("@phoneno", txtphoneno.Text);
        //cmd.Parameters.AddWithValue("@compid", ddlcomp.SelectedValue);
        //cmd.Parameters.AddWithValue("@modelid", ddlmodel.SelectedValue);
        //cmd.Parameters.AddWithValue("@city", ddlcity.SelectedValue);
        //cmd.Parameters.AddWithValue("@date", txtdate.Text);
        //cmd.Parameters.AddWithValue("@dealerid", Label1.Text);
        //cmd.Parameters.AddWithValue("@payment_order_id", paymentOrderId);
        //cmd.Parameters.AddWithValue("@payment_id", paymentId);

        //cmd.ExecuteNonQuery();

        //// Send email to user
        //string toEmail = txtemail.Text;
        //string subject = "Test Drive Booking Confirmation";
        ////string body = "<span style='color:green;font-size:10px;'>Dear " + txtname.Text + " " + txtlname.Text + ",<br><br>Your test drive booking has been successfully confirmed. Here are the details of your booking:<br><br>";
        //string body = "<span style='font-size:15px;'>TEST DRIVE BOOKING<br><br>DEALER CONFIRM TEST DRIVE BOOKING YOUR TEST DRIVE SELECT CITY: " + ddlcity.SelectedValue + "<br>";
        //body += "<span style='font-size:15px;'>Name: " + txtname.Text + " " + txtlname.Text + "<br>";
        //body += "<span style='font-size:15px;'>Phone Number: " + txtphoneno.Text + "<br>";
        //body += "<span style='font-size:15px;'>City: " + ddlcity.SelectedValue + "<br>";
        //body += "<span style='font-size:15px;'>BOOKING DATE: " + txtdate.Text + "<br>";
        //body += "<span style='font-size:15px;'>Payment ID: " + paymentId + "<br><br>";
        //body += "<span style='font-size:15px;'>Thank you for Booking us. We look forward to serving you.<br><br>";
        //body += "<span style='font-size:15px;'>Best regards,<br>";
        ////body += "<span style='color:green;font-size:20px;'>TEST DRIVE BOOKING</span>";
        ////body += "DEALER CONFIRM TEST DRIVE BOOKING YOUR TEST DRIVE SELECT CITY ";

        //MailMessage mail = new MailMessage();
        //mail.To.Add(toEmail);
        //mail.From = new MailAddress("kingofembroidery@gmail.com");
        //mail.Subject = subject;
        //mail.Body = body;
        //mail.IsBodyHtml = true;

        //SmtpClient smtp = new SmtpClient();
        //smtp.Host = "smtp.gmail.com";
        //smtp.Port = 587;
        //smtp.Credentials = new NetworkCredential("kingofembroidery@gmail.com", "nhucdvtnfsemscnv");
        //smtp.EnableSsl = true;
        //smtp.Send(mail);

        //Response.Write("<script>alert('YOUR TEST DRIVE IS SUCCESSFULLY BOOKED.');window.location.href = 'home.aspx';</script>");
    }

    private void InsertTestDriveBooking()
    {
        try
        {
            x.cnopen();

            string paymentOrderId = PaymentOrderId.Value;
            string paymentId = PaymentId.Value;

            string query = "INSERT INTO tbl_testdrive3 (user_name, last_name, email, phoneno, compid, modelid, city, date, dealerid, payment_order_id, payment_id) VALUES (@user_name, @last_name, @email, @phoneno, @compid, @modelid, @city, @date, @dealerid, @payment_order_id, @payment_id)";

            SqlCommand cmd = new SqlCommand(query, x.cn);
            cmd.Parameters.AddWithValue("@user_name", txtname.Text);
            cmd.Parameters.AddWithValue("@last_name", txtlname.Text);
            cmd.Parameters.AddWithValue("@email", txtemail.Text);
            cmd.Parameters.AddWithValue("@phoneno", txtphoneno.Text);
            cmd.Parameters.AddWithValue("@compid", ddlcomp.SelectedValue);
            cmd.Parameters.AddWithValue("@modelid", ddlmodel.SelectedValue);
            cmd.Parameters.AddWithValue("@city", ddlcity.SelectedValue);
            cmd.Parameters.AddWithValue("@date", txtdate.Text);
            cmd.Parameters.AddWithValue("@dealerid", Label1.Text);
            cmd.Parameters.AddWithValue("@payment_order_id", paymentOrderId);
            cmd.Parameters.AddWithValue("@payment_id", paymentId);

            cmd.ExecuteNonQuery();

            string toEmail = txtemail.Text;
            string subject = "Test Drive Booking Confirmation";
            string body = "<span style='font-size:15px;'>TEST DRIVE BOOKING<br><br>DEALER CONFIRM TEST DRIVE BOOKING YOUR TEST DRIVE SELECT CITY: " + ddlcity.SelectedValue + "<br>";
            body += "<span style='font-size:15px;'>Name: " + txtname.Text + " " + txtlname.Text + "<br>";
            body += "<span style='font-size:15px;'>Phone Number: " + txtphoneno.Text + "<br>";
            body += "<span style='font-size:15px;'>City: " + ddlcity.SelectedValue + "<br>";
            body += "<span style='font-size:15px;'>BOOKING DATE: " + txtdate.Text + "<br>";
            body += "<span style='font-size:15px;'>Payment ID: " + paymentId + "<br><br>";
            body += "<span style='font-size:15px;'>Thank you for Booking us. We look forward to serving you.<br><br>";
            body += "<span style='font-size:15px;'>Best regards,<br>";

            MailMessage mail = new MailMessage();
            mail.To.Add(toEmail);
            mail.From = new MailAddress("kingofembroidery@gmail.com");
            mail.Subject = subject;
            mail.Body = body;
            mail.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new NetworkCredential("kingofembroidery@gmail.com", "nhucdvtnfsemscnv");
            smtp.EnableSsl = true;
            smtp.Send(mail);

            Response.Write("<script>alert('YOUR TEST DRIVE IS SUCCESSFULLY BOOKED.');window.location.href = 'home.aspx';</script>");
        }
        catch (Exception ex)
        {
            // Handle any exceptions
            Response.Write("<script>alert('An error occurred while processing your request. Please try again later.');</script>");
        }
    }

   

    private bool IsPaymentSuccessful()
    {
        // Placeholder logic: Check if the payment ID and order ID are not empty
        string paymentOrderId = PaymentOrderId.Value;
        string paymentId = PaymentId.Value;

        // Check if both payment order ID and payment ID are not empty
        if (!string.IsNullOrEmpty(paymentOrderId) && !string.IsNullOrEmpty(paymentId))
        {
            // Placeholder logic: Check with Razorpay API or payment gateway to verify payment status
            // For now, assume the payment is successful
            return true;
        }
        else
        {
            // If payment order ID or payment ID is empty, consider payment not successful
            return false;
        }
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtdate.Text = Calendar1.SelectedDate.ToString("dd'-'MM'-'yy");
    }


    protected void ddlcity_SelectedIndexChanged(object sender, EventArgs e)
    {
        x.cnopen();
        qry = "SELECT distinct tbl_dealer.dealerid,tbl_dealer.dealername,tbl_dealer.email, tbl_dealer.phoeno, tbl_dealer.address, tbl_dealer_model.modelid,tbl_dealer_model.compid,tbl_dealer_model.modelid FROM tbl_dealer INNER JOIN  tbl_dealer_model ON tbl_dealer.dealerid = tbl_dealer_model.dealerid where tbl_dealer.address='" + ddlcity.SelectedItem + "' and tbl_dealer_model.compid=" + ddlcomp.SelectedItem.Value + " and tbl_dealer_model.modelid=" + ddlmodel.SelectedItem.Value + "";
        da = new SqlDataAdapter(qry, x.cn);
        ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();


    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

        Label1.Text = GridView1.SelectedRow.Cells[1].Text;


    }

    protected void ddlcomp_SelectedIndexChanged(object sender, EventArgs e)
    {
        x.cnopen();
        str = "SELECT DISTINCT tbl_dealer.address, tbl_dealer_model.compid FROM tbl_dealer_model INNER JOIN tbl_dealer ON tbl_dealer_model.dealerid = tbl_dealer.dealerid WHERE tbl_dealer_model.compid = " + ddlcomp.SelectedValue;

        da = new SqlDataAdapter(str, x.cn);
        ds = new DataSet();
        da.Fill(ds);
        ddlcity.DataSource = ds.Tables[0];
        ddlcity.DataBind();
        ddlcity.DataValueField = "address";
        ddlcity.DataTextField = "address";

        ddlcity.DataBind();
        x.cnclose();


    }

    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        
    }


    protected void Calendar1_DayRender1(object sender, DayRenderEventArgs e)
    {
        if (e.Day.Date < DateTime.Today)
        {
            // Disable past dates
            e.Day.IsSelectable = false;
        }
    }

    protected void btnregi_Click(object sender, EventArgs e)
    {
        decimal amountinSubunits = registrationAmount * 100;
        string currency = "INR";
        string name = "Test Drive Booking";
        string description = "TEST Drive Booking Service";
        string imageLogo = "https://cdn4.vectorstock.com/i/1000x1000/94/03/car-service-logo-repair-design-template-vector-22789403.jpg";
        string profileName = txtname.Text;
        string profileMobile = txtphoneno.Text;
        string profileEmail = txtemail.Text;

        Dictionary<string, string> imageSize = new Dictionary<string, string>()
{
    { "height", "100px" },
    { "width", "100px" }
};
        Dictionary<string, string> notes = new Dictionary<string, string>()
           {
               { "note 1", "this is a payment note" }, { "note 2", "here another note, you can add max 15 notes" }
           };

       string orderId = CreateOrder(amountinSubunits, currency, notes);

        string jsFunction = "OpenPaymentWindow('" + _key + "', '" + amountinSubunits + "', '" + currency + "', '" + name + "', '" + description + "', '" + imageLogo + "', '" + orderId + "', '" + profileName + "', '" + profileEmail + "', '" + profileMobile + "', '" + JsonConvert.SerializeObject(notes) + "');";
        ClientScript.RegisterStartupScript(this.GetType(), "OpenPaymentWindow", jsFunction, true);
    }

    private string CreateOrder(decimal amountInSubunits, string currency, Dictionary<string, string> notes)
    {
        try
        {
            int paymentCapture = 1;

            RazorpayClient client = new RazorpayClient(_key, _secret);
            Dictionary<string, object> options = new Dictionary<string, object>();
            options.Add("amount", amountInSubunits);
            options.Add("currency", currency);
            options.Add("payment_capture", paymentCapture);
            options.Add("notes", notes);

            System.Net.ServicePointManager.SecurityProtocol = System.Net.SecurityProtocolType.Tls12;
            System.Net.ServicePointManager.Expect100Continue = false;

            Order orderResponse = client.Order.Create(options);
            var orderId = orderResponse.Attributes["id"].ToString();
            return orderId;
        }
        catch (Exception ex)
        {
            throw;
        }
    }




    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            // Add JavaScript to set the selected index on row click
            e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackEventReference(GridView1, "Select$" + e.Row.RowIndex.ToString());
        }
    }
}