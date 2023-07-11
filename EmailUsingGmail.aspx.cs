using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

public partial class EmailUsingGmail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            MailMessage Msg = new MailMessage();
            // Sender e-mail address.
            Msg.From = new MailAddress(txtFrom.Text);
            // Recipient e-mail address.
            Msg.To.Add(txtTo.Text);
            Msg.Subject = txtSubject.Text;
            Msg.Body = txtBody.Text;

            if (fileUpload1.HasFile)
            { 
               String FileName = fileUpload1.PostedFile.FileName;
               Msg.Attachments.Add(new Attachment(fileUpload1.PostedFile.InputStream, FileName));  
            }
           
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential(txtFrom.Text, txtpwd.Text);
            smtp.EnableSsl = true;
            smtp.Send(Msg);
            Msg = null;

            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Email sent.');", true);

        }

        catch (Exception ex)
        {
            Console.WriteLine("{0} Exception caught.", ex);
        }
    }
}