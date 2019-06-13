<%@ Page Title="UpdatePanel Demo" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master Page/Frontend.Master" CodeBehind="UpdatePanel.aspx.vb" Inherits="Site.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">

        <ContentTemplate>

            <asp:Button ID="Button1" runat="server" Text="Button" />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

        </ContentTemplate>

    </asp:UpdatePanel>

    <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">

    </asp:Timer>

</asp:Content>

