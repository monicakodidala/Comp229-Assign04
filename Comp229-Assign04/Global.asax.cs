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
        //private const string ModelsJsonPath = "~/Content/json/Assign04.Json";
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
        //public static void updateNewJsonFile() /*creates new json*/
        //{
        //    using (StreamWriter streamWriter = new StreamWriter(jsonConvert.SerializeObject(Models)))
        //    {
        //        File.CreateText(System.Web.Hosting
        //    }
        //}
        //public static void EmailJson    
        //}
    }
}