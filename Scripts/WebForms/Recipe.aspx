<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Recipe.aspx.cs" Inherits="Recipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div aria-atomic="False" aria-orientation="vertical" style="height: 440px; width: 809px">
    
        <asp:Label ID="Label1" runat="server" Text="Category of Meal"></asp:Label>
        <asp:DropDownList ID="catofmeal" runat="server" OnSelectedIndexChanged="catofmeal_SelectedIndexChanged" style="margin-left: 70px" Width="101px">
            <asp:ListItem>Desert</asp:ListItem>
            <asp:ListItem>Main Course</asp:ListItem>
            <asp:ListItem>Salad</asp:ListItem>
            <asp:ListItem>Soups</asp:ListItem>
            <asp:ListItem>Snacks</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Cooking Time"></asp:Label>
        <asp:TextBox ID="txttime" runat="server" style="margin-left: 93px" TextMode="Number" Width="88px"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Number of Portions"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 58px" TextMode="Number" Width="93px"></asp:TextBox>
        <asp:CheckBoxList ID="checkType" runat="server" Height="54px" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" style="margin-left: 0px; margin-top: 0px; margin-bottom: 0px" Width="104px">
            <asp:ListItem>Vegan</asp:ListItem>
            <asp:ListItem>Vegetarian</asp:ListItem>
            <asp:ListItem>Omnivore</asp:ListItem>
        </asp:CheckBoxList>
        Ingredients :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Recipe :<br />
        <asp:TextBox ID="txtingred" runat="server" Height="128px" style="margin-left: 12px; margin-top: 0px" TextMode="MultiLine" Width="171px"></asp:TextBox>
        <asp:TextBox ID="txtrecipe" runat="server" Height="135px" style="margin-left: 48px" TextMode="MultiLine" Width="433px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnsave" runat="server" OnClick="Button1_Click" style="margin-left: 504px" Text="Save" Width="66px" />
        <asp:Button ID="btnpublish" runat="server" style="margin-left: 40px" Text="Publish" Width="59px" />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
