
Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient
Partial Class SignUp
    Inherits System.Web.UI.Page
    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As EventArgs)
        Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("dbconnection").ConnectionString)
        Dim cmd As New SqlCommand("signupinfo", con)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.AddWithValue("@UserName", UserName.Text)
        cmd.Parameters.AddWithValue("@Password", Password.Text)
        cmd.Parameters.AddWithValue("@Email", Email.Text)
        cmd.Parameters.AddWithValue("@FirstName", FName.Text)
        cmd.Parameters.AddWithValue("@LastName", LName.Text)
        cmd.Parameters.Add("@ERROR", SqlDbType.Char, 500)
        cmd.Parameters("@Error").Direction = ParameterDirection.Output
        con.Open()
        cmd.ExecuteNonQuery()
        con.Close()
        ClientScript.RegisterStartupScript(Page.[GetType](), "validation", "<script language='javascript'>alert('Registered')</script>")
    End Sub
    Protected Sub btnGoBack_Click(ByVal sender As Object, ByVal e As EventArgs)
        Response.Redirect("Login.aspx")
    End Sub
    Protected Sub btnReset_Click(ByVal sender As Object, ByVal e As EventArgs)
        Response.Redirect("SignUp.aspx")
    End Sub
End Class
