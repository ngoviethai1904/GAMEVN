<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="ContactForm.ascx.vb" Inherits="Site.ContactForm" %>
<style type="text/css">
    .auto-style1 {
        width: auto;
        height:auto;
        color:#800080;
    }
    .auto-style2 {
        width: auto;
        height: auto;
    }
    .auto-style25 {
        width: auto;
        height: auto;
    }
    .auto-style33 {
        height: auto;
    }
    .auto-style34 {
        width: auto;
    }
    .auto-style35 {
        height: auto;
        width: auto;
    }
    .auto-style36 {
        width: 370px;
    }
    .auto-style37 {
        height: auto;
        width: 370px;
    }
</style>

<script type="text/javascript">
    $(function () {
        $('form').bind('submit', function () {
            if (Page_IsValid) {
                $('#TableWrapper').slideUp(3000);
            }
        });
    });
    function validatePhoneNumbers(sources, args)
    {
        var PhoneHome = document.getElementById('<%= PhoneHome.ClientID%>');
        var PhoneBusiness = document.getElementById('<%= PhoneBusiness.ClientID%>');
        if (PhoneHome.value != ' ' || PhoneBusiness.value != ' ')
        {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false
        }
    }
</script>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">

<ContentTemplate>

<table class="auto-style1" runat="server" id="FormTable">

     <tr>
        <td colspan="2">Nhập thông tin cá nhân của bạn</td>
    </tr>

     <tr>
        <td class="auto-style2">Tên</td>
        <td class="auto-style36">
             <asp:TextBox ID="Name" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>

    <tr>
        <td class="auto-style25">Địa chỉ Email</td>
        <td class="auto-style37">
             <asp:TextBox ID="EmailAddress" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        </td>
        <td class="auto-style33"></td>
    </tr>

    <tr>
        <td class="auto-style25"><p style="width: 249px">Xác thực tài khoản email</p></td>
        <td class="auto-style37">
           <asp:TextBox ID="ConfirmEmailAddress" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        </td>
        <td class="auto-style33"></td>
    </tr>

    <tr>
        <td class="auto-style2">Số điện thoại cơ quan</td>
        <td class="auto-style36">
            <asp:TextBox ID="PhoneBusiness" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>

    <tr>
        <td class="auto-style2">Số điện thoại cá nhân</td>
        <td class="auto-style36">
            <asp:TextBox ID="PhoneHome" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>

    <tr>
        <td class="auto-style2">Chú thích</td>
        <td class="auto-style36">
            
            <asp:TextBox ID="Comments" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ForeColor="Black" style="margin-left: 0px" TextMode="MultiLine" Width="179px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>

</table>

    <asp:Label ID="Message" runat="server" Text="Message Text" Visible="false"/>

    <p runat="server" id="MessageSentPara" visible="false">
        Cảm ơn thông tin của bạn. Chúng tôi sẽ liên hệ lại bạn nếu cần thiết.
    </p>

    </ContentTemplate>
 
</asp:UpdatePanel>

<asp:UpdateProgress ID="UpdateProgress1" runat="server">

     <ProgressTemplate>

         <div class="AJAX">
                PLEASE WAIT
         </div>

          </ProgressTemplate>

</asp:UpdateProgress>

<asp:Button ID="Button1" runat="server" Text="Send" />

<p>
    &nbsp;</p>


