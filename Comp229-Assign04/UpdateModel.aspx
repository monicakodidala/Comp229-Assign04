<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateModel.aspx.cs" Inherits="Comp229_Assign04.UpdateModel" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-md-4">
        <table>
            <tr>
                <td>
                    <img id="ImgGame" src='<%# String.Format("/Assets/{0}.jpg", Eval("name"))%>' runat="server" class="ImageWidth" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblName" runat="server" Text="Name:" Font-Bold="true"></asp:Label>
                    <asp:TextBox ID="TxNameValue" runat="server" CssClass="form-control input-md"></asp:TextBox>
                </td>
            </tr>
            <tr>

                <td>
                    <asp:Label ID="LblFaction" runat="server" Text="Faction:" Font-Bold="true"></asp:Label>
                    <asp:TextBox ID="TxtFactionValue" runat="server" CssClass="form-control input-md"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblRank" runat="server" Text="Rank:" Font-Bold="true"></asp:Label>
                    <asp:TextBox ID="TxtRankValue" runat="server" CssClass="form-control input-md"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblBase" runat="server" Text="Base:" Font-Bold="true"></asp:Label>
                    <asp:TextBox ID="TxtBaseValue" runat="server" CssClass="form-control input-md"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblSize" runat="server" Text="Size:" Font-Bold="true"></asp:Label>
                    <asp:TextBox ID="TxtSizeValue" runat="server" CssClass="form-control input-md"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblDeploymentZone" runat="server" Text="Deployment Zone:" Font-Bold="true"></asp:Label>
                    <asp:TextBox ID="TxtDeploymentZoneValue" runat="server" CssClass="form-control input-md"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><b>Traits:</b></td>
                <td>
                    <table>
                        <asp:Repeater runat="server" ID="rptTraits">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <asp:TextBox runat="server" ID="TxtTraits" CssClass="form-control input-md" Text="<%# Container.DataItem.ToString() %>"></asp:TextBox>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </table>
                </td>
                </tr>
            <tr>
                <td><b>Types:</b></td>
                <td>
                    <table>
                        <asp:Repeater runat="server" ID="rptTypes">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <asp:TextBox runat="server" ID="TxtTypes" CssClass="form-control input-md"  Text="<%# Container.DataItem.ToString() %>"></asp:TextBox>

                                    </td>

                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </table>
                </td>               
            </tr>
            <tr>
                <td><b>Defense Chart:</b></td>
                <td>
                    <table>
                        <asp:Repeater runat="server" ID="rptDefenseChart">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" Font-Bold="true" Text="<%# (10 - Container.ItemIndex).ToString() %>"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox runat="server" CssClass="form-control input-md" Text="<%# (Container.DataItem).ToString() %>"></asp:TextBox>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </table>
                </td>
                </tr>

            <tr>
                <td>
                    <asp:Label ID="LblMobility" runat="server" Font-Bold="true" Text="Mobility:"></asp:Label>
                    <asp:TextBox ID="TxtMobilityValue" runat="server" CssClass="form-control input-md"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblWillPower" runat="server" Font-Bold="true" Text="Will Power:"></asp:Label>
                    <asp:TextBox ID="TxtWillPowerValue" runat="server" CssClass="form-control input-md"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblResiliance" runat="server" Font-Bold="true" Text="Resiliance:"></asp:Label>
                    <asp:TextBox ID="TxtResilianceValue" runat="server" CssClass="form-control input-md"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LblWounds" runat="server" Font-Bold="true" Text="Wounds:"></asp:Label>
                    <asp:TextBox ID="TxtWoundsValue" runat="server" CssClass="form-control input-md"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td><b>Actions:</b></td>
                <td>
                    <table>
                        <asp:Repeater runat="server" ID="rptActions">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <asp:Label ID="TxtActionsName" runat="server" Text="Name:"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox runat="server" CssClass="form-control input-md" Text='<%# DataBinder.Eval(Container.DataItem,"Name")  %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <%--<asp:Textbox ID="TxtActionsName" runat="server" CssClass="form-control input-md"></asp:Textbox>--%>
                                    </td>

                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="TxtActionsType" runat="server" Text="Type:"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Textbox runat="server" CssClass="form-control input-md" Text='<%# DataBinder.Eval(Container.DataItem,"Type")  %>'></asp:Textbox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="TxtActionsRating" runat="server" Text="Rating:"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox runat="server" CssClass="form-control input-md" Text='<%# DataBinder.Eval(Container.DataItem,"Rating")  %>'></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="TxtActionsRange" runat="server" Text="Range:"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox runat="server" CssClass="form-control input-md" Text='<%# DataBinder.Eval(Container.DataItem,"Range")  %>'></asp:TextBox>
                                    </td>

                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </table>
                </td>                             
            </tr>


            <tr>
                <td><b>Special Abilities:</b></td>
                <td>
                    <table>
                        <asp:Repeater runat="server" ID="rptSpecialAbilities">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <asp:Label ID="LblAbilitiesName" runat="server" Text="Name:"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox runat="server" CssClass="form-control input-md" Text='<%# DataBinder.Eval(Container.DataItem,"Name")  %>'></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="LblAbilitiesDescription" runat="server" Text="Description:"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox runat="server" CssClass="form-control input-md" Text='<%# DataBinder.Eval(Container.DataItem,"Description")  %>'></asp:TextBox>
                                    </td>
                                </tr>

                            </ItemTemplate>
                        </asp:Repeater>
                    </table>
                </td>
            </tr>
            
        </table>
        <asp:Button ID="BtnUpdate" Text="Update" runat="server" OnClick="BtnUpdate_Click" />
    </div>
    
</asp:Content>
