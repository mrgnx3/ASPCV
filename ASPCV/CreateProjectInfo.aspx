<%@ Page Title="Add new Project" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateProjectInfo.aspx.cs" Inherits="ASPCV.CreateProjectInfo" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ASPCV %>" SelectCommand="SELECT [ProjectName], [Description], [ProjectType] FROM [Projects]" OldValuesParameterFormatString="original_{0}">
                </asp:SqlDataSource>


        <asp:FormView ID="FormView1" runat="server" DefaultMode="Insert"  DataKeyNames="ProjectId" DataSourceID="SqlDataSource2" OnPageIndexChanging="FormView1_PageIndexChanging" Width="629px" >
            <EditItemTemplate >
                <form class="form-horizontal">
                <fieldset>
                    <legend>Portfolio</legend>
                    
                    <div class="form-group">
                        <label for="textArea" class="col-lg-2 control-label">Project Name</label>
                        <div class="col-lg-10">
                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Text='<%# Bind("ProjectName") %>' />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="textArea" class="col-lg-2 control-label">Project Type</label>
                        <div class="col-lg-10">
                            <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Text='<%# Bind("ProjectType") %>' />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="textArea" class="col-lg-2 control-label">Description</label>
                        <div class="col-lg-10">
                            <asp:TextBox ID="DescriptionTextBox" CssClass="form-control" Wrap="true" TextMode="MultiLine" runat="server" Rows="4" Text='<%# Bind("Description") %>' />
                            <span class="help-block">A longer block of help text that breaks onto a new line and may extend beyond one line.</span>
                        </div>
                    </div>

                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CssClass="btn btn-primary" CommandName="Update" Text="Update" />
                    <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CssClass="btn btn-default" CommandName="Cancel" Text="Cancel" />
                </fieldset>
                </form>
                    
            </EditItemTemplate>
            <InsertItemTemplate>
                <form class="form-horizontal">
                <fieldset>
               <legend>Portfolio</legend>
                    
                    <div class="form-group">
                        <label for="textArea" class="col-lg-2 control-label">Project Name</label>
                        <div class="col-lg-10">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Text='<%# Bind("ProjectName") %>' />
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="textArea" class="col-lg-2 control-label">Project Type</label>
                        <div class="col-lg-10">
                            <asp:DropDownList CssClass="form-control" ID="select" runat="server">
                                <asp:ListItem Text="Work" Value="1"></asp:ListItem>
                                <asp:ListItem Text="College" Value="2"></asp:ListItem>
                                <asp:ListItem Text="Personal Interest" Value="3"></asp:ListItem>
                            </asp:DropDownList>     
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="textArea" class="col-lg-2 control-label">Description</label>
                        <asp:TextBox ID="DescriptionTextBox" runat="server" Wrap="true" CssClass="form-control" TextMode="MultiLine" Rows="4" Text='<%# Bind("Description") %>' />
                        <span class="help-block">A longer block of help text that breaks onto a new line and may extend beyond one line.</span>
                    </div>

                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CssClass="btn btn-primary" CommandName="Insert" Text="Insert" />
                <asp:LinkButton ID="InsertCancelButton" runat="server" CssClass="btn btn-default" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </form> 
           </fieldset>
                
            </InsertItemTemplate>
            <ItemTemplate>
               <form class="form-horizontal">
                <fieldset>
                    <legend>Portfolio</legend>
                    
                    <div class="form-group">
                        <label for="textArea" class="col-lg-2 control-label">Project Name</label>
                        <div class="col-lg-10">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Text='<%# Bind("ProjectName") %>' />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="textArea" class="col-lg-2 control-label">Project Type</label>
                        <div class="col-lg-10">
                            <asp:DropDownList CssClass="form-control" runat="server" DataSourceID="SqlDataSource2" DataTextField="ProjectType" DataValueField="Types_ProjectTypeId" OnSelectedIndexChanged="Unnamed1_SelectedIndexChanged">
                                <asp:ListItem Value="Work">Work</asp:ListItem>
                                <asp:ListItem Value="College">College</asp:ListItem>
                                <asp:ListItem Value="Personal Interest">Personal Interest</asp:ListItem>
                            </asp:DropDownList>     
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="textArea" class="col-lg-2 control-label">Description</label>
                        <div class="col-lg-10">
                            <asp:TextBox ID="DescriptionTextBox" runat="server" Wrap="true" Rows="4" CssClass="form-control" TextMode="MultiLine" Text='<%# Bind("Description") %>' />
                            <span class="help-block">A longer block of help text that breaks onto a new line and may extend beyond one line.</span>
                        </div>  
                    </div>

                    <div class="form-group">
                      <div class="col-lg-10 col-lg-offset-2">
                        <asp:LinkButton ID="EditButton" runat="server" CssClass="btn btn-default" CausesValidation="False" CommandName="Edit" Text="Edit" />
                        <asp:LinkButton ID="DeleteButton" runat="server" CssClass="btn btn-default" CausesValidation="False" CommandName="Delete" Text="Delete" />
                        <asp:LinkButton ID="NewButton" runat="server" CssClass="btn btn-default" CausesValidation="False" CommandName="New" Text="New" />
                      </div>
                    </div>
                </fieldset>
                </form>
            </ItemTemplate>
            <EmptyDataTemplate>
                <form class="form-horizontal">
                <fieldset>
                    <legend>Portfolio</legend>
                   
                    <div class="form-group">
                        <label for="textArea" class="col-lg-2 control-label">Project Name</label>
                        <div class="col-lg-10">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Text='<%# Bind("ProjectName") %>' />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="textArea" class="col-lg-2 control-label">Project Type</label>
                        <div class="col-lg-10">
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Text='<%# Bind("ProjectType") %>' />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="textArea" class="col-lg-2 control-label">Description</label>
                        <div class="col-lg-10">
                            <asp:TextBox ID="DescriptionTextBox" Wrap="true" runat="server" Rows="4" TextMode="MultiLine" CssClass="form-control" Text='<%# Bind("Description") %>' />
                            <span class="help-block">A longer block of help text that breaks onto a new line and may extend beyond one line.</span>
                        </div>
                    </div>

                    <div class="form-group">
                      <div class="col-lg-10 col-lg-offset-2">
                        <asp:LinkButton ID="EditButton" runat="server" CssClass="btn btn-default" CausesValidation="False" CommandName="Edit" Text="Edit" />
                        <asp:LinkButton ID="DeleteButton" runat="server" CssClass="btn btn-default" CausesValidation="False" CommandName="Delete" Text="Delete" />
                        <asp:LinkButton ID="NewButton" runat="server" CssClass="btn btn-default" CausesValidation="False" CommandName="New" Text="New" />
                      </div>
                    </div>
                </fieldset>
               </form>
            </EmptyDataTemplate>
            
        </asp:FormView>
    </div>
</asp:Content>
