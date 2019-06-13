<%@ Page Title="Đăng kí" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master Page/Frontend.Master" CodeBehind="dangki.aspx.vb" Inherits="Site.Login" %>
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
    <p class="auto-style2">Nhập mật khẩu&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtmk1" runat="server"></asp:TextBox>
    </p>
    <p class="auto-style2">Nhập lại mật khẩu&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtmk2" runat="server"></asp:TextBox>
    </p>
    <p class="auto-style2">Nhập địa chỉ email của bạn&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
    </p>
    <p style="margin-left: 120px">
        <asp:Button ID="btndangki" runat="server" Text="Đăng kí" Width="85px" />
    </p>
    <p style="margin-left: 40px">
        <asp:Label ID="txtthongbao" runat="server"></asp:Label>
    </p>
    <p style="margin-left: 40px">
         </t><p>Đã có tài khoản? <a href="dangnhap.aspx">Đăng nhập</a></p> 
    </p>
</asp:Content>
