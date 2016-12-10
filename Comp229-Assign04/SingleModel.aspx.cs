using Comp229_Assign04.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign04
{
    public partial class SingleModel : Page
    {
        private Model _Model;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Load query string values to local variables
            var name = Request.QueryString["name"];
            var faction = Request.QueryString["faction"];

            UpdateModel.NavigateUrl = String.Format("~/UpdateModel.aspx?name={0}&faction={1}",name,faction);
            

            if(string.IsNullOrEmpty(name))
            {
                Response.Redirect("~/Default.aspx");
                return;
            }
            _Model = Global.Models.FirstOrDefault(tModel => tModel.name == name && tModel.faction == faction);
            SetBindings();
        }

        private void SetBindings()
        {
            //Binds Values
            LblNameValue.Text = _Model.name;
            LblFactionValue.Text = _Model.faction;
            LblRankValue.Text = _Model.rank.ToString();
            LblBaseValue.Text = _Model._base.ToString();
            LblSizeValue.Text = _Model.size.ToString();
            LblDeploymentZoneValue.Text = _Model.deploymentZone.ToString();

            rptTraits.DataSource = _Model.traits;
            rptTraits.DataBind();

            rptTypes.DataSource = _Model.types;
            rptTypes.DataBind();

            rptDefenseChart.DataSource = _Model.defenseChart;
            rptDefenseChart.DataBind();

            LblMobilityValue.Text = _Model.mobility.ToString();
            LblWillPowerValue.Text = _Model.willpower.ToString();
            LblResilianceValue.Text = _Model.resiliance.ToString();
            LblWoundsValue.Text = _Model.wounds.ToString();

            rptActions.DataSource = _Model.actions;
            rptActions.DataBind();

            rptSpecialAbilities.DataSource = _Model.specialAbilities;
            rptSpecialAbilities.DataBind();

            ImgGame.Src = _Model.imageUrl;
            //rptImage.DataSource = _Model;
            //rptImage.DataBind();


        }
    }
}