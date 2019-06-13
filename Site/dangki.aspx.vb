Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btndangki_Click(sender As Object, e As EventArgs) Handles btndangki.Click
        If txttaikhoan.Text = "" Then
            txtthongbao.Text = "Tên tài khoản không được bỏ trống"
        ElseIf txtmk1.Text = "" Then
            txtthongbao.Text = "Bạn chưa nhập mật khẩu"
        ElseIf txtmk2.Text = "" Then
            txtthongbao.Text = "Bạn chưa nhập lại mật khẩu"
        ElseIf txtemail.Text = "" Then
            txtthongbao.Text = "Bạn hãy nhập Email"
        Else
            txtthongbao.Text = "Bạn đã đăng kí thành công với tên tài khoản là " + txttaikhoan.Text
        End If
    End Sub
End Class