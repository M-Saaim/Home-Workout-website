﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SecondPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string n = Request.QueryString["name"].ToString();
        string d = Request.QueryString["dt"].ToString();
        Response.Write("Name is " + n + "<br>Date is " + d);
    }
}