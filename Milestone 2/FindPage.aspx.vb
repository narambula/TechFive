
Partial Class Milestone_2_FindPage
    Inherits System.Web.UI.Page

    Private Sub form1_Load(sender As Object, e As EventArgs) Handles form1.Load
        'Category Search for SearchFunction.aspx to CategorySearch.aspx
        Dim strCategory As String
        strCategory = Request.QueryString("Category")
        Session("sesCategory") = strCategory

        Dim strEmail As String
        strEmail = Request.QueryString("inputEmail")
        Session("sesEmail") = strEmail

        Dim strButton As String
        strButton = Request.QueryString("btnidsubmit")

        Select Case strButton
            Case "Category Search"
                Response.Redirect("CategorySearch.aspx")

        End Select

        'Brooke login.aspx to customer page


        Dim strLogin As String
        strLogin = Request.QueryString("LoginButton")
        Select Case strLogin
            Case "Sign In"
                Response.Redirect("CustomerHomePage.aspx")
        End Select

    End Sub

    Private Sub Findpage_Init(sender As Object, e As EventArgs) Handles Me.Init
        Me.EnableViewState = False
    End Sub

End Class

