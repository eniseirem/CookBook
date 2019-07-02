<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="Scripts_WebForms_LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            margin-left: 552px;
        }
        .auto-style4 {
            text-align: right;
            width: 509px;
            height: 46px;
        }
        .auto-style5 {
            height: 46px;
        }
        .auto-style6 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="auto-style6" style="color: #800080; font-size: 31px; font-weight: bold">Login&nbsp; </h1>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style4" style="font-size: medium; font-weight: bold; color: #800080">User Name:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtUserName" runat="server" Height="28px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="font-size: medium; color: #800080; font-weight: bold">Password:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtPassword" runat="server" Height="28px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="btnLogin" runat="server" BackColor="#CCCCFF" CssClass="auto-style3" Height="32px" OnClick="btnLogin_Click" Text="Login" Width="84px" />
        <asp:Button ID="Button1" runat="server" Height="34px" OnClick="Button1_Click" style="margin-top: 0px" Text="Register" Width="80px" />
    </form>
</body>
</html>
