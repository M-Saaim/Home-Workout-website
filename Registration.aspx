<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Enter Name:
        <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
    
    </div>
        <p>
            Enter User Name:
            <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
        </p>
        <p>
            Enter Password:
            <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
        </p>
        <p>
            Enter Email ID:
            <asp:TextBox ID="txtemailid" runat="server"></asp:TextBox>
        </p>
        <p>
            Enter Mobile No:
            <asp:TextBox ID="txtmobileno" runat="server"></asp:TextBox>
        </p>
        <p>
            Select DOB:
            <asp:TextBox ID="txtdate" runat="server" TextMode="Date"></asp:TextBox>
        </p>
        <p>
            Select Gender:<asp:RadioButtonList ID="rbgender" runat="server" style="z-index: 1; left: 107px; top: 282px; position: absolute; height: 27px; width: 82px"
                 >
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
</p>
        <p>
            &nbsp;</p>
        <p>
            Select City: <asp:DropDownList ID="ddlcity" runat="server">
                <asp:ListItem>Mumbai</asp:ListItem>
                <asp:ListItem>Delhi</asp:ListItem>
                <asp:ListItem>Pune</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            Select Hobbies:
            <asp:ListBox ID="lsthobbies" runat="server" SelectionMode="Multiple">
                <asp:ListItem>Reading</asp:ListItem>
                <asp:ListItem>Writing</asp:ListItem>
                <asp:ListItem>Singing</asp:ListItem>
                <asp:ListItem>Dancing</asp:ListItem>
                <asp:ListItem>Cooking</asp:ListItem>
            </asp:ListBox>
        </p>
        <p>
            Select Security Question:
            <asp:DropDownList ID="ddlsecquestion" runat="server">
                <asp:ListItem>What is your Fav Food?</asp:ListItem>
                <asp:ListItem>What is Mother&#39;s name</asp:ListItem>
                <asp:ListItem>Your Birth City</asp:ListItem>
                <asp:ListItem>Your School Name</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            Enter Security Answer:
            <asp:TextBox ID="txtsecanswer" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click" Text="Register" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
