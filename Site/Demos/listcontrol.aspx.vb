﻿Public Class listcontrol
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Label1.Text = "Trong DropDownList bạn chọn: " + DropDownList1.SelectedValue + "<br />"
        For Each item As ListItem In CheckBoxList1.Items

            If item.Selected = True Then
                Label1.Text += " Trong CkecboxList bạn chọn: " + item.Value + "<br />"
            End If
        Next
    End Sub
End Class