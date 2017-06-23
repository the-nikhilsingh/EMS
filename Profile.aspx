<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Profile.aspx.vb" Inherits="Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>EMS Profile</title>
        <style type = "text/css">
        @import url(http://fonts.googleapis.com/css?family=Open+Sans);
        .btn { display: inline-block; *display: inline; *zoom: 1; padding: 4px 10px 4px; margin-bottom: 0; font-size: 13px; line-height: 18px; color: #333333; text-align: center;text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75); vertical-align: middle; background-color: #f5f5f5; background-image: -moz-linear-gradient(top, #ffffff, #e6e6e6); background-image: -ms-linear-gradient(top, #ffffff, #e6e6e6); background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffffff), to(#e6e6e6)); background-image: -webkit-linear-gradient(top, #ffffff, #e6e6e6); background-image: -o-linear-gradient(top, #ffffff, #e6e6e6); background-image: linear-gradient(top, #ffffff, #e6e6e6); background-repeat: repeat-x; filter: progid:dximagetransform.microsoft.gradient(startColorstr=#ffffff, endColorstr=#e6e6e6, GradientType=0); border-color: #e6e6e6 #e6e6e6 #e6e6e6; border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25); border: 1px solid #e6e6e6; -webkit-border-radius: 4px; -moz-border-radius: 4px; border-radius: 4px; -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05); -moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05); box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05); cursor: pointer; *margin-left: .3em; }
        .btn:hover, .btn:active, .btn.active, .btn.disabled, .btn[disabled] { background-color: #e6e6e6; }
        .btn-large { padding: 9px 14px; font-size: 15px; line-height: normal; -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px; }
        .btn:hover { color: #333333; text-decoration: none; background-color: #e6e6e6; background-position: 0 -15px; -webkit-transition: background-position 0.1s linear; -moz-transition: background-position 0.1s linear; -ms-transition: background-position 0.1s linear; -o-transition: background-position 0.1s linear; transition: background-position 0.1s linear; }
        .btn-primary, .btn-primary:hover { text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25); color: #ffffff; }
        .btn-primary.active { color: rgba(255, 255, 255, 0.75); }
        .btn-primary { background-color: #4a77d4; background-image: -moz-linear-gradient(top, #6eb6de, #4a77d4); background-image: -ms-linear-gradient(top, #6eb6de, #4a77d4); background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#6eb6de), to(#4a77d4)); background-image: -webkit-linear-gradient(top, #6eb6de, #4a77d4); background-image: -o-linear-gradient(top, #6eb6de, #4a77d4); background-image: linear-gradient(top, #6eb6de, #4a77d4); background-repeat: repeat-x; filter: progid:dximagetransform.microsoft.gradient(startColorstr=#6eb6de, endColorstr=#4a77d4, GradientType=0);  border: 1px solid #3762bc; text-shadow: 1px 1px 1px rgba(0,0,0,0.4); box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.5); }
        .btn-primary:hover, .btn-primary:active, .btn-primary.active, .btn-primary.disabled, .btn-primary[disabled] { filter: none; background-color: #4a77d4; }
        .btn-block { width: 100%; display:block; }

        * { -webkit-box-sizing:border-box; -moz-box-sizing:border-box; -ms-box-sizing:border-box; -o-box-sizing:border-box; box-sizing:border-box; }

        html { width: 100%; height:100%; overflow-x:hidden; overflow-y:scroll }

        body {
           width: 100%;
           height:100%;
           font-family: 'Open Sans', sans-serif;
           color:black;
        }
        .profile {
           position: absolute;
           top: 25%;
           left: 50%;
           margin: -150px 0 0 -150px;
           width:300px;
           height:300px;
        }
        .profile h1 { color: #000; text-shadow: 0 0 10px rgba(0,0,0,0.3); letter-spacing:1px; text-align:center; }

        input{
           width: 100%;
           margin-bottom: 10px;
           background: rgba(0,0,0,0);
           border: none;
           outline: none;
           padding: 10px;
           font-size: 13px;
           color: rgba(0,0,0,0.8);
           text-shadow: 1px 1px 1px rgba(0,0,0,0.3);
           border: 1px solid rgba(0,0,0,0.3);
           border-radius: 4px;
           box-shadow: inset 0 -5px 45px rgba(100,100,100,0.2), 0 1px 1px rgba(255,255,255,0.2);
           -webkit-transition: box-shadow .5s ease;
           -moz-transition: box-shadow .5s ease;
           -o-transition: box-shadow .5s ease;
           -ms-transition: box-shadow .5s ease;
           transition: box-shadow .5s ease;
        }
        input:focus { box-shadow: inset 0 -5px 45px rgba(100,100,100,0.4), 0 1px 1px rgba(255,255,255,0.2); }
        .logo {
                float: left;
                position: absolute;
                left: 0px;
                top: 0px;
            }
      </style>
    </head>

    <body>
        <img class="logo" src="C:\Users\singh\Documents\Visual Studio 2017\WebSites\WebSite\Images\Tata Steel.png" alt="Sample Photo" />
        <div class="profile">
            <form id="form1" runat="server">
            <h1>Profile</h1>
                First Name<asp:TextBox ID="FName" runat="server" placeholder="Enter your First Name"></asp:TextBox>
                <asp:RequiredFieldValidator Display="Dynamic" ID="vFName" runat="server" ControlToValidate="FName" ErrorMessage="Please enter First Name" ForeColor="Red"></asp:RequiredFieldValidator><br />
                <asp:RegularExpressionValidator Display="Dynamic" ID="vFName2" runat="server" ErrorMessage="Enter only Alphabets" ValidationExpression="^[a-zA-Z]*$" ForeColor="Red" ControlToValidate="FName"/>
                Last Name<asp:TextBox ID="LName" runat="server" placeholder="Enter your Last Name"></asp:TextBox>
                <asp:RequiredFieldValidator Display="Dynamic" ID="vLName" runat="server" ControlToValidate="LName" ErrorMessage="Please enter Last Name" ForeColor="Red"></asp:RequiredFieldValidator><br />
                <asp:RegularExpressionValidator Display="Dynamic" ID="LName2" runat="server" ErrorMessage="Enter only Alphabets" ValidationExpression="^[a-zA-Z]*$" ForeColor="Red" ControlToValidate="LName"/>
                Date of Birth<asp:TextBox type="date" ID="DOB" runat="server" placeholder="Date Of Birth"></asp:TextBox>
                <asp:RequiredFieldValidator Display="Dynamic" ID="vDOB" runat="server" ControlToValidate="DOB" ErrorMessage="Please enter Date of Birth" ForeColor="Red"></asp:RequiredFieldValidator><br />
                Contact Number<asp:TextBox ID="Contact" runat="server" placeholder="Enter your Phone Number"></asp:TextBox>
                <asp:RequiredFieldValidator Display="Dynamic" ID="vContact" runat="server" ControlToValidate="Contact" ErrorMessage="Please enter Contact Number" ForeColor="Red"></asp:RequiredFieldValidator><br />
                <asp:RegularExpressionValidator Display="Dynamic" ID="vContact2" runat="server" ErrorMessage="Enter only Numbers" ValidationExpression="^[0-9]*$" ForeColor="Red" ControlToValidate="Contact"/>
                Gender<br /><asp:DropDownList ID="Gender" runat="server" Width="300px" Height="35px" style="border-radius: 4px; background: rgba(0,0,0,0.3); outline: none; padding: 10px; font-size: 13px; color: #fff;" >
                    <asp:ListItem Text="Select Gender" Value="-"></asp:ListItem>
                    <asp:ListItem Text="Male" Value="M"></asp:ListItem>
                    <asp:ListItem Text="Female" Value="F"></asp:ListItem>
                </asp:DropDownList>
                <br /><br />Designation<asp:TextBox ID="Designation" runat="server" placeholder="Enter your Designation"></asp:TextBox>
                <asp:RequiredFieldValidator Display="Dynamic" ID="vDesignation" runat="server" ControlToValidate="Designation" ErrorMessage="Please enter Designation" ForeColor="Red"></asp:RequiredFieldValidator><br />
                Department<asp:TextBox ID="Department" runat="server" placeholder="Enter your Department"></asp:TextBox>
                <asp:RequiredFieldValidator Display="Dynamic" ID="vDepartment" runat="server" ControlToValidate="Department" ErrorMessage="Please enter Department" ForeColor="Red"></asp:RequiredFieldValidator><br />
                Salary<asp:TextBox ID="Salary" runat="server" placeholder="Enter your Salary in ₹"></asp:TextBox>
                <asp:RequiredFieldValidator Display="Dynamic" ID="vSalary" runat="server" ControlToValidate="Salary" ErrorMessage="Please enter Salary" ForeColor="Red"></asp:RequiredFieldValidator><br />
                <asp:RegularExpressionValidator Display="Dynamic" ID="vSalary2" runat="server" ErrorMessage="Enter only Numbers" ValidationExpression="^[0-9]*$" ForeColor="Red" ControlToValidate="Salary"/>
                Date of Joining<asp:TextBox type="date" ID="DOJ" runat="server" placeholder="Date Of Joining"></asp:TextBox>
                <asp:RequiredFieldValidator Display="Dynamic" ID="vDOJ" runat="server" ControlToValidate="DOJ" ErrorMessage="Please enter Date of Joining" ForeColor="Red"></asp:RequiredFieldValidator><br />
                Address<asp:TextBox ID="Address" runat="server" placeholder="Enter your Address"></asp:TextBox>
                <asp:RequiredFieldValidator Display="Dynamic" ID="vAddress" runat="server" ControlToValidate="Address" ErrorMessage="Please enter Address" ForeColor="Red"></asp:RequiredFieldValidator><br />
                <br /><asp:Button ID="Submit" runat="server" Text="Submit" class="btn btn-primary btn-block btn-large" OnClick="btnSubmit_Click"/><br />
                <asp:Button ID="Reset" CausesValidation="False" runat="server" Text="Reset" class="btn btn-primary btn-block btn-large" OnClick="btnReset_Click"/><br />
                <asp:Button ID="GoBack" CausesValidation="False" runat="server" Text="Go Back" class="btn btn-primary btn-block btn-large" OnClick="btnGoBack_Click"/><br />
            </form>
        </div>
    </body>
</html>
