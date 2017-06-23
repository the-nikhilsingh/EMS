<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Report.aspx.vb" Inherits="Report" %>
<html>
    <head>
        <title>EMS Report</title>
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

        html { width: 100%; height:100%; overflow:hidden; }

        body {
           width: 100%;
           height:100%;
           font-family: 'Open Sans', sans-serif;
           color:black;
           font-weight: normal;
            }
        .btn{
           width:75px;
           height:30px;
        }
        .txt{
           width:150px;
           height:30px;
        }
        #form1{
            position:absolute;
            top:130px;
        }
        input {
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
           transition: box-shadow .5s ease;}
        input:focus { box-shadow: inset 0 -5px 45px rgba(100,100,100,0.4), 0 1px 1px rgba(255,255,255,0.2); }
        .logo {
            float: left;
            position: absolute;
            left: 0px;
            top: 0px;
        }
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            text-align: center;
            padding: 8px;
        }

        tr:nth-child(even){background-color: #f2f2f2}

        th {
            background-color: #4169e1;
            color: white;
            font-weight: normal;
        }
        #GoBack{
            position:absolute;
            top:100px;
            left:1250px;
            width:100px;
            height:40px;
        }
      </style>
    </head>

    <body>
        <img class="logo" src="C:\Users\singh\Documents\Visual Studio 2017\WebSites\WebSite\Images\Tata Steel.png" alt="Sample Photo" />
        <h1 align="center" style="position:relative; top:5%;">EMS Report</h1>
        <form id="form1" runat="server">
            Search User:
            <asp:TextBox class="txt" ID="txtSearch1" runat="server"></asp:TextBox><br />
            Search Registration No:
            <asp:TextBox class="txt" ID="txtSearch2" runat="server"></asp:TextBox><br />
            Search Gender:
            <asp:TextBox class="txt" ID="txtSearch3" runat="server"></asp:TextBox><br />
            <asp:Button class="btn" ID="btnSearch" runat="server" Text="Search" />
            <hr />
            <asp:GridView ID="GridView1" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
                runat="server" AutoGenerateColumns="false" DataSourceID="GridDataSource" AllowPaging="true">
                <Columns>
                    <asp:BoundField DataField="UserName" HeaderText="Username" ItemStyle-Width="150" />
                    <asp:BoundField DataField="Registeration_No" HeaderText="Registeration No" ItemStyle-Width="150" />
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" ItemStyle-Width="150" />
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" ItemStyle-Width="150" />
                    <asp:BoundField DataField="Date_of_Birth" HeaderText="Date of Birth" ItemStyle-Width="150" />
                    <asp:BoundField DataField="ContactNumber" HeaderText="Contact Number" ItemStyle-Width="150" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" ItemStyle-Width="150" />
                    <asp:BoundField DataField="Designation" HeaderText="Designation" ItemStyle-Width="150" />
                    <asp:BoundField DataField="Department" HeaderText="Department" ItemStyle-Width="150" />
                    <asp:BoundField DataField="Salary" HeaderText="Salary" ItemStyle-Width="150" />
                    <asp:BoundField DataField="Date_of_Joining" HeaderText="Date of Joining" ItemStyle-Width="150" />
                    <asp:BoundField DataField="Address" HeaderText="Address" ItemStyle-Width="150" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="GridDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:userinfo %>"
                SelectCommand="SELECT * FROM UserInfo" FilterExpression="UserName LIKE '%{0}%' OR Convert(Registeration_No, 'System.String') LIKE '%{1}%' OR Gender LIKE '%{2}%'">
                <FilterParameters>
                    <asp:ControlParameter Name="UserName" ControlID="txtSearch1" PropertyName="Text" DefaultValue="-999"/>
                    <asp:ControlParameter Name="Registeration_No" ControlID="txtSearch2" PropertyName="Text" DefaultValue="-999"/>
                    <asp:ControlParameter Name="Gender" ControlID="txtSearch3" PropertyName="Text" DefaultValue="-999"/>
                </FilterParameters>
            </asp:SqlDataSource>
            <asp:Button ID="GoBack" CausesValidation="False" runat="server" Text="Go Back" class="btn btn-primary btn-block btn-large" OnClick="btnGoBack_Click"/><br />
            </form>
    </body>
</html>
