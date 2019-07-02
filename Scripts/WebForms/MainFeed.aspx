<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MainFeed.aspx.cs" Inherits="Scripts_WebForms_Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Get Back to MainPage</asp:LinkButton>
    <div style="height: 414px">
    
        <p style="font-family: Arial, Helvetica, sans-serif; font-style: italic; font-variant: inherit; color: #800080; font-size: 30px; position: relative; top: -15px; left: 245px; width: 176px; margin-top: 0px;">
            COOKBOOK</p>
        <asp:TextBox ID="txtsearchname" runat="server" Font-Italic="True" OnTextChanged="txtsearchname_TextChanged" Width="103px">search by name</asp:TextBox>
        <asp:Button ID="BtnS" runat="server" OnClick="Button1_Click" Text="Search" />
        <asp:DropDownList ID="listcategory" runat="server" style="margin-left: 11px; height: 22px;" AutoPostBack="True" OnSelectedIndexChanged="listcategory_SelectedIndexChanged">
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
        <br />
        <asp:Label ID="lblsearch" runat="server" Font-Bold="True" ForeColor="#CC0066" Text="No Match :(" Visible="False"></asp:Label>
        <br />
    <div aria-atomic="False" aria-orientation="vertical" style="height: 440px; width: 809px">
    
        <asp:Label ID="Label1" runat="server" Text="Category of Meal" Visible="False"></asp:Label>
        <asp:TextBox ID="txtmeal" runat="server" ReadOnly="True" style="margin-left: 74px" Visible="False" Width="87px"></asp:TextBox>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Cooking Time" Visible="False"></asp:Label>
        <asp:TextBox ID="txttime" runat="server" style="margin-left: 93px" TextMode="Number" Width="86px" ReadOnly="True" Visible="False"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Number of Portions" Visible="False"></asp:Label>
        <asp:TextBox ID="txtport" runat="server" style="margin-left: 58px" TextMode="Number" Width="93px" ReadOnly="True" Visible="False"></asp:TextBox>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <asp:TextBox ID="txtingred" runat="server" Height="128px" style="margin-left: 12px; margin-top: 0px" TextMode="MultiLine" Width="171px" ReadOnly="True" Visible="False"></asp:TextBox>
        <asp:TextBox ID="txtrecipe" runat="server" Height="135px" style="margin-left: 48px" TextMode="MultiLine" Width="433px" ReadOnly="True" Visible="False"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        <asp:ListBox ID="ListBox1" runat="server" Width="577px" AutoPostBack="True" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" Visible="False">
        </asp:ListBox>
        <br />
        <br />
    
    </div>
    
    </div>
    </form>
</body>
</html>
