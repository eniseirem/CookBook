<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RecipePage.aspx.cs" Inherits="RecipePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #txtTime {
            height: 21px;
            width: 170px;
            margin-left: 36px;
            margin-top: 0px;
        }
        #Text1 {
            margin-left: 36px;
        }
        #TextArea1 {
            top: 47px;
            left: 25px;
            height: 215px;
            width: 211px;
        }
        #TextArea2 {
            top: 47px;
            left: 25px;
            height: 215px;
            width: 211px;
            margin-left: 154px;
        }
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body style="height: 795px">
    <form id="form1" runat="server">
        <h1 class="auto-style1" style="font-size: 31px; color: #800080">
            &nbsp;</h1>
        <h1 class="auto-style1" style="font-size: 31px; color: #800080">
            Add and Share Your Recipe<br />
            </h1>
        <p style="font-family: Arial, Helvetica, sans-serif; font-style: italic; font-variant: inherit; color: #800080; font-size: 30px">
            <asp:Label ID="Label4" runat="server" Font-Size="16pt" Text="Write the name of your recipe and fill other informations down below"></asp:Label>
        </p>
        <p style="font-family: Arial, Helvetica, sans-serif; font-style: italic; font-variant: inherit; color: #800080; font-size: 15px; height: 41px; width: 1179px; margin-left: 28px;">
            <asp:Label ID="label1" runat="server" Font-Size="12pt" Text="Cooking Time:"></asp:Label>
            <asp:TextBox ID="txtTime" runat="server" Height="19px" style="margin-left: 11px" Width="172px" TextMode="Number"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="label2" runat="server" Font-Size="12pt" Text="Portion:"></asp:Label>
&nbsp;<asp:TextBox ID="txtPortion" runat="server" Height="19px" style="margin-left: 11px" Width="172px" TextMode="Number"></asp:TextBox>
&nbsp;&nbsp;
            <asp:Label ID="label3" runat="server" Font-Size="12pt" Text="Category of Meal:"></asp:Label>
&nbsp;<asp:DropDownList ID="listcategory" runat="server" style="margin-left: 11px; height: 22px;">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Main Course</asp:ListItem>
                <asp:ListItem>Salad</asp:ListItem>
                <asp:ListItem>Appetizers</asp:ListItem>
                <asp:ListItem>Soups</asp:ListItem>
                <asp:ListItem>Side Dishes</asp:ListItem>
                <asp:ListItem>Breads</asp:ListItem>
                <asp:ListItem>Pasta</asp:ListItem>
                <asp:ListItem>Dessert</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Font-Size="12pt" Text="Name:"></asp:Label>
            <asp:TextBox ID="txtName" runat="server" Height="19px" style="margin-left: 11px" Width="172px"></asp:TextBox>
        </p>
        <p aria-orientation="vertical" style="font-family: Arial, Helvetica, sans-serif; font-style: italic; font-variant: inherit; color: #800080; font-size: 22px; height: 35px; width: 866px; margin-left: 28px;">
&nbsp;<asp:Label ID="Label7" runat="server" Font-Size="15pt" Text="Ingredients:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label8" runat="server" Font-Size="15pt" Text="Recipe:"></asp:Label>
        </p>
        <p aria-orientation="vertical" style="font-family: Arial, Helvetica, sans-serif; font-style: italic; font-variant: inherit; color: #800080; font-size: 22px; height: 478px; width: 1123px; margin-left: 28px">
            <asp:TextBox ID="txting" runat="server" Height="273px" TextMode="MultiLine" Width="339px" EnableViewState="False"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtrec" runat="server" Height="275px" style="margin-left: 135px" TextMode="MultiLine" Width="341px" EnableViewState="False"></asp:TextBox>
            <asp:Button ID="btnSaveRecipe" runat="server" OnClick="btnSaveRecipe_Click" style="margin-left: 797px; margin-top: 38px" Text="Save" Width="93px" Height="35px" />
            <asp:Button ID="Button1" runat="server" Height="36px" OnClick="Button1_Click" Text="Cancel/Back" Width="97px" />
        </p>
    </form>
</body>
</html>
