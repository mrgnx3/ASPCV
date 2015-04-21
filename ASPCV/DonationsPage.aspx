<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DonationsPage.aspx.cs" Inherits="ASPCV.DonationsPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ASPCV %>" SelectCommand="SELECT * FROM [Donations]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Donations] WHERE [PaymentId] = @original_PaymentId AND [OrderDate] = @original_OrderDate AND (([Username] = @original_Username) OR ([Username] IS NULL AND @original_Username IS NULL)) AND [FirstName] = @original_FirstName AND [LastName] = @original_LastName AND [Address] = @original_Address AND [City] = @original_City AND [State] = @original_State AND [PostalCode] = @original_PostalCode AND [Country] = @original_Country AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND [Email] = @original_Email AND [Total] = @original_Total AND (([PaymentTransactionId] = @original_PaymentTransactionId) OR ([PaymentTransactionId] IS NULL AND @original_PaymentTransactionId IS NULL))" InsertCommand="INSERT INTO [Donations] ([OrderDate], [Username], [FirstName], [LastName], [Address], [City], [State], [PostalCode], [Country], [Phone], [Email], [Total], [PaymentTransactionId]) VALUES (@OrderDate, @Username, @FirstName, @LastName, @Address, @City, @State, @PostalCode, @Country, @Phone, @Email, @Total, @PaymentTransactionId)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Donations] SET [OrderDate] = @OrderDate, [Username] = @Username, [FirstName] = @FirstName, [LastName] = @LastName, [Address] = @Address, [City] = @City, [State] = @State, [PostalCode] = @PostalCode, [Country] = @Country, [Phone] = @Phone, [Email] = @Email, [Total] = @Total, [PaymentTransactionId] = @PaymentTransactionId WHERE [PaymentId] = @original_PaymentId AND [OrderDate] = @original_OrderDate AND (([Username] = @original_Username) OR ([Username] IS NULL AND @original_Username IS NULL)) AND [FirstName] = @original_FirstName AND [LastName] = @original_LastName AND [Address] = @original_Address AND [City] = @original_City AND [State] = @original_State AND [PostalCode] = @original_PostalCode AND [Country] = @original_Country AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND [Email] = @original_Email AND [Total] = @original_Total AND (([PaymentTransactionId] = @original_PaymentTransactionId) OR ([PaymentTransactionId] IS NULL AND @original_PaymentTransactionId IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_PaymentId" Type="Int32" />
            <asp:Parameter Name="original_OrderDate" Type="DateTime" />
            <asp:Parameter Name="original_Username" Type="String" />
            <asp:Parameter Name="original_FirstName" Type="String" />
            <asp:Parameter Name="original_LastName" Type="String" />
            <asp:Parameter Name="original_Address" Type="String" />
            <asp:Parameter Name="original_City" Type="String" />
            <asp:Parameter Name="original_State" Type="String" />
            <asp:Parameter Name="original_PostalCode" Type="String" />
            <asp:Parameter Name="original_Country" Type="String" />
            <asp:Parameter Name="original_Phone" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_Total" Type="Decimal" />
            <asp:Parameter Name="original_PaymentTransactionId" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="OrderDate" Type="DateTime" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="PostalCode" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Total" Type="Decimal" />
            <asp:Parameter Name="PaymentTransactionId" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="OrderDate" Type="DateTime" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="PostalCode" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Total" Type="Decimal" />
            <asp:Parameter Name="PaymentTransactionId" Type="String" />
            <asp:Parameter Name="original_PaymentId" Type="Int32" />
            <asp:Parameter Name="original_OrderDate" Type="DateTime" />
            <asp:Parameter Name="original_Username" Type="String" />
            <asp:Parameter Name="original_FirstName" Type="String" />
            <asp:Parameter Name="original_LastName" Type="String" />
            <asp:Parameter Name="original_Address" Type="String" />
            <asp:Parameter Name="original_City" Type="String" />
            <asp:Parameter Name="original_State" Type="String" />
            <asp:Parameter Name="original_PostalCode" Type="String" />
            <asp:Parameter Name="original_Country" Type="String" />
            <asp:Parameter Name="original_Phone" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_Total" Type="Decimal" />
            <asp:Parameter Name="original_PaymentTransactionId" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormViewDonations" runat="server" DefaultMode="Insert" DataSourceID="SqlDataSource1" Height="238px" Width="1218px" DataKeyNames="PaymentId">
        <EditItemTemplate>
            <form class="form-horizontal">
                <fieldset>
                    <legend>Donation</legend>

                    <div class="form-group">
                        <label for="textArea" class="col-lg-2 control-label">First Name</label>
                        <div class="col-lg-10">
                            <asp:TextBox ID="FirstNameTextBox" CssClass="form-group" runat="server" Text='<%# Bind("FirstName") %>' />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="textArea" class="col-lg-2 control-label">Last Name</label>
                        <div class="col-lg-10">
                            <asp:TextBox ID="LastNameTextBox" CssClass="form-group" runat="server" Text='<%# Bind("LastName") %>' />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="textArea" class="col-lg-2 control-label">Phone Numbers</label>
                        <div class="col-lg-10">
                            <asp:TextBox ID="PhoneTextBox" CssClass="form-group" runat="server" Text='<%# Bind("Phone") %>' />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="inputEmail" class="col-lg-2 control-label">Email</label>
                        <div class="col-lg-10">
                            <asp:TextBox ID="EmailTextBox" runat="server" CssClass="form-group" Text='<%# Bind("Email") %>' />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="textArea" class="col-lg-2 control-label">Donation Amount</label>
                        <div class="col-lg-10">
                            <asp:TextBox ID="TotalTextBox" CssClass="form-group" runat="server" Text='<%# Bind("Total") %>' />
                        </div>
                    </div>

                    <asp:TextBox Visible="false" ID="PaymentIdLabel1" runat="server" Text='<%# Eval("PaymentId") %>' />

                    <asp:TextBox Visible="false" ID="OrderDateTextBox" runat="server" Text='<%# Eval("OrderDate") %>' />

                    <asp:TextBox Visible="false" ID="UsernameTextBox" runat="server" Text='<%#  Bind("Username") %>' />

                    <asp:TextBox Visible="false" ID="PaymentTransactionIdTextBox" runat="server" Text='<%# Eval("PaymentTransactionId") %>' />

                    <asp:LinkButton ID="UpdateButton" runat="server" CssClass="btn btn-primary" CausesValidation="True" CommandName="Update" Text="Update" />
                    <asp:LinkButton ID="UpdateCancelButton" runat="server" CssClass="btn btn-default" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </fieldset>
            </form>
        </EditItemTemplate>
        <InsertItemTemplate>
            <form class="form-horizontal">
                <fieldset>
                    <legend>Donation</legend>

                    <div class="form-group">
                        <label for="textArea" class="col-lg-2 control-label">First Name</label>
                        <div class="col-lg-10">
                            <asp:TextBox ID="FirstNameTextBox" CssClass="form-group" runat="server" Text='<%# Bind("FirstName") %>' />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="textArea" class="col-lg-2 control-label">Last Name</label>
                        <div class="col-lg-10">
                            <asp:TextBox ID="LastNameTextBox" CssClass="form-group" runat="server" Text='<%# Bind("LastName") %>' />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="textArea" class="col-lg-2 control-label">Phone Numbers</label>
                        <div class="col-lg-10">
                            <asp:TextBox ID="PhoneTextBox" CssClass="form-group" runat="server" Text='<%# Bind("Phone") %>' />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="inputEmail" class="col-lg-2 control-label">Email</label>
                        <div class="col-lg-10">
                            <asp:TextBox ID="EmailTextBox" runat="server" CssClass="form-group" Text='<%# Bind("Email") %>' />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="textArea" class="col-lg-2 control-label">Donation Amount</label>
                        <div class="col-lg-10">
                            <asp:TextBox ID="TotalTextBox" CssClass="form-group" runat="server" Text='<%# Bind("Total") %>' />
                        </div>
                    </div>

                    <asp:TextBox Visible="false" ID="PaymentIdLabel1" runat="server" Text='<%# Eval("PaymentId") %>' />

                    <asp:TextBox Visible="false" ID="OrderDateTextBox" runat="server" Text='<%# Eval("OrderDate") %>' />

                    <asp:TextBox Visible="false" ID="UsernameTextBox" runat="server" Text='<%#  Bind("Username") %>' />

                    <asp:TextBox Visible="false" ID="PaymentTransactionIdTextBox" runat="server" Text='<%# Eval("PaymentTransactionId") %>' />

                    <asp:LinkButton ID="InsertButton" runat="server"  CssClass="btn btn-primary" CausesValidation="True" OnClick="Review_Donation" CommandName="Create Donation" Text="Insert" />
                    <asp:LinkButton ID="InsertCancelButton" runat="server" CssClass="btn btn-default" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </fieldset>
            </form>
        </InsertItemTemplate>
        <ItemTemplate>
            <form class="form-horizontal">
                <fieldset>
                    <legend>Donation</legend>

                    <div class="form-group">
                        <label for="textArea" class="col-lg-2 control-label">First Name</label>
                        <div class="col-lg-10">
                            <asp:TextBox ID="FirstNameTextBox" CssClass="form-group" runat="server" Text='<%# Bind("FirstName") %>' />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="textArea" class="col-lg-2 control-label">Last Name</label>
                        <div class="col-lg-10">
                            <asp:TextBox ID="LastNameTextBox" CssClass="form-group" runat="server" Text='<%# Bind("LastName") %>' />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="textArea" class="col-lg-2 control-label">Phone Numbers</label>
                        <div class="col-lg-10">
                            <asp:TextBox ID="PhoneTextBox" CssClass="form-group" runat="server" Text='<%# Bind("Phone") %>' />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="inputEmail" class="col-lg-2 control-label">Email</label>
                        <div class="col-lg-10">
                            <asp:TextBox ID="EmailTextBox" runat="server" CssClass="form-group" Text='<%# Bind("Email") %>' />
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="textArea" class="col-lg-2 control-label">Donation Amount</label>
                        <div class="col-lg-10">
                            <asp:TextBox ID="TotalTextBox" CssClass="form-group" runat="server" Text='<%# Bind("Total") %>' />
                        </div>
                    </div>

                    <asp:TextBox Visible="false" ID="PaymentIdLabel1" runat="server" Text='<%# Eval("PaymentId") %>' />

                    <asp:TextBox Visible="false" ID="OrderDateTextBox" runat="server" Text='<%# Eval("OrderDate") %>' />

                    <asp:TextBox Visible="false" ID="UsernameTextBox" runat="server" Text='<%#  Bind("Username") %>' />

                    <asp:TextBox Visible="false" ID="PaymentTransactionIdTextBox" runat="server" Text='<%# Eval("PaymentTransactionId") %>' />
                    <asp:LinkButton ID="EditButton" runat="server" CssClass="btn btn-default" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    <asp:LinkButton ID="DeleteButton" runat="server" CssClass="btn btn-default" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    <asp:LinkButton ID="NewButton" runat="server" CssClass="btn btn-primary" CausesValidation="False" CommandName="New" Text="New" />
                </fieldset>
            </form>


        </ItemTemplate>
    </asp:FormView>
</asp:Content>
