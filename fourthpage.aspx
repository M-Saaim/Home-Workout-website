<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fourthpage.aspx.cs" Inherits="fourthpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" style="z-index: 1; left: 10px; top: 34px; position: absolute">
        </asp:DropDownList>
        <p>
            <asp:Label ID="lblmsg" runat="server" style="z-index: 1; left: 16px; top: 83px; position: absolute" Text="Label"></asp:Label>
        </p>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>
