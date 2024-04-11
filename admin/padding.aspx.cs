using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class admin_padding : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {
        int rowIndex = GridView1.EditIndex;

        GridViewRow row = GridView1.Rows[rowIndex];
       
        // Get the updated status from the GridView
        string newStatus = e.NewValues["status"].ToString();

        // Check if the status is being updated to 1
        if (newStatus == "1")
        {
            // Get the email address of the dealer

            String email = e.NewValues["email"].ToString();
            // Send an email
            SendEmail(email);
        }

        //GridViewRow row = GridView1.Rows[e.RowIndex];
     
    }

    private void SendEmail(string email)
    {
        try
        {
            // Replace these values with your actual email configuration
            string senderEmail = "kingofembroidery@gmail.com";
            string senderPassword = "nhucdvtnfsemscnv";
            string smtpHost = "smtp.gmail.com";
            int smtpPort = 587;

            MailMessage mail = new MailMessage();
            string mailid = email;
            mail.To.Add(mailid);
            mail.From = new MailAddress("kingofembroidery@gmail.com");
            mail.Subject = "Dealer Status Update And Apporval Login";
            //string Body = "Your dealer status has been updated..LOGIN NOW..... ";
            mail.Body = "Your dealer status has been updated and Admin ADD Apporval [..LOGIN NOW.....]";

            mail.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Credentials = new System.Net.NetworkCredential("kingofembroidery@gmail.com", "nhucdvtnfsemscnv");
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.Send(mail);

        }
        catch (Exception ex)
        {
            // Log the error or handle it accordingly
            Console.WriteLine("An error occurred while sending email: " + ex.Message);

            // Alternatively, you can display an error message to the user
            // For example, you can set a label text with the error message
            // Ensure you have a label control named 'lblError' in your ASPX markup
            Label1.Text = "An error occurred while sending email. Please try again later." + email;
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        //if (e.Row.RowType == DataControlRowType.DataRow)
        //{
        //    Image image = e.Row.FindControl("image") as Image;
        //    if (image != null)
        //    {
        //        // Hardcode the path to an image file for testing
        //        image.ImageUrl = "~/dealer/dealer_pictures";
        //    }

        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Image image = e.Row.FindControl("image") as Image;
            if (image != null)
            {
                // Get the file name of the image from the "image" field in the database
                string imageFileName = DataBinder.Eval(e.Row.DataItem, "image").ToString();
                if (!string.IsNullOrEmpty(imageFileName))
                {
                    // Set the ImageUrl property of the Image control to the path of the image file
                    image.ImageUrl = "~/dealer/dealer_pictures/" + imageFileName;
                }
            }
        }
    }
}



