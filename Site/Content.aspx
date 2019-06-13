<%@ Page Title="GAME" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master Page/Frontend.Master" CodeBehind="Content.aspx.vb" Inherits="Site.aspx" %>

<%@ Register Src="~/Controls/ContactForm.ascx" TagPrefix="uc1" TagName="ContactForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <h1>GAME VIETNAM</h1>
    <h3>GAMING  HOUSE</h3>
     <a href="Management/Default.aspx">DataGame</a>
    </br>
    <a href="Management/AddEditReview.aspx">Add</a>
    </br>
    <a href="Management/Genres.aspx">Details</a>
    </br>
    <a href="Management/Reviews.aspx">List</a>
    <h4>Trang Game cập nhật thể loại Game mới nhất hiện nay!</h4>
    <p>Cùng trải nghiệm các thể loại Game thú vị!</p>
    <p>Đến trang <a href="dangnhap.aspx">Đăng nhập tài khoản Game!</a></p>
    <p>Nếu bạn chưa có tài khoản hãy đăng kí <a href="dangki.aspx">Đăng ký tài khoản Game!</a></p>

   <%-- <img src="https://i.ytimg.com/vi/YJKQJoOx3tE/maxresdefault.jpg" width="500px" height="250px" />--%>

    <img src="Imagesgame/INSA.gif" width="600px" height="250px"/>

    <uc1:ContactForm runat="server" ID="ContactForm" />
    
  
</asp:Content>
