<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DonationsReview.aspx.cs" Inherits="ASPCV.Donations.DonationsReview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ASPCV %>" SelectCommand="SELECT * FROM [Donations] WHERE ([PaymentId] = @PaymentId)">
        <SelectParameters>
            <asp:QueryStringParameter Name="PaymentId" QueryStringField="paymentId" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:ImageButton ID="CheckoutImageBtn" runat="server" ImageUrl="https://www.paypal.com/en_US/i/btn/btn_xpressCheckout.gif"
                      Width="145" AlternateText="Check out with PayPal"
                      BackColor="Transparent" BorderWidth="0" />
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="PaymentId" DataSourceID="SqlDataSource1" Width="358px">
        <EditItemTemplate>
            PaymentId:
            <asp:Label ID="PaymentIdLabel1" runat="server" Text='<%# Eval("PaymentId") %>' />
            <br />
            OrderDate:
            <asp:TextBox ID="OrderDateTextBox" runat="server" Text='<%# Bind("OrderDate") %>' />
            <br />
            Username:
            <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
            <br />
            FirstName:
            <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
            <br />
            LastName:
            <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
            <br />
            Address:
            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
            <br />
            City:
            <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
            <br />
            State:
            <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
            <br />
            PostalCode:
            <asp:TextBox ID="PostalCodeTextBox" runat="server" Text='<%# Bind("PostalCode") %>' />
            <br />
            Country:
            <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
            <br />
            Phone:
            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            Total:
            <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("Total") %>' />
            <br />
            PaymentTransactionId:
            <asp:TextBox ID="PaymentTransactionIdTextBox" runat="server" Text='<%# Bind("PaymentTransactionId") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            OrderDate:
            <asp:TextBox ID="OrderDateTextBox" runat="server" Text='<%# Bind("OrderDate") %>' />
            <br />
            Username:
            <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
            <br />
            FirstName:
            <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
            <br />
            LastName:
            <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
            <br />
            Address:
            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
            <br />
            City:
            <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
            <br />
            State:
            <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
            <br />
            PostalCode:
            <asp:TextBox ID="PostalCodeTextBox" runat="server" Text='<%# Bind("PostalCode") %>' />
            <br />
            Country:
            <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
            <br />
            Phone:
            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
            <br />
            Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            Total:
            <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("Total") %>' />
            <br />
            PaymentTransactionId:
            <asp:TextBox ID="PaymentTransactionIdTextBox" runat="server" Text='<%# Bind("PaymentTransactionId") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            PaymentId:
            <asp:Label ID="PaymentIdLabel" runat="server" Text='<%# Eval("PaymentId") %>' />
            <br />
            OrderDate:
            <asp:Label ID="OrderDateLabel" runat="server" Text='<%# Bind("OrderDate") %>' />
            <br />
            Username:
            <asp:Label ID="UsernameLabel" runat="server" Text='<%# Bind("Username") %>' />
            <br />
            FirstName:
            <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Bind("FirstName") %>' />
            <br />
            LastName:
            <asp:Label ID="LastNameLabel" runat="server" Text='<%# Bind("LastName") %>' />
            <br />
            Address:
            <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
            <br />
            City:
            <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
            <br />
            State:
            <asp:Label ID="StateLabel" runat="server" Text='<%# Bind("State") %>' />
            <br />
            PostalCode:
            <asp:Label ID="PostalCodeLabel" runat="server" Text='<%# Bind("PostalCode") %>' />
            <br />
            Country:
            <asp:Label ID="CountryLabel" runat="server" Text='<%# Bind("Country") %>' />
            <br />
            Phone:
            <asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' />
            <br />
            Email:
            <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
            <br />
            Total:
            <asp:Label ID="TotalLabel" runat="server" Text='<%# Bind("Total") %>' />
            <br />
            PaymentTransactionId:
            <asp:Label ID="PaymentTransactionIdLabel" runat="server" Text='<%# Bind("PaymentTransactionId") %>' />
            <br />

        </ItemTemplate>
    </asp:FormView>
</asp:Content>
