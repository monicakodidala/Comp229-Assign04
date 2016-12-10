using Comp229_Assign04.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign04
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Model> _model = JsonConvert.DeserializeObject<List<Model>>(File.ReadAllText(@"C:\Users\monica\Desktop\Assign04.json"));

            modelsRepeater.DataSource = _model;
            modelsRepeater.DataBind();
            
        }
    }
}