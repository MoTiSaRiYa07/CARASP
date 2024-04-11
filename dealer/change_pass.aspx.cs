﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class dealer_change_pass : System.Web.UI.Page
{
    string str, str1;
    public myconn x = new myconn();
    SqlDataAdapter da, da1 = new SqlDataAdapter();
    DataSet ds, ds1;
    SqlCommand cmd = new SqlCommand();
    string str3;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void loginBtn_Click(object sender, EventArgs e)
    {

        string currentPassword = txtcurrent.Text.Trim();
        string newPassword = txtnew.Text.Trim();
        string retypePassword = txtret.Text.Trim();
        String dname = Session["dname"].ToString();
       
        if (newPassword != retypePassword)
        {
            //lblMessage.Text = "New password and re-typed password do not match.";
            //lblMessage.ForeColor = System.Drawing.Color.Red;
            Response.Write("<script>alert('New password and re-typed password do not match.');</script>");

            return;
        }

        // Check if the current password is correct for the user
        if (!ValidateCurrentPassword(dname, currentPassword))
        {
            //lblMessage.Text = "Current password is incorrect.";
            //lblMessage.ForeColor = System.Drawing.Color.Red;
            Response.Write("<script>alert('Current password is incorrect.');</script>");

            return;
        }

        // Update password in the database
        if (ChangePasswordInDatabase(dname, newPassword))
        {
            //lblMessage.Text = "Password changed successfully.";
            //lblMessage.ForeColor = System.Drawing.Color.Green;
            Response.Write("<script>alert('PASSWORD CHANGED SUCCESSFULLY.');location.href = 'dealer_home.aspx'</script>");

        }
        else
        {
            //lblMessage.Text = "Failed to change password. Please try again later.";
            //lblMessage.ForeColor = System.Drawing.Color.Red;
            Response.Write("<script>alert('Failed to change password. Please try again later.');</script>");

        }
    }

    private bool ValidateCurrentPassword(string dname, string currentPassword)
    {
        string query = "SELECT COUNT(*) FROM tbl_dealer WHERE dealername = @dname AND password = @Password";
        SqlCommand cmd = new SqlCommand(query, x.cn);

        cmd.Parameters.AddWithValue("@dname", dname);
        cmd.Parameters.AddWithValue("@Password", currentPassword);
        x.cnclose();
        x.cnopen();
        int count = (int)cmd.ExecuteScalar();
        return count > 0;
    }

    private bool ChangePasswordInDatabase(string dname, string newPassword)
    {

        string query = "UPDATE tbl_dealer SET password = @NewPassword WHERE dealername = @dname";

        SqlCommand cmd = new SqlCommand(query, x.cn);

        cmd.Parameters.AddWithValue("@NewPassword", newPassword);
        cmd.Parameters.AddWithValue("@dname", dname);
        x.cnclose();
        x.cnopen();
        int rowsAffected = cmd.ExecuteNonQuery();
        return rowsAffected > 0;

    }
}

   