using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_ankush : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {



    }

    protected void btnSendPayment_Click(object sender, EventArgs e)
    {

    }

    protected void btnSend_Click(object sender, EventArgs e)
    {

        try
        {
            // Get form data
            string email = txtEmail.Text;
            string subject = txtSubject.Text;
            string message = txtMessage.Text;

            // Create and configure the email message
            MailMessage mail = new MailMessage();
            mail.From = new MailAddress("kingofembroidery@gmail.com");
            mail.To.Add(email);
            mail.Subject = subject;
            mail.Body = message;

            // Attach file if provided
            if (fileAttachment.HasFile)
            {
                // Get the file name
                string fileName = System.IO.Path.GetFileName(fileAttachment.PostedFile.FileName);

                // Add the file as an attachment
                mail.Attachments.Add(new Attachment(fileAttachment.PostedFile.InputStream, fileName));
            }

            // Send email
            SmtpClient smtp = new SmtpClient("smtp.gmail.com");
            smtp.Port = 587;
            smtp.Credentials = new NetworkCredential("kingofembroidery@gmail.com", "nhucdvtnfsemscnv");
            smtp.EnableSsl = true;
            smtp.Send(mail);

            // Optionally, display success message
            Response.Write("<script>alert('Email sent successfully.');</script>");
        }
        catch (Exception ex)
        {
            // Handle any exceptions
            Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
        }
    }
}