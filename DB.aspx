<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DB.aspx.cs" Inherits="DB" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" NavigateUrl="~/Changepassword.aspx" style="z-index: 1; left: 462px; top: 41px; position: absolute">Change Password</asp:HyperLink>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <p>
            <asp:TextBox ID="txteid" runat="server"></asp:TextBox>
        </p>
        <asp:TextBox ID="txtename" runat="server"></asp:TextBox>
        <p>
            <asp:TextBox ID="txtesalary" runat="server"></asp:TextBox>
        </p>
        <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
        <p>
            <asp:TextBox ID="txtdid" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Delete" />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Update" />
        </p>
    </form>
</body>
</html>
