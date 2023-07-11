<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Example22.0.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>22nd Page.....</title>
</head>

<body>
<script language="javascript">
    function validateCheckbox(sender,e) {
        try {
            e.IsValid = false;

            var checkboxlist = document.getElementById('CheckBoxList1');
            var inputlist = checkboxlist.getElementsByTagName('input');

            for (var i = 0; i < inputlist.length; i++) {
                if (inputlist[i].type == 'checkbox')
                    if (inputlist[i].checked) {
                        e.IsValid = true;
                        break;
                    }
            }
        }
        catch (ex) {
            alert(ex.Message);
        }
    }
</script>
    <form id="frmLogin" runat="server">
    <div>
                <h2>
                    Welcome!!!
                </h2>
        <h2>
                Example On Validations Controls!!!
        </h2>
        
        <p>
            &nbsp;<asp:Panel 
                    ID="panLogin" runat="server" Height="334px" Width="635px">
                <asp:Label ID="lblUserID" runat="server" Text="Enter User ID:" Width="116px"></asp:Label>
                <asp:TextBox ID="txtUserID" runat="server" Width="137px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="valUserID" runat="server" ControlToValidate="txtUserID"
                    ErrorMessage="Please enter a User ID." SetFocusOnError="True" ForeColor="Red">*</asp:RequiredFieldValidator><br />
                <br />
                <asp:Label ID="lblPassword" runat="server" Text="Password:" Width="116px"></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="valPassword" runat="server" ControlToValidate="txtPassword"
                    ErrorMessage="Please enter the password." SetFocusOnError="True" ForeColor="Red">*</asp:RequiredFieldValidator><br />
                <br />
                <asp:Label ID="lblConfirmPass" runat="server" Text="Confirm Password:"></asp:Label>
                <asp:TextBox ID="txtConfirmPass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="valConfirmPassword" runat="server" ControlToValidate="txtConfirmPass"
                    ErrorMessage="Please confirm the password." SetFocusOnError="True" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="valConfirmPassFormat" runat="server" ControlToCompare="txtPassword"
                    ControlToValidate="txtConfirmPass" ErrorMessage="Password mismatch."
                    SetFocusOnError="True" Display="Dynamic" ForeColor="Red"></asp:CompareValidator>
                    <br />
                    <br />
                    Age&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;
                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                        ControlToValidate="txtAge" ErrorMessage="Invalid Age" MaximumValue="50" 
                        MinimumValue="18" SetFocusOnError="True" Type="Integer" ForeColor="Red"></asp:RangeValidator>
                    <asp:Calendar ID="Calendar1" runat="server" 
                        onselectionchanged="Calendar1_SelectionChanged" 
                        
                        style="z-index: 1; left: 197px; top: 332px; position: absolute; height: 32px; width: 121px" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399">
                        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                        <WeekendDayStyle BackColor="#CCCCFF" />
                    </asp:Calendar>
                    <br />
                    <br />
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToValidate="txtDate" Display="Dynamic" 
                        ErrorMessage="Date can not be greater than today's date" Operator="LessThanEqual" 
                        style="z-index: 1; left: 346px; top: 342px; position: absolute" 
                        Type="Date" SetFocusOnError="True" ForeColor="Red"></asp:CompareValidator>
                    <br />
                    <asp:TextBox ID="txtDate" runat="server" 
                        style="z-index: 1; left: 54px; top: 331px; position: absolute"></asp:TextBox>
                    <asp:Label ID="Label1" runat="server" 
                        style="z-index: 1; left: 9px; top: 334px; position: absolute; height: 20px" 
                        Text="Date"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtCheckString" runat="server" 
                        style="z-index: 1; left: 500px; top: 413px; position: absolute"></asp:TextBox>
                    <br />
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtCheckString" 
                        ErrorMessage="Numbers &amp; Symbols are not allowed." 
                        style="z-index: 1; left: 643px; top: 414px; position: absolute; width: 274px" 
                        ValidationExpression="^[a-zA-Z]+" SetFocusOnError="True" ForeColor="Red"></asp:RegularExpressionValidator>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                        ShowMessageBox="True" ForeColor="Red" />
                    <br />
                    <br />
                </asp:Panel>
            </p>
    
    </div>
        <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
        <asp:Button ID="btnReset" runat="server" CausesValidation="False" OnClick="btnReset_Click"
            Text="Reset" />
    </form>
</body>
</html>
