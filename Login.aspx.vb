Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As EventArgs)
        Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("dbconnection").ConnectionString)
        con.Open()
        Dim cmd As New SqlCommand("select * from LogInfo where UserName =@username and Password=@password", con)
        cmd.Parameters.AddWithValue("@username", usn.Text)
        cmd.Parameters.AddWithValue("@password", pwd.Text)
        Dim da As New SqlDataAdapter(cmd)
        Dim dt As New DataTable()
        Session("UserName") = usn.Text
        da.Fill(dt)
        If dt.Rows.Count > 0 Then
            Response.Redirect("MenuPage.aspx")
        Else
            ClientScript.RegisterStartupScript(Page.[GetType](), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>")
        End If
    End Sub

End Class