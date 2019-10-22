
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="asp.netloginpage.Login" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html,body,h1,h2,h3,h4 {font-family:"Lato", sans-serif}
.mySlides {display:none}
.w3-tag, .fa {cursor:pointer}
.w3-tag {height:15px;width:15px;padding:0;margin-top:6px}
    .auto-style8 {
        width: 44px;
        height: 22px;
        margin-top: 0px;
    }
</style>
<body>

<head runat="server">
    <title></title>
<style>
        body{
            background-color:wheat;
        }
    </style>
</head>
<body>
    
<!-- Links (sit on top) -->
<div class="w3-top">
  <div class="w3-row w3-large w3-light-grey">
    <div class="w3-col s3" style="width: 47%">
      <a href="Index.aspx" class="w3-button w3-block">Home</a>
    </div>
    
     <div class="w3-col s3">
      <a href="Login.aspx" class="w3-button w3-block" style="width: 206%">
          &nbsp;<img alt="" class="auto-style8" src="IMG/login.png" /></a>
    </div>
  </div>
</div>
   </br> </br> </br> </br> </br>
    <form id="form1" runat="server">
    <div>
   <center> <table style="margin:auto;border:5px solid white"></center>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Password" required></asp:Label></td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" required></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Login" OnClientClick="btnLogin_Click" />
            </td>
        </tr>   
        <tr>
            <td></td>
            <td>
                <asp:Label ID="lblErrorMessage" runat="server" Text="Incorrect User Credentials" ForeColor="Red" EnableTheming="True"></asp:Label></td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>


