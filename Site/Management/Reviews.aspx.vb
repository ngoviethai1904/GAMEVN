Public Class Reviews
    Inherits System.Web.UI.Page

    Protected Function GetBooleanText(booleanValue As Object) As String
        Dim authorized As Boolean = CType(booleanValue, Boolean)
        If authorized Then
            Return "Yes"
        Else
            Return "No"
        End If

    End Function

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub
End Class