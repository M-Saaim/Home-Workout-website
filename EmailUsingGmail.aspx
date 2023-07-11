<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmailUsingGmail.aspx.cs"
    Inherits="EmailUsingGmail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        rr<table style="border: 1px solid" align="center">
            <tr>
                <td colspan="2" align="center">
                    <b>Send Mail with Attachment using asp.net</b>
                </td>
            </tr>
            <tr>
                <td>
                    From:
                </td>
                <td>
                    <asp:TextBox ID="txtFrom" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
<td>
Gmail Password:
</td>
<td>
<asp:TextBox ID="txtpwd" runat="server" TextMode="Password"></asp:TextBox>
</td>
</tr>
            <tr>
                <td>
                    To:
                </td>
                <td>
                    <asp:TextBox ID="txtTo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Subject:
                </td>
                <td>
                    <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Attach a file:
                </td>
                <td>
                    <asp:FileUpload ID="fileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td valign="top">
                    Body:
                </td>
                <td>
                    <asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine" Columns="30" Rows="10"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <asp:Button ID="btnSubmit" Text="Send" runat="server" OnClick="btnSubmit_Click" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
