<%@ Page Title="Portfolio: <%: Context.User.Identity.GetUserName()  %>" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProjectList.aspx.cs" Inherits="ASPCV.ProjectList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        <div>
            <asp:ListView ID="projectList" runat="server" 
                DataKeyNames="ProjectId" GroupItemCount="4"
                ItemType="ASPCV.Models.Project" SelectMethod="GetProjects">
                <EmptyDataTemplate>
                    <table >
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td/>
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <ItemTemplate>
                    <td runat="server">
                        <table>
                            <tr>
                                <td>
                                  <a href="ProjectDescription.aspx?projectId=<%#: Item.ProjectId %>">
                                    <span>
                                        <%#: Item.ProjectName %>
                                    </span>  
                                  </a>
                                </td>
                            </tr>
                            <tr>
                              <span>
                                <b>Type </b><%#:Item.ProjectType %>
                              </span>
                              <br />
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                        </p>
                    </td>
                </ItemTemplate>
                <LayoutTemplate>
                    <table style="width:100%;">
                        <tbody>
                            <tr>
                                <td>
                                    <table id="groupPlaceholderContainer" runat="server" style="width:100%">
                                        <tr id="groupPlaceholder"></tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                            </tr>
                            <tr></tr>
                        </tbody>
                    </table>
                </LayoutTemplate>
            </asp:ListView>
        </div>
    </section>
    <br />
    <a class="btn btn-default" ID="AddNewProject" href="/CreateProjectInfo.aspx">Create New Project</a>
    <br />
    <br />
    <br />
</asp:Content>