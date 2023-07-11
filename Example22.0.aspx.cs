using System;
using System.Web.UI;


public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {       
        // Initializes the text in the controls only when the page is loaded for the first time.
        if (!Page.IsPostBack)
        {
           
            CompareValidator1.ValueToCompare = DateTime.Today.ToShortDateString();
        }
    }

    // Submits login information.
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        
        Response.Redirect("Example22.1.aspx?userid=" + txtUserID.Text);
    }

    // Resets server controls to default values.
    protected void btnReset_Click(object sender, EventArgs e)
    {
       
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtDate.Text = Calendar1.SelectedDate.ToShortDateString();
    }
}