
Partial Class Milestone_2_Clear
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        Session.Abandon()

        Response.Redirect("home.aspx")
    End Sub
End Class

