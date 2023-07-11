<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Example22.1.aspx.cs" Inherits="BillInformation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>22.1 Page.....</title>
</head>
<body>
    <form id="frmBillInformation" runat="server">
    <div>
                <h3>
            Welcome,
            <asp:Label ID="lblUserID" runat="server"></asp:Label>.</h3>
                                <h3>
            Billing Information:</h3>                  
        <p>
            <asp:Label ID="lblFirstName" runat="server" Text="First Name:" Width="116px"></asp:Label>
            <asp:TextBox ID="txtFirstName" runat="server" Width="145px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="valFirstName" runat="server" ControlToValidate="txtFirstName"
                Display="Dynamic" ErrorMessage="Please enter the first name." SetFocusOnError="True"></asp:RequiredFieldValidator></p>
        <p>
            <asp:Label ID="lblLastName" runat="server" Text="Last Name:" Width="116px"></asp:Label>
            <asp:TextBox ID="txtLastName" runat="server" Width="145px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="valLastName" runat="server" ControlToValidate="txtLastName"
                Display="Dynamic" ErrorMessage="Please enter the last name." SetFocusOnError="True"></asp:RequiredFieldValidator></p>
        <p>
            <asp:Label ID="lblEmail" runat="server" Text="E-mail:" Width="116px"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" Width="145px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="valEmail" runat="server" ControlToValidate="txtEmail"
                Display="Dynamic" ErrorMessage="Please enter your e-mail address." SetFocusOnError="True"></asp:RequiredFieldValidator>&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
                Display="Dynamic" ErrorMessage="Enter Proper EMail ID" SetFocusOnError="True"
                Style="z-index: 102; left: 487px; position: absolute; top: 191px" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
        </p>
        <p>
            <asp:Label ID="lblCity" runat="server" Text="City:" Width="116px"></asp:Label>
            <asp:TextBox ID="txtCity" runat="server" Width="145px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="valCity" runat="server" ControlToValidate="txtCity"
                Display="Dynamic" ErrorMessage="Please enter city." SetFocusOnError="True"></asp:RequiredFieldValidator></p>
        <p>
            <asp:Label ID="lblState" runat="server" Text="State:" Width="116px"></asp:Label>
            <asp:TextBox ID="txtState" runat="server" Width="145px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="valState" runat="server" ControlToValidate="txtState"
                Display="Dynamic" ErrorMessage="Please enter state." SetFocusOnError="True"></asp:RequiredFieldValidator></p>
        <p>
            <asp:Label ID="lblCountry" runat="server" Text="Country:" Width="116px"></asp:Label>
            <asp:TextBox ID="txtCountry" runat="server" Width="145px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="valCountry" runat="server" ControlToValidate="txtCountry"
                Display="Dynamic" ErrorMessage="Please enter country." SetFocusOnError="True"></asp:RequiredFieldValidator></p>
        <p>
            <asp:Label ID="lblZipCode" runat="server" Text="Zip Code:" Width="116px"></asp:Label>
            <asp:TextBox ID="txtZipCode" runat="server" Width="145px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="valZipCode" runat="server" ControlToValidate="txtZipCode"
                Display="Dynamic" ErrorMessage="Please enter zip code." SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="valZipCodeFormat" runat="server" ControlToValidate="txtZipCode"
                Display="Dynamic" ErrorMessage="Please enter zip code in numeric format." Operator="DataTypeCheck"
                SetFocusOnError="True" Type="Integer" ForeColor="Red"></asp:CompareValidator></p>
                                        <h3>
            Payment Information:</h3>
        <p>
            <asp:Label ID="lblCreditCard" runat="server" Text="Credit Card:" Width="130px"></asp:Label>
            <asp:DropDownList ID="ddlCreditCard" runat="server" Width="145px" 
                onselectedindexchanged="ddlCreditCard_SelectedIndexChanged">
                <asp:ListItem Value="0">Select</asp:ListItem>
                <asp:ListItem>MasterCard</asp:ListItem>
                <asp:ListItem>AltaVista</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="valCreditCard" runat="server" ControlToValidate="ddlCreditCard"
                Display="Dynamic" ErrorMessage="Please select any credit card type." InitialValue="0"
                SetFocusOnError="True"></asp:RequiredFieldValidator></p>
        <p>
            <asp:Label ID="lblCreditCardNumber" runat="server" Text="Credit Card Number:"></asp:Label>
            <asp:TextBox ID="txtCreditCardNumber" runat="server" Width="145px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="valCreditCardNumber" runat="server" ControlToValidate="txtCreditCardNumber"
                Display="Dynamic" ErrorMessage="Please enter credit card number." SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="valCreditCardNumberFormat" runat="server" ControlToValidate="txtCreditCardNumber"
                Display="Dynamic" ErrorMessage="Please enter credit card number in numeric format."
                Operator="DataTypeCheck" SetFocusOnError="True" Type="Integer"></asp:CompareValidator></p>
        <p>
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
            <asp:Button ID="btnReset" runat="server" CausesValidation="False" Text="Reset" /></p>
    
    </div>
    </form>
</body>
</html>
