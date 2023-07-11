using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string str = null;
        for (int i = 0; i < lsthobbies.Items.Count; i++)
        {
            if (lsthobbies.Items[i].Selected == true)
            {
                str = str + lsthobbies.Items[i].Text + ",";
            }
        }
        
        SqlConnection con = new SqlConnection("Server=199.79.62.22;uid=training;pwd=Training@786;database=cmp");
        SqlCommand cmd = new SqlCommand("insert into userinfo values(@n,@u,@p,@e,@m,@d,@g,@c,@h,@secq,@seca)", con);
        cmd.Parameters.AddWithValue("@n", txtname.Text);
        cmd.Parameters.AddWithValue("@u", txtusername.Text);
        cmd.Parameters.AddWithValue("@p", txtpassword.Text);
        cmd.Parameters.AddWithValue("@e", txtemailid.Text);
        cmd.Parameters.AddWithValue("@m", txtmobileno.Text);
        cmd.Parameters.AddWithValue("@d", txtdate.Text);
        cmd.Parameters.AddWithValue("@g", rbgender.SelectedItem.Text.ToString());
        cmd.Parameters.AddWithValue("@c", ddlcity.SelectedItem.Text.ToString());
        cmd.Parameters.AddWithValue("@h", str);
        cmd.Parameters.AddWithValue("@secq", ddlsecquestion.SelectedItem.Text.ToString());
        cmd.Parameters.AddWithValue("@seca", txtsecanswer.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("User Registration Successful");
    }
   
}