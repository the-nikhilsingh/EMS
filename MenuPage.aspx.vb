
Partial Class MenuPage
    Inherits System.Web.UI.Page
    Protected Sub btnRegister_Click(ByVal sender As Object, ByVal e As EventArgs)
        Response.Redirect("Profile.aspx")
    End Sub
    Protected Sub btnReport_Click(ByVal sender As Object, ByVal e As EventArgs)
        Response.Redirect("Report.aspx")
    End Sub

    Protected Sub btnLogout(ByVal sender As Object, ByVal e As EventArgs)
        FormsAuthentication.SignOut()
        Session.Abandon()
        Response.Redirect("Login.aspx")
    End Sub
End Class
