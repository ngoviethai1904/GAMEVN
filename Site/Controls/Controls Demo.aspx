<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Controls Demo.aspx.vb" Inherits="Site.Controls_Demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href= "../Styles/style.css" rel="stylesheet" type="text/css"> </link>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Your Name:  "></asp:Label>
        <asp:TextBox ID="name" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Submit infor" CssClass="button"/>
    
    </div>
        <asp:Label ID="Result" runat="server"></asp:Label>
    </form>
</body>
</html>

