<%@ Page Title="Đăng nhập" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master Page/Frontend.Master" CodeBehind="dangnhap.aspx.vb" Inherits="Site.dangnhap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Tài khoản"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txttk" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label2" runat="server" Text="Mật khẩu"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtmk" runat="server"></asp:TextBox>
</p>
<p style="margin-left: 80px">
    <asp:Button ID="Button1" runat="server" Text="Đăng nhập" />
</p>
<p style="margin-left: 80px">
    <asp:Label ID="thongbao" runat="server"></asp:Label>
</p>
    <p style="margin-left: 50px">
        Nếu bạn chưa có tài khoản <a href="dangki.aspx"> Đăng kí</a>&nbsp;</p>
</asp:Content>
