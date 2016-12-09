<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateModel.aspx.cs" Inherits="Comp229_Assign04.UpdateModel" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <table>
        <tr>
            <td>
                <img id="ImgGame" src='<%# String.Format("/Assets/{0}.jpg", Eval("name"))%>' runat="server" class="ImageWidth" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblName" runat="server" Text="Name:" Font-Bold="true"></asp:Label>
                <asp:TextBox ID="TxNameValue" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            T<%--his is a comment--%>
            <td>
                <asp:Label ID="LblFaction" runat="server" Text="Faction:"></asp:Label>
                <asp:TextBox ID="TxtFactionValue" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblRank" runat="server" Text="Rank:"></asp:Label>
                <asp:TextBox ID="TxtRankValue" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblBase" runat="server" Text="Base:"></asp:Label>
                <asp:TextBox ID="TxtBaseValue" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblSize" runat="server" Text="Size:"></asp:Label>
                <asp:TextBox ID="TxtSizeValue" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblDeploymentZone" runat="server" Text="Deployment Zone:"></asp:Label>
                <asp:TextBox ID="TxtDeploymentZoneValue" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Traits:</td>
            <td>
                <table>
                    <asp:Repeater runat="server" ID="rptTraits">
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <asp:Label runat="server" Text="<%# Container.DataItem.ToString() %>"></asp:Label>

                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </table>
            </td>
            <td>
                <asp:TextBox ID="TxtTraits" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Types:</td>
            <td>
                <table>
                    <asp:Repeater runat="server" ID="rptTypes">
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <asp:Label runat="server" Text="<%# Container.DataItem.ToString() %>"></asp:Label>

                                </td>

                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </table>
            </td>
            <td>
                <asp:TextBox ID="TxtTypes" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Defense Chart:</td>
            <td>
                <table>
                    <asp:Repeater runat="server" ID="rptDefenseChart">
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <asp:Label runat="server" Text="<%# (10 - Container.ItemIndex).ToString() %>"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label runat="server" Text="<%# (Container.DataItem).ToString() %>"></asp:Label>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </table>
            </td>
            <td>
                <asp:TextBox ID="TxtDefenseChart" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="LblMobility" runat="server" Text="Mobility:"></asp:Label>
                <asp:Textbox ID="TxtMobilityValue" runat="server"></asp:Textbox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblWillPower" runat="server" Text="Will Power:"></asp:Label>
                <asp:Textbox ID="TxtWillPowerValue" runat="server"></asp:Textbox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblResiliance" runat="server" Text="Resiliance:"></asp:Label>
                <asp:Textbox ID="TxtResilianceValue" runat="server"></asp:Textbox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblWounds" runat="server" Text="Wounds:"></asp:Label>
                <asp:Textbox ID="TxtWoundsValue" runat="server"></asp:Textbox>
            </td>
        </tr>

        <tr>
            <td>Actions:</td>
            <td>
                <table>
                    <asp:Repeater runat="server" ID="rptActions">
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <asp:Label ID="LblActionsName" runat="server" Text="Name:"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Name")  %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:Textbox ID="TxtActionsName" runat="server"></asp:Textbox>
                                </td>
                                
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="LblActionsType" runat="server" Text="Type:"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Type")  %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="LblActionsRating" runat="server" Text="Rating:"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Rating")  %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="LblActionsRange" runat="server" Text="Range:"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Range")  %>'></asp:Label>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </table>
            </td>
        </tr>


        <tr>
            <td>Special Abilities:</td>
            <td>
                <table>
                    <asp:Repeater runat="server" ID="rptSpecialAbilities">
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <asp:Label ID="LblAbilitiesName" runat="server" Text="Name:"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Name")  %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="LblAbilitiesDescription" runat="server" Text="Description:"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem,"Description")  %>'></asp:Label>
                                </td>
                            </tr>

                        </ItemTemplate>
                    </asp:Repeater>
                </table>
            </td>
        </tr>

    </table>
</asp:Content>
