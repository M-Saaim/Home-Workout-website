<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ThirdPage.aspx.cs" Inherits="ThirdPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:RadioButton ID="rbmale" runat="server" GroupName="a" style="z-index: 1; left: 10px; top: 34px; position: absolute" Text="Male" />
        <asp:RadioButton ID="rbFemale" runat="server" GroupName="a" style="z-index: 1; left: 10px; top: 71px; position: absolute" Text="Female" />
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 10px; top: 129px; position: absolute" Text="Button" />
        <asp:Label ID="lblmsg" runat="server" style="z-index: 1; left: 22px; top: 183px; position: absolute" Text="Label"></asp:Label>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" style="z-index: 1; left: 221px; top: 46px; position: absolute; height: 27px; width: 82px">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:RadioButtonList>
        <asp:BulletedList ID="BulletedList1" runat="server" BulletStyle="UpperAlpha" style="z-index: 1; left: 28px; top: 308px; position: absolute; height: 22px; width: 125px">
            <asp:ListItem>Red</asp:ListItem>
            <asp:ListItem>Green</asp:ListItem>
            <asp:ListItem>Blue</asp:ListItem>
            <asp:ListItem>Yellow</asp:ListItem>
        </asp:BulletedList>
    </form>
</body>
</html>
