<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master Page/Frontend.Master" CodeBehind="napthegame.aspx.vb" Inherits="Site.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style3">Nhập mã Seri thẻ game&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="maseri" runat="server"></asp:TextBox>
        </p>
    <p class="auto-style3">Nhập mã thẻ cào game&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:TextBox ID="mathegame" runat="server"></asp:TextBox>
    </p>
    <p class="auto-style3">Nhập lại để xác nhận mã thẻ cào&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="maxacnhan" runat="server"></asp:TextBox>
    </p>
    <p style="margin-left: 120px">
        <asp:Button ID="xacnhanthe" runat="server" Text="Nạp thẻ" Width="85px" />
    </p>
</asp:Content>
