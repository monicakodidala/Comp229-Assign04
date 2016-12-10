<%--Filename: Default.aspx
Authors Name: Venkata Kodithala
Student ID: 300920874
Creation Date: 2016-12-07--%>

<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Comp229_Assign04._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h2>My Games Collection!!</h2>
    <table>
        <asp:Repeater ID="modelsRepeater" runat="server">
            <ItemTemplate>
                <tr>
                    <td>
                        <div class="col-sm-4">
                            <a href='<%# String.Format("/SingleModel.aspx?name={0}&faction={1}", Eval("name"), Eval("faction")) %>' title="Please Click to see Details">
                                <img src='<%# String.Format("/Assets/{0}.jpg", Eval("name"))%>' runat="server" class="ImageWidth" /></a>

                        </div>
                    </td>
                    <td>
                        <div class="col-md-4">
                            <asp:HyperLink runat="server" Text='<%# String.Format("{0} {1}", Eval("name"), Eval("faction")) %>'
                                NavigateUrl='<%# String.Format("~/SingleModel.aspx?name={0}&faction={1}", Eval("name"), Eval("faction")) %>'></asp:HyperLink>
                        </div>

                    </td>
                </tr>
            </ItemTemplate>

        </asp:Repeater>

    </table>

</asp:Content>
