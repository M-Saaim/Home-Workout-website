using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using sample;
using System.Data;
public partial class usingWebService : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        WebService obj = new WebService();
        DataSet ds = obj.getdata();
        GridView1.DataSource = ds.Tables["emp"];
        GridView1.DataBind();
    }
}