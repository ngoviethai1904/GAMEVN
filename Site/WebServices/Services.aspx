<%@ Page Title="Web services Demo" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master Page/Frontend.Master" CodeBehind="Services.aspx.vb" Inherits="Site.Services" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
        <Services>
            <asp:ServiceReference Path="~/WebServices/NameService.svc" />
            </Services>
    </asp:ScriptManagerProxy>
    <input id="MyWebsite" type="text" />
    <input id="SayHello" type="button" value="SayHello" onclick="helloWolrd();" />
    <input id="SayHelloPageMethod" type="button"
       value="Say Hello with a Page Method"
       onclick="helloWorldPageMethod();"/>
    <script type="text/javascript">
        function helloWolrd() {
            var myweb = document.getElementById('MyWebsite').value;
            NameService.helloWolrd(myweb, helloWolrdCallback);
        }
        function helloWolrdCallback(result) {
            alert(result);
        }
        function helloWorldPageMethod() {
            var yourName = document.getElementById('MyWebsite').value;
            PageMethod.helloWolrd(yourName, helloWolrdCallback);
        }
    </script>
</asp:Content>
