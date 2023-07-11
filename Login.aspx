<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Panel ID="Panel1" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Height="260px" Width="355px" style="z-index: 1; left: 349px; top: 136px; position: absolute; height: 264px; width: 359px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Login Page
            <br />
            <br />
            Enter User Name:
            <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
            <br />
            <br />
            Enter Password:
            <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click" Text="Login" />
            <br />
            <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="Red" Text="Incorrect Username or Password" Visible="False"></asp:Label>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" NavigateUrl="~/Registration.aspx">New User Signup?</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" NavigateUrl="~/forgotpassword.aspx">Forgot Password?</asp:HyperLink>
        </asp:Panel>
    </form>
</body>
</html>
