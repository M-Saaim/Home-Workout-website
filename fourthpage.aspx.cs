using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class fourthpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            DropDownList1.Items.Add("Red");
            DropDownList1.Items.Add("Green");
            DropDownList1.Items.Add("Blue");
            DropDownList1.Items.Add("Yellow");
        }

        //int i = DropDownList1.SelectedIndex;
        //if (i == 0)
        //{
        //    lblmsg.ForeColor = Color.Red;
        //}
        //else if (i == 1)
        //{
        //    lblmsg.ForeColor = Color.Green;
        //}
        //else if (i == 2)
        //{
        //    lblmsg.ForeColor = Color.Blue;
        //}
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblmsg.Text = "You have Selected " + DropDownList1.SelectedItem.Text.ToString();
    }
}