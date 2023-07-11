<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <br />
                <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 12px; top: 97px; position: absolute"></asp:TextBox>
                <br />
                <br />
                <br />
                <br />
            </asp:View>
            <asp:View ID="View2" runat="server"></asp:View>
        </asp:MultiView>
    </form>
</body>
</html>
