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
        //if (!IsPostBack)
        //{
        //    // Bind the ddlcomp dropdownlist with company data
        //    str = "SELECT compid, compname FROM tbl_comp WHERE status = 0";
        //    da = new SqlDataAdapter(str, x.cn);
        //    ds = new DataSet();
        //    da.Fill(ds);
        //    ddlcomp.DataSource = ds.Tables[0];
        //    ddlcomp.DataValueField = "compid";
        //    ddlcomp.DataTextField = "compname";
        //    ddlcomp.DataBind();
        //    ddlcomp.Items.Insert(0, new ListItem("Select Company", "0"));
        //}
    }

    protected void btnbook_Click(object sender, EventArgs e)
    {

        //      x.cnopen();


        //  //str = "insert into tbl_testdrive3 values('" + txtname.Text + "','" + txtlname.Text + "','" + txtemail.Text + "','" + txtphoneno.Text + "'," + ddlcomp.SelectedValue + "," + ddlmodel.SelectedValue + ",'" + ddlcity.SelectedItem + "','" + txtdate.Text + "'," + Label1.Text + ")";
        //  str = "INSERT INTO tbl_testdrive3 (user_name, last_name, email, phoneno, compid, modelid, city, date, dealerid) VALUES ('" + txtname.Text + "', '" + txtlname.Text + "', '" + txtemail.Text + "', '" + txtphoneno.Text + "', " + ddlcomp.SelectedValue + ", " + ddlmodel.SelectedValue + ", '" + ddlcity.SelectedItem + "', '" + txtdate.Text + "', " + Label1.Text + ")";

        //  cmd = new SqlCommand(str, x.cn);
        //  cmd.ExecuteNonQuery();
        //Response.Write("<script>alert('YOUR TEST DRIVE IS SUCCESSFULLY BOOKED.');window.location.href = 'home.aspx';</script>");            //Response.Redirect("~/user/home.aspx");

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

        Response.Write("<script>alert('YOUR TEST DRIVE IS SUCCESSFULLY BOOKED.');window.location.href = 'home.aspx';</script>");
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
        string name = "Skynet";
        string description = "Razorpay Payment Gateway Demo";
        string imageLogo = "";
        string profileName = txtname.Text;
        string profileMobile = txtphoneno.Text;
        string profileEmail = txtemail.Text;
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

    

}