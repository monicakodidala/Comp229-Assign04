using Comp229_Assign04.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace Comp229_Assign04
{
    public class Global : HttpApplication
    {
        public static IEnumerable<Model> Models;
        private const string ModelsJsonPath = "~/Content/json/Assign04.Json";

        private static string ModelsNewJsonFilePath = "";
        private static string attachmentFileName = "";
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            PrepareModelCollection();
            
        }
        private void PrepareModelCollection()
        {
            using (StreamReader streamReader = new StreamReader(System.Web.Hosting.HostingEnvironment.MapPath(ModelsJsonPath)))
            {
                var jsonstring = streamReader.ReadToEnd();
                Models = JsonConvert.DeserializeObject<List<Model>>(jsonstring);
            }

           
        }
        public static string updateNewJsonFile(Model _newModel) /*creates new json*/
        {
            //Assigns a random number to newly created json
            Random random = new Random();
            int randomNumber = random.Next(0, 10000);

            ModelsNewJsonFilePath = @"C:/json/Assign04_" + randomNumber + ".json";
            attachmentFileName = "Assign04_" + randomNumber + ".json";
            // serialize JSON directly to a file to the specified path
            using (StreamWriter file = File.CreateText(@"C:/json/Assign04_" + randomNumber + ".json"))
            {
                JsonSerializer serializer = new JsonSerializer();
                serializer.Serialize(file, _newModel);
            }
            return attachmentFileName;      
        }
        public static void EmailJsonFile(string clientEmailAddress, string clientName, string attachmentFileName)
        {
            //Sends Email
            SmtpClient smtpClient = new SmtpClient("smtp-mail.outlook.com", 587);
            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;

            MailMessage message = new MailMessage();
            try
            {
                MailAddress fromAddress = new MailAddress("cc-comp229f2016@outlook.com", "Comp229-Assign04");
                MailAddress toAddress = new MailAddress(clientEmailAddress, clientName);
                message.From = fromAddress;
                message.To.Add(toAddress);
                message.Subject = "Comp229-Assign04 email";
                message.Body = "This is the body of a sample message";

                smtpClient.Host = "smtp-mail.outlook.com";
                smtpClient.EnableSsl = true;
                
                smtpClient.UseDefaultCredentials = false;
                smtpClient.Credentials = new System.Net.NetworkCredential("cc-comp229f2016@outlook.com", "comp229pwd");

                System.Net.Mime.ContentType contentType = new System.Net.Mime.ContentType();
                contentType.MediaType = System.Net.Mime.MediaTypeNames.Application.Octet;
                contentType.Name = attachmentFileName;
                message.Attachments.Add(new Attachment(ModelsNewJsonFilePath));

                smtpClient.Send(message);
                //statusLabel.Text = "Email sent.";
            }
            catch (Exception ex)
            {
                //statusLabel.Text = "Coudn't send the message!";
            }
        }
    }
}