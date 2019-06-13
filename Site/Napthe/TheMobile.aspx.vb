Public Class TheMobile
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnnapthe_Click(sender As Object, e As EventArgs) Handles btnnapthe.Click
        If txttaikhoan.Text = "" Then
            txtthongbao.Text = "Tên tài khoản không được bỏ trống"
        ElseIf txtseri.Text = "" Then
            txtthongbao.Text = "Tên số seri không được bỏ trống"
        ElseIf txtma1.Text = "" Then
            txtthongbao.Text = "Nhập mã thẻ cào"
        ElseIf txtma2.Text = "" Then
            txtthongbao.Text = "Nhập lại mã số thẻ cào"
        Else
            txtthongbao.Text = " Nập thẻ thành công với tài khoản là  " + txttaikhoan.Text
        End If
    End Sub
End Class