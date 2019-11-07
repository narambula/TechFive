
Imports System.Data.OleDb
Imports System.Configuration
Imports System.Data
Partial Class Default2
    Inherits System.Web.UI.Page
    Dim con As New OleDb.OleDbConnection
    Dim constr As String = System.Configuration.ConfigurationManager.ConnectionStrings("ConnectionString_Reg").ConnectionString
    Dim i As Integer
    Dim cmd As New OleDbCommand
    Dim Fname, LName, nPassword, nEmail As String
    Private Sub form1_Load(sender As Object, e As EventArgs) Handles form1.Load
        If Not IsPostBack Then
            con = New OleDb.OleDbConnection
            con.ConnectionString = constr
            con.Open()
            Fname = Request.QueryString("x")
            LName = Request.QueryString("y")
            nEmail = Request.QueryString("z")
            nPassword = Request.QueryString("d")

            cmd.Connection = con
            cmd.CommandText = "INSERT INTO [User] ([UserID], [FirstName], [LastName], [Password]) VALUES ('" & nEmail & "', '" & Fname & "','" & LName & "','" & nPassword & "')"

            i = cmd.ExecuteNonQuery()
            If Not i = 0 Then
                Label1.Visible = True
            End If
        End If

    End Sub
End Class
