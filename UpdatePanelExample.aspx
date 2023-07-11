<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdatePanelExample.aspx.cs" Inherits="UpdatePanelExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    
    </div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                 <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </p>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
