<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="todolist2.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Merriweather+Sans:ital,wght@1,500&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');
        *{
            padding:0;
            margin:0;
        }
        #topnav {
            width: 100%;
            position: fixed;
            top: 0;
            left: 0;
            background-color: Black;
            font-family: Arial, sans-serif;
            font-size: 15px;
        }

        .nav-link {
            display: inline-block;
            width: 100px;
            height: 55px;
            color: White;
            text-align: center;
            line-height: 55px;
            text-decoration: none;
        }

        #logo {
            width: 120px;
            background-color: RoyalBlue;
            font-weight: bold;
        }

        #about {
            position: absolute;
            top: 0;
            right: 2%;
        }

        #about2 {
            position: absolute;
            top: 0;
            right: 11%;
        }

        .parag {
            width: 500px;
            text-align: left;
            height: 160px;
            padding-left: 60px
        }

        .auto-style1 {
            text-align: left;
        }
    </style>
</head>
<body>
    <nav id="topnav">
        <li id="logo" class="nav-link" style="width: 200px">Todo List Application </li>

        <asp:HyperLink ID="about2" class="nav-link" NavigateUrl="~/Login.aspx" runat="server">LOGIN</asp:HyperLink>
        <asp:HyperLink ID="about" class="nav-link" NavigateUrl="~/SignIn.aspx" runat="server">SIGNUP</asp:HyperLink>
    </nav>

    <div style="width: 100%; padding-top: 50px; height: 650px; display: flex; flex-direction: row">

        <div style="padding: 25px; width: 38rem; align-items: center; justify-content: center; display: flex; flex-direction: column;">
            <h1 class="" style="width: 500px; text-align: center;line-height: 1.2;font-family: 'Poppins', sans-serif;  font-size: 70px;">Your busy life deserves Organization. </h1>
            <asp:Label ID="Label1" Width="500px" Font-Size="25px" style="font-family: 'Poppins', sans-serif;padding-left:6%" runat="server" Text="Any.do is an award-winning app used by millions of people to stay organized and get more done." Height="75px"></asp:Label>
        </div>

        <div style="width: 46%; height: 100%; align-items: center; justify-content: center; display: -webkit-inline-box;">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/6343845.jpg" ImageAlign="Right" Height="100%" Width="100%" />
        </div>
    </div>

</body>
</html>
