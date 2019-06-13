Public Class dangnhap
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If txttk.Text = "" Then
            thongbao.Text = "Bạn chưa nhập tài khoản"
        ElseIf txtmk.Text = "" Then
            thongbao.Text = "Bạn chưa nhập mật khẩu"
        Else
            thongbao.Text = "Đăng nhập thành công!"
        End If
    End Sub
End Class