﻿using iTextSharp.text.html.simpleparser;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_show_car_detail : System.Web.UI.Page
{
  
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["aname"] == null)
        {
            Response.Redirect("login.aspx");
        }
    }


   
}