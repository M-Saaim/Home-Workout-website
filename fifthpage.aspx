<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fifthpage.aspx.cs" Inherits="fifthpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple" style="z-index: 1; left: 10px; top: 34px; position: absolute; height: 108px">
            <asp:ListItem>Reading</asp:ListItem>
            <asp:ListItem>Writing</asp:ListItem>
            <asp:ListItem>Dancing</asp:ListItem>
            <asp:ListItem>Singing</asp:ListItem>
            <asp:ListItem>Cooking</asp:ListItem>
            <asp:ListItem>Sleeping</asp:ListItem>
        </asp:ListBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" style="z-index: 1; left: 136px; top: 35px; position: absolute; height: 26px" />
        <p>
            &nbsp;</p>
        <p>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" style="z-index: 1; left: 276px; top: 58px; position: absolute; height: 27px; width: 116px">
                <asp:ListItem>C</asp:ListItem>
                <asp:ListItem>C++</asp:ListItem>
                <asp:ListItem>JAVA</asp:ListItem>
                <asp:ListItem>C#</asp:ListItem>
                <asp:ListItem>SQL</asp:ListItem>
                <asp:ListItem>ASP.NET</asp:ListItem>
                <asp:ListItem>PHP</asp:ListItem>
            </asp:CheckBoxList>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <asp:Label ID="lblmsg" runat="server" style="z-index: 1; left: 13px; top: 217px; position: absolute" Text="Label"></asp:Label>
    </form>
</body>
</html>
