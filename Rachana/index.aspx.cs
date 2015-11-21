using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void SendMail()
    {
        // Gmail Address from where you send the mail
        var fromAddress = "##############";
        // any address where the email will be sending

        //var toAddress = YourEmail.Text.ToString();
        var toAddress = "#################";
        //Password of your gmail address
        const string fromPassword = "########";
        // Passing the values and make a email formate to display
        string subject = "Rachana Construction : " + YourSubject.Text.ToString();
        string body = "From: " + YourName.Text + "\n";
        body += "Email From: " + YourEmail.Text + "\n";
        body += "Subject: " + YourSubject.Text + "\n";
        body += " Message: \n " + txt_body.Text + " ";
        // smtp settings
        var smtp = new System.Net.Mail.SmtpClient();
        {
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
            smtp.Timeout = 20000;
        }
        
        // Passing values to smtp object
        smtp.Send(fromAddress, toAddress, subject, body);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            //here on button click what will done 
            SendMail();
            YourSubject.Text = "";
            YourEmail.Text = "";
            YourName.Text = "";
            txt_body.Text = "";
            Response.Write("Mail Sent.");
        }
        catch (Exception)
        {
            Response.Write("Mail sending Fail.");

        }
    }
}