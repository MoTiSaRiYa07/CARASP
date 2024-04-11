using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text.xml;
using System.Drawing;

public partial class user_Default : System.Web.UI.Page
{

    myconn x = new myconn();
    string str, qry;
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds;
    int a;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("login/Login2.aspx");
            }
            x.cnopen();
            str = "select * from tbl_user where email='" + Session["email" + ""] + "' ";
            da = new SqlDataAdapter(str, x.cn);
            ds = new DataSet();
            da.Fill(ds);
            a = int.Parse(ds.Tables[0].Rows[0]["userid"].ToString());
            //img.ImageUrl = "profile_pic/" + ds.Tables[0].Rows[0]["profile_pic"].ToString();
            //img.ImageUrl = ds.Tables[0].Rows[0]["profile_pic"].ToString();
            txtuname.Text = ds.Tables[0].Rows[0]["name"].ToString();
            txtlname.Text = ds.Tables[0].Rows[0]["lname"].ToString();
            txtemail.Text = ds.Tables[0].Rows[0]["email"].ToString();
            txtadd.Text = ds.Tables[0].Rows[0]["city"].ToString();

            txtcno.Text = ds.Tables[0].Rows[0]["phoneno"].ToString();

            x.cnclose();
        }
    }


    protected void btnupdate_Click(object sender, EventArgs e)
    {
        //x.cnopen();
        //qry = "update tbl_user set name='" + txtuname.Text + "',lname='" + txtlname.Text + "',email='" + txtemail.Text + "',city='" + txtadd.Text + "',phoneno='" + txtcno.Text + "' where name='" + txtuname.Text + "' ";
        //cmd = new SqlCommand(qry, x.cn);
        //cmd.ExecuteNonQuery();
        //x.cnclose();
        //btedit.Visible = true;

        try
        {
            x.cnopen();
            string qry = "update tbl_user set name=@name, lname=@lname, email=@email, city=@city, phoneno=@phoneno where name=@oldName";

            SqlCommand cmd = new SqlCommand(qry, x.cn);
            cmd.Parameters.AddWithValue("@name", txtuname.Text);
            cmd.Parameters.AddWithValue("@lname", txtlname.Text);
            cmd.Parameters.AddWithValue("@email", txtemail.Text);
            cmd.Parameters.AddWithValue("@city", txtadd.Text);
            cmd.Parameters.AddWithValue("@phoneno", txtcno.Text);
            cmd.Parameters.AddWithValue("@oldName", txtuname.Text); // Assuming txtuname holds the old name

            int rowsAffected = cmd.ExecuteNonQuery();

            if (rowsAffected > 0)
            {


                // Update successful
                //lblmesage.Text = "Update successful.";
                //lblmesage.ForeColor = Color.Green;
                Response.Write("<script>alert('update successfully.');</script>");

            }
            else
            {
                // No rows were affected, handle the case as needed
                //lblmesage.Text = "No records were updated.";
                //lblmesage.ForeColor = Color.Red;
                Response.Write("<script>alert('worg.');</script>");

            }
        }
        catch (Exception ex)
        {
            // Handle exceptions, log them, or display an error message
            lblmesage.Text = "Error updating record: " + ex.Message;
            lblmesage.ForeColor = Color.Red;
        }
        finally
        {
            x.cnclose();
        }
    }



    protected void btedit_Click(object sender, EventArgs e)
    {

        btnupdate.Visible = true;
        txtuname.ReadOnly = false;
        txtlname.ReadOnly = false;
        txtemail.ReadOnly = true;
        txtadd.ReadOnly = false;
        txtcno.ReadOnly = false;
        btedit.Visible = false;
    }
}