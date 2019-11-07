
Imports System.Data
Imports System.Data.OleDb
Partial Class Milestone_1_index
    Inherits System.Web.UI.Page
    Private Sub form1_Load(sender As Object, e As EventArgs) Handles form1.Load
        lblEmail.Text = Session("sesEmail").ToString
    End Sub
End Class
