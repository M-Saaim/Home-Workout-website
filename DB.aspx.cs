using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class DB : System.Web.UI.Page
{
    static string str = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString.ToString();
   SqlConnection con = new SqlConnection(str);

   static string str1 = ConfigurationManager.AppSettings["mykey"].ToString();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            filldata();
            filldropdown();
        }

        //DropDownList1.DataSource = ds.Tables["emp"];
        //DropDownList1.DataTextField = "eid";
        //DropDownList1.DataBind();
    }

    public void filldata()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from employee", con);
        DataSet ds = new DataSet();
        da.Fill(ds, "emp");
        GridView1.DataSource = ds.Tables["emp"];
        GridView1.DataBind();
       // txteid.Text = ds.Tables["emp"].Rows[0][0].ToString();
    }

    public void filldropdown()
    {
        DropDownList1.Items.Clear();
        SqlCommand cmd = new SqlCommand("select * from employee", con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while(dr.Read())
        {
            DropDownList1.Items.Add(dr["eid"].ToString());
        }
        con.Close();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from employee where eid=@eid", con);
        cmd.Parameters.AddWithValue("@eid", DropDownList1.SelectedItem.Text.ToString());
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            txteid.Text = dr["eid"].ToString();
            txtename.Text = dr[1].ToString();
            txtesalary.Text = dr["esalary"].ToString();
            txtcity.Text = dr[3].ToString();
            txtdid.Text = dr[4].ToString();
        }
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into employee values(@eid,@ename,@sal,@city,@did)", con);
        cmd.Parameters.AddWithValue("@eid", txteid.Text);
        cmd.Parameters.AddWithValue("@ename", txtename.Text);
        cmd.Parameters.AddWithValue("@sal", txtesalary.Text);
        cmd.Parameters.AddWithValue("@city", txtcity.Text);
        cmd.Parameters.AddWithValue("@did", txtdid.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        filldata();
        filldropdown();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("delete from employee where eid=@eid", con);
        cmd.Parameters.AddWithValue("@eid", DropDownList1.SelectedItem.Text.ToString());
        
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        filldata();
        filldropdown();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("update employee set ename=@ename,esalary=@sal,city=@city,did=@did where eid=@eid", con);
        cmd.Parameters.AddWithValue("@eid", txteid.Text);
        cmd.Parameters.AddWithValue("@ename", txtename.Text);
        cmd.Parameters.AddWithValue("@sal", txtesalary.Text);
        cmd.Parameters.AddWithValue("@city", txtcity.Text);
        cmd.Parameters.AddWithValue("@did", txtdid.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        filldata();
        filldropdown();
    }
}