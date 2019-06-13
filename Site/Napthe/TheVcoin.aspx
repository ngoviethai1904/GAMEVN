<%@ Page Title="Nạp thẻ>Thẻ Vcoin" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master Page/Frontend.Master" CodeBehind="TheVcoin.aspx.vb" Inherits="Site.thevcoin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style2">Nhập tài khoản&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txttaikhoan" runat="server"></asp:TextBox>
    </p>
     <p class="auto-style2">Nhập mã seri&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtseri" runat="server"></asp:TextBox>
    </p>
    <p class="auto-style2">Nhập mã thẻ cào&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtma1" runat="server"></asp:TextBox>
    </p>
    <p class="auto-style2">Nhập lại mã thẻ cào&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtma2" runat="server"></asp:TextBox>
    </p>
    
    <p style="margin-left: 120px">
        <asp:Button ID="btnnapthe" runat="server" Text="Nạp thẻ" Width="85px" />
    </p>
     <p style="margin-left: 120px">
         <asp:Label ID="txtthongbao" runat="server" Text="Thông báo"></asp:Label>
    </p>
</asp:Content>
