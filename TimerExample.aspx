﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TimerExample.aspx.cs" Inherits="TimerExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ScriptManager ID="ScriptManager2" runat="server">
        </asp:ScriptManager>
        <br />
        <br />
    
    </div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                 <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                 <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
                 </asp:Timer>
            </ContentTemplate>
        </asp:UpdatePanel>

       
    </form>
</body>
</html>
