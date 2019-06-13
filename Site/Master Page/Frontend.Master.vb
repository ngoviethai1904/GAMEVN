Public Class Site1
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then

            Dim selectedTheme As String = Page.Theme
            Dim preferredTheme As HttpCookie = Request.Cookies.Get("PreferredTheme")
            If preferredTheme IsNot Nothing Then
                selectedTheme = preferredTheme.Value
            End If
            If Not String.IsNullOrEmpty(selectedTheme) Then
                Dim item As ListItem = DropDownList1.Items.FindByValue(selectedTheme)
                If item IsNot Nothing Then
                    item.Selected = True
                End If
            End If
        End If
        Label1.Text = System.DateTime.Now.ToString()
        'Select Case Page.Theme.ToLower()
        '    Case "DarkGrey"
        '        Menu1.Visible = False
        '        TreeView1.Visible = False
        '    Case Else
        '        Menu1.Visible = True
        '        TreeView1.Visible = True
        'End Select

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        Dim preferredTheme As HttpCookie = New HttpCookie("PreferredTheme")
        preferredTheme.Expires = DateTime.Now.AddMonths(3)
        preferredTheme.Value = DropDownList1.SelectedValue()
        Response.Cookies.Add(preferredTheme)
        Response.Redirect(Request.Url.ToString())
    End Sub

    Protected Sub Menu1_MenuItemClick(sender As Object, e As MenuEventArgs) Handles Menu1.MenuItemClick

    End Sub
End Class