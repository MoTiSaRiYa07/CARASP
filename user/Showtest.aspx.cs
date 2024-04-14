using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_Showtest : System.Web.UI.Page
{
    private object userEmail;

    protected void Page_Load(object sender, EventArgs e)
    {
        // Check if the session variable "email" is null, indicating that the user is not logged in
        if (Session["email"] == null)
        {
            // Redirect the user to the login page
            Response.Redirect("~/user/login/login_signup.aspx");
        }

        // Check if the page is not being loaded in response to a postback
        if (!IsPostBack)
        {
            // Get the logged-in user's email from the session variable
            string userEmail = Session["email"].ToString();

            // Set the SelectCommand of the SqlDataSource to filter records by the user's email
            SqlDataSource1.SelectCommand = "SELECT [testdrive_id], [user_name], [last_name], [email], [phoneno], [compid], [modelid], [city], [date], [dealerid], [payment_order_id], [payment_id], [status] FROM [tbl_testdrive3] WHERE [email] = @userEmail";

            // Clear any existing parameters and add the user's email as a parameter
            SqlDataSource1.SelectParameters.Clear();
            SqlDataSource1.SelectParameters.Add("userEmail", userEmail);
        }

    }

   
}