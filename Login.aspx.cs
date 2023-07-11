using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString.ToString();
        SqlConnection con = new SqlConnection(str);
        SqlCommand cmd = new SqlCommand("select password from userinfo where username=@user", con);
        cmd.Parameters.AddWithValue("@user", txtusername.Text);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        string dbpwd = null;
        while(dr.Read())
        {
            dbpwd = dr["password"].ToString();
        }
        con.Close();
        if(dbpwd==txtpassword.Text)
        {
            Session["username"] = txtusername.Text;
            Session["password"] = txtpassword.Text;
            Response.Redirect("db.aspx");

        }
        else
        {
            txtusername.Text = "";
            txtpassword.Text = "";
            txtusername.Focus();
            lblmsg.Visible = true;
        }
    }
}