
Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient
Partial Class Profile
    Inherits System.Web.UI.Page
    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As EventArgs)
        Dim con As New SqlConnection(ConfigurationManager.ConnectionStrings("userinfo").ConnectionString)
        Dim cmd As New SqlCommand("userinformation", con)
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.AddWithValue("@UserName", (Session("UserName")))
        cmd.Parameters.AddWithValue("@Registeration_No", 0)
        cmd.Parameters.AddWithValue("@FirstName", FName.Text)
        cmd.Parameters.AddWithValue("@LastName", LName.Text)
        cmd.Parameters.AddWithValue("@Date_of_Birth", DOB.Text)
        cmd.Parameters.AddWithValue("@ContactNumber", Contact.Text)
        cmd.Parameters.AddWithValue("@Gender", Gender.Text)
        cmd.Parameters.AddWithValue("@Designation", Designation.Text)
        cmd.Parameters.AddWithValue("@Department", Department.Text)
        cmd.Parameters.AddWithValue("@Salary", Salary.Text)
        cmd.Parameters.AddWithValue("@Date_of_Joining", DOJ.Text)
        cmd.Parameters.AddWithValue("@Address", Address.Text)
        cmd.Parameters.Add("@ERROR", SqlDbType.Char, 500)
        cmd.Parameters("@Error").Direction = ParameterDirection.Output
        con.Open()
        cmd.ExecuteNonQuery()
        con.Close()
        ClientScript.RegisterStartupScript(Page.[GetType](), "validation", "<script language='javascript'>alert('Registered')</script>")
    End Sub
    Protected Sub btnGoBack_Click(ByVal sender As Object, ByVal e As EventArgs)
        Response.Redirect("MenuPage.aspx")
    End Sub
    Protected Sub btnReset_Click(ByVal sender As Object, ByVal e As EventArgs)
        Response.Redirect("Profile.aspx")
    End Sub
End Class
