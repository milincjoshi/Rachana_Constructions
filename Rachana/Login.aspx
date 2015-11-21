<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <!--Bootstrap reference-->
    <link href="Bootstrap/dist/css/bootstrap-theme.css" rel="stylesheet" />
    <link href="Bootstrap/dist/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="Bootstrap/dist/css/bootstrap.css" rel="stylesheet" />
    <link href="Bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />


    <link rel="stylesheet" href="homestyle.css" type="text/css" />
   
    <title>Admin Login</title>
</head>
<body class="whitespace container">
    <form id="form1" runat="server">
        <div class=" forecolor_darkgreen page-header text-center font_modernsans fontsize_40">
            Welcome Admin
        </div>
        <div class="container forecolor_darkgreen">
            <div class="col-lg-4"></div>
            <div class="col-lg-4 col-sm-12 col-md-12 fontsize_22 font_oswald padding_10">
                <div class="col-lg-6 margin_10top padding_10">
                    Username
                </div>
                <div class="col-lg-6 margin_10top padding_10">
                    <asp:TextBox ID="username" runat="server"/>
                </div>
                <div class="col-lg-6 margin_10top padding_10">
                    Password
                </div>
                <div class="col-lg-6 margin_10top padding_10">
                    <asp:TextBox ID="password" TextMode="Password" runat="server" />
                </div>
                <div class="col-lg-12 text-center margin_10top padding_10">
                    <asp:Button Width="100%" CssClass="btn btn-primary" ID="login" runat="server" Text="Login" OnClick="login_Click" />
                </div>
                <div class="col-lg-12 text-center">
                    <asp:Label ID="wrong" runat="server" Text="Invalid Username/Password" Visible="false" />
                </div>
            </div>
            <div class="col-lg-4 "></div>
        </div>
          
    </form>
</body>
</html>
