<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Containers.aspx.vb" Inherits="Site.Containers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Show Panel" AutoPostBack="True" />
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            I am visible now</asp:Panel>
    </div>
        
    </form>
</body>
</html>
