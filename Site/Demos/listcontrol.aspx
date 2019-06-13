<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="listcontrol.aspx.vb" Inherits="Site.listcontrol" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>C#</asp:ListItem>
            <asp:ListItem>Visual Basic</asp:ListItem>
            <asp:ListItem>CSS</asp:ListItem>
        </asp:DropDownList>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
            <asp:ListItem>C#</asp:ListItem>
            <asp:ListItem>Visual Basic</asp:ListItem>
            <asp:ListItem>CSS</asp:ListItem>
        </asp:CheckBoxList>
    </div>
        <asp:Button ID="Button1" runat="server" Height="28px" Text="Button" Width="57px" />
        </br>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
