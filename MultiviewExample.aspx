<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MultiviewExample.aspx.cs" Inherits="MultiviewExample" %>

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
            <asp:View ID="View1" runat="server">Enter Name:
                <asp:TextBox ID="txtname" runat="server" ></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                <br />
                <br />
            </asp:View>
            <asp:View ID="View2" runat="server">Select City :
                <asp:DropDownList ID="DropDownList1" runat="server" >
                    <asp:ListItem>Mumbai</asp:ListItem>
                    <asp:ListItem>Delhi</asp:ListItem>
                    <asp:ListItem>Pune</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <br />
                <asp:Button ID="Button2" runat="server"  Text="Button" OnClick="Button2_Click" />
                <br />
            </asp:View>
            <asp:View ID="View3" runat="server">Select Gender:<asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
                &nbsp;<br />
                <br />
                <br />
                <br />
                <asp:Button ID="Button3" runat="server"  Text="Button" OnClick="Button3_Click" />
                <br />
                <br />
                <asp:Label ID="lblmsg" runat="server" style="z-index: 1; left: 12px; top: 488px; position: absolute" Text="Label"></asp:Label>
                <br />
                
            </asp:View>
        </asp:MultiView>
    </form>
</body>
</html>
