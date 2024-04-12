using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class dealer_ViewData : System.Web.UI.Page
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
            if (Session["dname"] == null)
            {
                Response.Redirect("dealer_login1.aspx");
            }

            x.cnopen();
            str = "select * from tbl_dealer where dealername='" + Session["dname"] + "' ";
            da = new SqlDataAdapter(str, x.cn);
            ds = new DataSet();
            da.Fill(ds);

            a = int.Parse(ds.Tables[0].Rows[0]["dealerid"].ToString());
            img.ImageUrl = "dealer_pictures/" + ds.Tables[0].Rows[0]["image"].ToString();
            //img.ImageUrl = ds.Tables[0].Rows[0]["profile_pic"].ToString();
            txtdname.Text = ds.Tables[0].Rows[0]["fname"].ToString();
            txtlname.Text = ds.Tables[0].Rows[0]["lname"].ToString();
            txtdename.Text = ds.Tables[0].Rows[0]["dealername"].ToString();
            txtemail.Text = ds.Tables[0].Rows[0]["email"].ToString();
            txtadd.Text = ds.Tables[0].Rows[0]["address"].ToString();

            txtcno.Text = ds.Tables[0].Rows[0]["phoeno"].ToString();

            x.cnclose();
        }
    }


    protected void btnupdate_Click(object sender, EventArgs e)
    {
        //x.cnopen();
        //qry = "update tbl_dealer set fname='" + txtdname.Text + "',lname='" + txtlname.Text + "',dealername='" + txtdename.Text + "',email='" + txtemail.Text + "',address='" + txtadd.Text + "',phoeno='" + txtcno.Text + "' where fname='" + txtdname.Text + "' ";
        //cmd = new SqlCommand(qry, x.cn);
        //cmd.ExecuteNonQuery();
        //x.cnclose();
        //btedit.Visible = true;
        try
        {
            x.cnopen();
            string qry = "UPDATE tbl_dealer SET fname=@fname, lname=@lname, dealername=@dealername, email=@email, address=@address, phoeno=@phoeno WHERE fname=@oldName";

            SqlCommand cmd = new SqlCommand(qry, x.cn);
            cmd.Parameters.AddWithValue("@fname", txtdname.Text);
            cmd.Parameters.AddWithValue("@lname", txtlname.Text);
            cmd.Parameters.AddWithValue("@dealername", txtdename.Text);
            cmd.Parameters.AddWithValue("@email", txtemail.Text);
            cmd.Parameters.AddWithValue("@address", txtadd.Text);
            cmd.Parameters.AddWithValue("@phoeno", txtcno.Text);
            cmd.Parameters.AddWithValue("@oldName", txtdname.Text); // Assuming txtdname holds the old name

            int rowsAffected = cmd.ExecuteNonQuery();

            if (rowsAffected > 0)
            {
                // Update successful
                lblmessage.Text = "Update successful.";
                lblmessage.ForeColor = Color.Green;
                btedit.Visible = true;
            }
            else
            {
                // No rows were affected, handle the case as needed
                lblmessage.Text = "No records were updated.";
                lblmessage.ForeColor = Color.Red;
            }
        }
        catch (Exception ex)
        {
            // Handle exceptions, log them, or display an error message
            lblmessage.Text = "Error updating record: " + ex.Message;
            lblmessage.ForeColor = Color.Red;
        }
        finally
        {
            x.cnclose();
        }
    }

    protected void btedit_Click(object sender, EventArgs e)
    {
        btnupdate.Visible = true;
       txtdname.ReadOnly = false;
        txtlname.ReadOnly = false;
        txtdename.ReadOnly = true;
        txtemail.ReadOnly = false;
        txtadd.ReadOnly = false;
        txtcno.ReadOnly = false;
        btedit.Visible = false;
    }
}
   
