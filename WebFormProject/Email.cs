using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Security.Policy;
using System.Web;
using WebFormProject;


namespace ATMProject.Services
{
    public class SendEmailConfirmation
    {
        public string email { get; set; }
        public string fullname { get; set; }
        public string username { get; set; }
        public string random { get; set; }

        public SendEmailConfirmation(string Email, string Fullname,
          string Username, string Random)
        {
            email = Email;
            fullname = Fullname;
            username = Username;
            random = Random;
        }

        public void sendEmail()
        {
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new
              System.Net.NetworkCredential("fullstackteam77@gmail.com", "mm112233");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();

            #region Msg
            msg.Subject = "Hello " + fullname;
            msg.Body = "Hello " + fullname +
              "Thanks for Registering in Budgetize...Your Account Details are given below:";
            msg.Body += "<tr>";
            msg.Body += "<td>User Name :" + username + "</td>";
            msg.Body += "</tr>";
            msg.Body += "<tr>";
            msg.Body += "<td>Activation Number :" + random + "</td>";
            msg.Body += "</tr>";
            msg.Body += "<tr>";
            msg.Body += "<td>Thanking</td><td>Team Budgetize</td>";
            msg.Body += "</tr>";
            #endregion

            string toAddress = email; // Add Recepient address
            msg.To.Add(toAddress);
            string fromAddress = "\"Budgetize \" <example@example.com>";
            msg.From = new MailAddress(fromAddress);
            msg.IsBodyHtml = true;

            smtp.Send(msg);

        }
    }
}