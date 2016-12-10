using Comp229_Assign04.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign04
{
    public partial class UpdateModel : Page 
    {
        private Model _Model;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                var name = Request.QueryString["name"];
                var faction = Request.QueryString["faction"];
                //if (string.IsNullOrEmpty(name))
                //{
                //    Response.Redirect("~/Default.aspx");
                //    return;
                //}
                _Model = Global.Models.FirstOrDefault(tModel => tModel.name == name && tModel.faction == faction);
                SetBindings();
            }
        }
        private void SetBindings()
        {
            //ImgGame.ImageUrl = _Model.imageURL;
            TxNameValue.Text = _Model.name;
            TxtFactionValue.Text = _Model.faction;
            TxtRankValue.Text = _Model.rank.ToString();
            TxtBaseValue.Text = _Model._base.ToString();
            TxtSizeValue.Text = _Model.size.ToString();
            TxtDeploymentZoneValue.Text = _Model.deploymentZone.ToString();

            rptTraits.DataSource = _Model.traits;
            rptTraits.DataBind();

            rptTypes.DataSource = _Model.types;
            rptTypes.DataBind();

            rptDefenseChart.DataSource = _Model.defenseChart;
            rptDefenseChart.DataBind();

            TxtMobilityValue.Text = _Model.mobility.ToString();
            TxtWillPowerValue.Text = _Model.willpower.ToString();
            TxtResilianceValue.Text = _Model.resiliance.ToString();
            TxtWoundsValue.Text = _Model.wounds.ToString();

            rptActions.DataSource = _Model.actions;
            rptActions.DataBind();

            rptSpecialAbilities.DataSource = _Model.specialAbilities;
            rptSpecialAbilities.DataBind();

            //ImgGame.Src = _Model.imageUrl;
            ////rptImage.DataSource = _Model;
            ////rptImage.DataBind();


        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            Model _newModel = new Model();
            _newModel.name = TxNameValue.Text;
            _newModel.faction = TxtFactionValue.Text;
            _newModel.rank = TxtRankValue.Text == "" ? 0 : int.Parse(TxtRankValue.Text);
            _newModel._base = TxtBaseValue.Text == "" ? 0 : int.Parse(TxtBaseValue.Text);
            _newModel.size = TxtSizeValue.Text == "" ? 0 : int.Parse(TxtSizeValue.Text);
            _newModel.deploymentZone = TxtDeploymentZoneValue.Text;
            
            //local string array to collect all traits from UI
            String[] newtraits = new String[1];
            int counter = 0;

            //Loop to iterate through all items in traits repeater control
            foreach (RepeaterItem ri in rptTraits.Items)
            {
                string traits = ((TextBox)ri.FindControl("TxtTraits")).Text;
                newtraits[counter++] = traits;
            }
            _newModel.traits = newtraits;
            
            String[] newtypes = new String[1];
            counter = 0;     
                   
            foreach (RepeaterItem ri in rptTypes.Items)
            {
                string types = ((TextBox)ri.FindControl("TxtTypes")).Text;
                newtypes[counter++] = types;
            }
            _newModel.types = newtypes;

            Global.updateNewJsonFile(_newModel);
        }
    }

       
    }

