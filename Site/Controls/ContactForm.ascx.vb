Imports System.IO
Public Class ContactForm

    Inherits System.Web.UI.UserControl

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If Page.IsValid Then
            Dim filename As String = Server.MapPath("~/App_Data/Text.txt")
            Dim MessageBody As String = File.ReadAllText(filename)
            MessageBody = MessageBody.Replace("##Name##", Name.Text)
            MessageBody = MessageBody.Replace("##Email##", EmailAddress.Text)
            MessageBody = MessageBody.Replace("##HomePhone##", PhoneHome.Text)
            MessageBody = MessageBody.Replace("##BusinessPhone##", PhoneBusiness.Text)
            MessageBody = MessageBody.Replace("##Comments##", Comments.Text)
            'Hiển thị Label
            Message.Visible = True
            'Hiển thị đoạn văn bản vừa thêm
            MessageSentPara.Visible = True
            'Gán nội dung từ Text.txt vào label
            Message.Text = MessageBody
            'ẩn bảng
            FormTable.Visible = False
        End If
    End Sub
End Class