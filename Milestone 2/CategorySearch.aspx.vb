Imports System.Data.OleDb
Imports System.Data
Partial Class Milestone_2_CategorySearch
    Inherits System.Web.UI.Page
    Private Sub CategorySearch_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim con As OleDbConnection
        Dim ad As OleDbDataAdapter
        Dim ds As New DataSet
        Dim strCategory As String
        strCategory = Session("sesCategory")
        Response.Write(strCategory)
        Response.Write("<br>")
        Dim connstr As String = ("Provider=Microsoft.Jet.OLEDB.4.0; Data source=F:\TechFive\TechFive_Project 11.4 GOOD\TechFive_Project\App_Data\FinalDatabase1.mdb")
        con = New OleDbConnection(connstr)
        ad = New OleDbDataAdapter("SELECT [Product_ID], [P_Name], [TypeDemographic], [TypeStyle], [Price], [Picture] FROM Product where TypeDemographic ='" & strCategory & "'", con)
        Try
            con.Open()
            Response.Write("database is open")
            ad.Fill(ds)
            tblGrid.Visible = True
            GridView_Data.DataSource = ds
            GridView_Data.DataBind()
            con.Close()
            Response.Write("database is close")
        Catch
            con.Close()
            Response.Write("database is close")
        End Try
    End Sub

    Private Sub GridView_Data_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView_Data.SelectedIndexChanged

    End Sub
End Class
