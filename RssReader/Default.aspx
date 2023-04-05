<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RssReader._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Read RSS feed from Habr.com.</h2>
    <div style="max-height: 600px; overflow: auto">

        <asp:GridView ID="gvRss" runat="server" AutoGenerateColumns="false" ShowHeader="false">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <table border="0" cellpadding="0" cellspacing="5">
                            <tr>
                                <td>
                                    <h3 style="color:indigo"><%# Eval("Title") %></h3>
                                </td>
                                <td width="200px">
                                    <%#Eval("PublishDate") %>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <hr/>
                                    <%#Eval("Description") %>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

    </div>

</asp:Content>
