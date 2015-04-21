<%@ Page Title="Project Description" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProjectDescription.aspx.cs" Inherits="ASPCV.ProjectDescription" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="projectDescription" runat="server" ItemType="ASPCV.Models.Project" SelectMethod ="GetProject" RenderOuterTable="false">
        <ItemTemplate>
            <div>
                <h1><%#:Item.ProjectName %></h1>
                <span><b>Type:</b> <%#: Item.ProjectType %></span>
                <br />
            </div>
            <br />
            <table>
                <tr>
                    <td style="vertical-align: top; text-align:left;">
                        <b>Description:</b><br /><%#:Item.Description %>
                        <br />
                        
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:FormView>
</asp:Content>