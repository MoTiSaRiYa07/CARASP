using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
public partial class user_login_reser_pass : System.Web.UI.Page
{
    myconn x = new myconn();
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds;
    string str;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_reset_Click(object sender, EventArgs e)
    {
         lbl.Text=Request.QueryString["uid"].ToString();

        str = "SELECT tbl_code.userid, tbl_code.code FROM tbl_code INNER JOIN tbl_user ON tbl_code.userid = tbl_user.userid WHERE (tbl_code.userid = " + lbl.Text + ")";
        da = new SqlDataAdapter(str, x.cn);
        ds = new DataSet();
        da.Fill(ds);
        x.cnopen();
        str = "update tbl_user set password= '" + txtpass.Text +"' where userid=" + lbl.Text +" ";
        cmd = new SqlCommand(str, x.cn);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('PASSWORD SUESFFULL FORGET PLEASE LOGIN NOW');location.href = 'Login2.aspx'</script>");

        //Response.Redirect("login_signup.aspx");
        x.cnclose();

        //    try
        //    {
        //        // Get the user ID from the query string
        //        string userID = Request.QueryString["uid"];

        //        // Construct SQL query to update the user's password
        //        string updatePasswordQuery = "UPDATE tbl_user SET password = @password WHERE userid = @userID";

        //        // Open connection to the database
        //        x.cnopen();

        //        // Create SqlCommand object with the update query
        //        SqlCommand updateCommand = new SqlCommand(updatePasswordQuery, x.cn);

        //        // Add parameters to the command
        //        updateCommand.Parameters.AddWithValue("@password", txtpass.Text);
        //        updateCommand.Parameters.AddWithValue("@userID", userID);

        //        // Execute the update query
        //        int rowsAffected = updateCommand.ExecuteNonQuery();

        //        // Close the database connection
        //        x.cnclose();

        //    //    if (rowsAffected > 0)
        //    //    {
        //    //        // Password updated successfully
        //    //        lblMessage.Text = "Password updated successfully.";
        //    //        lblMessage.ForeColor = Color.Green;
        //    //    }
        //    //    else
        //    //    {
        //    //        // No rows were affected, possibly due to incorrect user ID
        //    //        lblMessage.Text = "Failed to update password. Please try again.";
        //    //        lblMessage.ForeColor = Color.Red;
        //    //    }

        //    //    // Redirect to the login page
        //    //    Response.Redirect("Login2.aspx");
        //    //}
        //    //catch (Exception ex)
        //    //{
        //    //    // Handle exceptions
        //    //    lblMessage.Text = "Error updating password: " + ex.Message;
        //    //    lblMessage.ForeColor = Color.Red;
        //    //}
        //}
    }
}