<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="todolist2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Merriweather+Sans:ital,wght@1,500&display=swap');
    </style>

    <style>
        @import url('https://fonts.googleapis.com/css?family=Exo:400,700');

        * {
            margin: 0px;
            padding: 0px;
        }

        body {
            font-family: 'Exo', sans-serif;
        }


        .context {
            width: 100%;
            position: absolute;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100%;
            flex-direction: column;
            text-align: center;
            z-index: 2;
        }

            .context h1 {
                text-align: center;
                color: #fff;
                font-size: 50px;
            }


        .area {
            background: #4e54c8;
            background: -webkit-linear-gradient(to left, #8f94fb, #4e54c8);
            width: 100%;
            height: 100vh;
        }

        .circles {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            overflow: hidden;
        }

            .circles li {
                position: absolute;
                display: block;
                list-style: none;
                width: 20px;
                height: 20px;
                background: rgba(255, 255, 255, 0.2);
                animation: animate 25s linear infinite;
                bottom: -150px;
            }

                .circles li:nth-child(1) {
                    left: 25%;
                    width: 80px;
                    height: 80px;
                    animation-delay: 0s;
                }


                .circles li:nth-child(2) {
                    left: 10%;
                    width: 20px;
                    height: 20px;
                    animation-delay: 2s;
                    animation-duration: 12s;
                }

                .circles li:nth-child(3) {
                    left: 70%;
                    width: 20px;
                    height: 20px;
                    animation-delay: 4s;
                }

                .circles li:nth-child(4) {
                    left: 40%;
                    width: 60px;
                    height: 60px;
                    animation-delay: 0s;
                    animation-duration: 18s;
                }

                .circles li:nth-child(5) {
                    left: 65%;
                    width: 20px;
                    height: 20px;
                    animation-delay: 0s;
                }

                .circles li:nth-child(6) {
                    left: 75%;
                    width: 110px;
                    height: 110px;
                    animation-delay: 3s;
                }

                .circles li:nth-child(7) {
                    left: 35%;
                    width: 150px;
                    height: 150px;
                    animation-delay: 7s;
                }

                .circles li:nth-child(8) {
                    left: 50%;
                    width: 25px;
                    height: 25px;
                    animation-delay: 15s;
                    animation-duration: 45s;
                }

                .circles li:nth-child(9) {
                    left: 20%;
                    width: 15px;
                    height: 15px;
                    animation-delay: 2s;
                    animation-duration: 35s;
                }

                .circles li:nth-child(10) {
                    left: 85%;
                    width: 150px;
                    height: 150px;
                    animation-delay: 0s;
                    animation-duration: 11s;
                }



        @keyframes animate {

            0% {
                transform: translateY(0) rotate(0deg);
                opacity: 1;
                border-radius: 0;
            }

            100% {
                transform: translateY(-1000px) rotate(720deg);
                opacity: 0;
                border-radius: 50%;
            }
        }

        input[type=text] {
            padding: 20px;
            font-size: 20px;
            border-radius: 10px;
            text-align: center;
            margin: 5px;
        }

        .btn {
            padding: 5px;
            border: none;
            color: white;
            border-radius: 10px;
            background: #007CFF;
        }

        .auto-style2 {
            width: 30%;
            height: 65%;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server" style="width: 100%; height: 100%;">
        <div class="context">
            <asp:Label ID="Label2" runat="server" Text="LOGIN" BorderStyle="None" Font-Size="23pt" Height="48px" Width="267px" ForeColor="white"></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server"></asp:Label>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

            <div style="text-align: center; border-radius: 20px; background-color: #8fbbff; align-items: center; justify-content: center; display: flex; flex-direction: column" class="auto-style2">
                <br />
                <br />
                <asp:TextBox ID="TextBox1" runat="server" placeholder="username" BorderStyle="None" Height="40px" Width="350px"></asp:TextBox>
                <br />
                <br />
                <asp:TextBox ID="TextBox2" runat="server" placeholder="password" BorderStyle="None" Height="40px" Width="350px"></asp:TextBox>
                
                <br />
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignIn.aspx" ForeColor="White">Already Existing Account</asp:HyperLink>
                <br />
                <br />

                <asp:Button ID="Button1" CssClass="btn" runat="server" Text="Login" OnClick="Button1_Click" Font-Size="17pt" Height="45px" Width="200px" />
                &nbsp;
            </div>
        </div>

         <div class="area">
            <ul class="circles">
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
            </ul>
        </div>
    </form>

</body>
</html>
