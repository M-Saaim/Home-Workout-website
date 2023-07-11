<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgotpassword.aspx.cs" Inherits="forgotpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Enter Username
        <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
&nbsp;<asp:Label ID="lbluser" runat="server" Font-Bold="True" ForeColor="Red" Text="Incorrect User Name" Visible="False"></asp:Label>
    
    </div>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Get" />
        </p>
        <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" BorderWidth="2px" Height="147px" Visible="False" Width="357px">
            Security Question:
            <asp:Label ID="lblsecq" runat="server" Font-Bold="True" Text="Label"></asp:Label>
            <br />
            <br />
            Enter Security Answer:
            <asp:TextBox ID="txtsecanswer" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Get Password" />
            <br />
            <asp:Label ID="lblmsg" runat="server" Text="Label" ForeColor="Red"></asp:Label>
        </asp:Panel>
    </form>
</body>
</html>
