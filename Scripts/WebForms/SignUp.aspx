<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="Scripts_WebForms_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            margin-left: 2px;
        }
        .auto-style4 {
            margin-left: 1px;
        }
        .auto-style5 {
            text-align: right;
        }
        .auto-style6 {
            margin-left: 0px;
        }
        .auto-style10 {
            width: 346px;
            height: 46px;
        }
        .auto-style11 {
            text-align: left;
            height: 46px;
        }
        .auto-style12 {
            margin-left: 430px;
        }
    </style>
</head>
<body style="height: 437px">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tbody class="auto-style5">
                <tr>
                    <td class="auto-style10" style="color: #800080; font-size: medium; font-weight: bold;">E-mail :</td>
                    <td class="auto-style11"><asp:TextBox ID="txtemail" runat="server" style="text-align: right;" TextMode="Email" CssClass="auto-style4" Height="27px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtemail" ErrorMessage="Please Enter Your E-mail"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10" style="color: #800080; font-size: medium; font-weight: bold">Password :</td>
                    <td class="auto-style11"><asp:TextBox ID="txtpass" runat="server" CssClass="auto-style6" OnTextChanged="txtusername_TextChanged" Height="29px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpass" ErrorMessage="Please Enter a Password"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10" style="color: #800080; font-size: medium; font-weight: bold">User Name :</td>
                    <td class="auto-style11"><asp:TextBox ID="txtusername" runat="server" CssClass="auto-style3" Height="28px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtusername" ErrorMessage="Please Enter a Uniq User Name"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </tbody>
        </table>
        <asp:Button ID="btnSignUp" runat="server" CssClass="auto-style12" Height="37px" OnClick="btnSignUp_Click" Text="Sign Up" Width="89px" BackColor="#CCCCFF" />
        

        <asp:Button ID="Button1" runat="server" Height="37px" OnClick="Button1_Click1" Text="I'm a user." Width="91px" CausesValidation="false" />
       

    </form>
</body>
</html>
