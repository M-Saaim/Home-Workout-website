<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FirstPage.aspx.cs" Inherits="FirstPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>This is Title</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="lblName" runat="server" BorderColor="#FF3300" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" Font-Names="Ebrima" Font-Size="Small" ForeColor="Blue" style="z-index: 1; left: 10px; top: 34px; position: absolute" Text="Enter Name"></asp:Label>
        <asp:TextBox ID="txtName" runat="server" Font-Bold="True" ForeColor="Blue"  style="z-index: 1; left: 98px; top: 32px; position: absolute" ToolTip="Please Enter Name"></asp:TextBox>
        <p>
            &nbsp;</p>
        <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click" style="z-index: 1; left: 10px; top: 91px; position: absolute" Text="Click here" />
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SecondPage.aspx" style="z-index: 1; left: 316px; top: 100px; position: absolute" Target="_blank">Go to second Page</asp:HyperLink>
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" style="z-index: 1; left: 319px; top: 153px; position: absolute">Go to Second Page</asp:LinkButton>
        </p>
        <p>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/koala.jpg" style="z-index: 1; left: 10px; top: 205px; position: absolute; height: 107px; width: 110px" />
        </p>
        <asp:TextBox ID="txtdate" runat="server" style="z-index: 1; left: 12px; top: 392px; position: absolute"></asp:TextBox>
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" OnSelectionChanged="Calendar1_SelectionChanged" style="z-index: 1; left: 17px; top: 431px; position: absolute; height: 78px; width: 130px" Visible="False" Width="220px">
            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
            <WeekendDayStyle BackColor="#CCCCFF" />
        </asp:Calendar>
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/calendar.jpg" OnClick="ImageButton1_Click" style="z-index: 1; left: 144px; top: 396px; position: absolute; height: 22px; width: 30px" />
    </form>
</body>
</html>
