Imports System.Data
Imports System.Data.OleDb
Partial Class RegConfirmation
    Inherits System.Web.UI.Page

    Private Sub form1_Load(sender As Object, e As EventArgs) Handles form1.Load
        Dim id, Pass, FirstName, LastName, Address, City, State, Zip As String
        id = Request.QueryString("email")
        Pass = Request.QueryString("password")
        FirstName = Request.QueryString("FirstName")
        LastName = Request.QueryString("LastName")
        Address = Request.QueryString("StreetAddress")
        City = Request.QueryString("City")
        State = Request.QueryString("State")
        Zip = Request.QueryString("Zip")

        Dim str, str1 As String
        str = "INSERT INTO UserID([email],[password], [FirstName], [LastName], [StreetAddress], [City], [State], [Zip]) values (@email,@password,@FirstName,@LastName,@StreetAddress,@City,@State,@zip)"
        str1 = " SELECT DISTINCT [email] FROM [UserID] Where email ='" & id & "'"

        Dim con As OleDbConnection
        Dim ad As OleDbDataAdapter
        Dim ds As New DataSet
        Dim cmdinsert, cmdselect As OleDbCommand
        Dim i As Integer

        con = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0; Data source=F:\TechFive\TechFive_Project 11.4 GOOD\TechFive_Project\App_Data\FinalDatabase1.mdb")
        cmdinsert = New OleDbCommand(str, con)
        cmdselect = New OleDbCommand(str1, con)
        cmdinsert.Parameters.Add("@email", OleDbType.Char, 255).Value = id
        cmdinsert.Parameters.Add("@password", OleDbType.Char, 255).Value = Pass
        cmdinsert.Parameters.Add("@FirstName", OleDbType.Char, 255).Value = FirstName
        cmdinsert.Parameters.Add("@LastName", OleDbType.Char, 255).Value = LastName
        cmdinsert.Parameters.Add("@StreetAddress", OleDbType.Char, 255).Value = Address
        cmdinsert.Parameters.Add("@City", OleDbType.Char, 255).Value = City
        cmdinsert.Parameters.Add("@State", OleDbType.Char, 255).Value = State
        cmdinsert.Parameters.Add("@Zip", OleDbType.Char, 255).Value = Zip

        con.Open()
        ad = New OleDbDataAdapter(str1, con)
        ad.Fill(ds, "Test")
        'the Pseudo name "test" is optional. 
        'If pseudoname is not used, use table index instead for ds.tables(0)

        If ds.Tables(0).Rows.Count > 0 Then
            Try
                cmdselect.ExecuteReader()
                For i = 0 To ds.Tables("Test").Rows.Count - 1 'This used table pseudo name.
                    Response.Write(ds.Tables(0).Rows(i).Item(0).ToString) 'This used table index.
                    Response.Write("<br></br>")
                    'Response.Write(ds.Tables(0).Rows(i).Item(1).ToString)
                    'Explain why Item(1) does not work. There is a modification needed for the SELECT statement
                    'Response.Write("<br></br>")
                    Response.Write("Email has already existed in the database.")
                Next
            Catch ex As Exception
                Response.Write(ex.ToString)
            End Try
        Else
            Response.Write("Email does not exist in the database.")
            Response.Write("<br></br>")
            cmdinsert.ExecuteNonQuery()
            Response.Write("Email is inserted into the database")
            Response.Redirect("Login.aspx")
        End If

        ad.Dispose()
        con.Close()

    End Sub
End Class
