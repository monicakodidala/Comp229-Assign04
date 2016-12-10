using Comp229_Assign04.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
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

        private const string ModelsNewJsonPath = "";
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            PrepareModelCollection();

            //sadsadsad
        }
        private void PrepareModelCollection()
        {
            using (StreamReader streamReader = new StreamReader(System.Web.Hosting.HostingEnvironment.MapPath(ModelsJsonPath)))
            {
                var jsonstring = streamReader.ReadToEnd();
                Models = JsonConvert.DeserializeObject<List<Model>>(jsonstring);
            }

           
        }
        public static void updateNewJsonFile(Model _newModel) /*creates new json*/
        {
            //Assigns a random number to newly created json
            Random random = new Random();
            int randomNumber = random.Next(0, 10000);

            // serialize JSON directly to a file to the specified path
            using (StreamWriter file = File.CreateText(@"C:/json/Assign04_" + randomNumber + ".json"))
            {
                JsonSerializer serializer = new JsonSerializer();
                serializer.Serialize(file, _newModel);
            }         
        }        
    }
}