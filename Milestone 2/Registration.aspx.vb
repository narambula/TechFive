
Imports System.Data.OleDb
Imports System.Data

Partial Class Milestone_2_Registration
    Inherits System.Web.UI.Page



    Private Sub btnRegsubmit_Click(sender As Object, e As EventArgs) Handles btnRegsubmit.Click
        Dim email, password, FirstName, LastName, StreetAddress, City, State, Zip As String
        email = newEmail.Text
        password = newPassword.Text
        FirstName = NewFirstName.Text
        LastName = NewLastName.Text
        StreetAddress = newAddress.Text
        City = newCity.Text
        State = newState.Text
        Zip = newZip.Text
        Response.Redirect("RegConfirmation.aspx?email=" & email & "&password=" & password & "&FirstName=" & FirstName & "&LastName=" & LastName & "&StreetAddress=" & StreetAddress & "&City=" & City & "&State=" & State & "&Zip=" & Zip)
    End Sub
End Class
