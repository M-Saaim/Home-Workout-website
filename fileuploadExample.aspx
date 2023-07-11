<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fileuploadExample.aspx.cs" Inherits="fileuploadExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:FileUpload ID="FileUpload1" runat="server" style="z-index: 1; left: 10px; top: 34px; position: absolute" />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 27px; top: 84px; position: absolute; bottom: 440px" Text="Button" />
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Ads.xml" Height="200px" style="z-index: 1; left: 10px; top: 167px; position: absolute; height: 117px; width: 138px" Target="_blank" Width="200px" />
    </form>
</body>
</html>
