using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;


public partial class BillInformation : System.Web.UI.Page
{
    // Initializes the text in the controls only when the page is loaded for the first time.
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            // Retrieves the value of the parameter.
            lblUserID.Text = Request.QueryString["userid"];
            txtCity.Text = "";
            txtCountry.Text = "";
            txtCreditCardNumber.Text = "";
            txtEmail.Text = "";
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtState.Text = "";
            txtZipCode.Text = "";
            txtFirstName.Focus();
        }
    }

    // Submits information.
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Response.Redirect("Example22.2.aspx?userid=" + lblUserID.Text);
    }

    // Resets server controls to default values.
    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtCity.Text = "";
        txtCountry.Text = "";
        txtCreditCardNumber.Text = "";
        txtEmail.Text = "";
        txtFirstName.Text = "";
        txtLastName.Text = "";
        txtState.Text = "";
        txtZipCode.Text = "";
        ddlCreditCard.SelectedIndex = 0;
    }
    protected void ddlCreditCard_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}