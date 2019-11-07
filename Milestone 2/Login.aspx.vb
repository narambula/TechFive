Imports System.Data.OleDb
Imports System.Data

Partial Class Milestone_2_Test_index2
    Inherits System.Web.UI.Page

    Private Sub LoginButton_Click(sender As Object, e As EventArgs) Handles LoginButton.Click

        Dim userEmail, userPass As String
        userEmail = inputEmail.Text
        userPass = inputPassword.Text

        Dim connect As New OleDb.OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=F:\TechFive\TechFive_Project 11.4 GOOD\TechFive_Project\App_Data\FinalDatabase1.mdb")
        Dim command As OleDb.OleDbCommand = New OleDb.OleDbCommand("SELECT * FROM [UserID] WHERE email= '" & userEmail & "' AND password= '" & userPass & "' ", connect)
        connect.Open()

        Dim reader As OleDb.OleDbDataReader = command.ExecuteReader()
        If (reader.Read() = True) Then
            'Line 20 is where we will have the successful login directed to the 'Customer Homepage'
            Response.Redirect("CustomerHomepage.aspx")
        Else
            MessageLabel.Text = "INVALID USERNAME OR PASSWORD!!"
        End If
        connect.Close()

    End Sub


End Class
