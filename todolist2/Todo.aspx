<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Todo.aspx.cs" Inherits="todolist2.Todo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            font-family: 'Merriweather Sans', sans-serif;
        }
        .textbox {

        }
        button{
            padding:10px;
            margin:5px;
            border-radius:10px;
            background:#3E4553;
        }
        input[type=text] {
            padding: 20px;
            font-size:20px;
            border-radius:10px;
            text-align:center;
            margin:5px;
        }
        .btn{
              padding: 5px;
            border:none;
            color:white;
            border-radius:10px;
            background:#007CFF;
        }
    </style>
  
</head>
<body>
    <form id="form1" runat="server">
        <div style="padding: 5px; margin: 2px; background-position: center center; font-family: 'Eras Demi ITC'; font-style: normal; background-color: #FFFFFF; color: #FFFFFF; line-height: normal; vertical-align: middle; text-align: center; text-indent: 10px; word-spacing: normal; width: 100%; height: 100%; position: absolute; z-index: 2; display: inline-block;">        

            <br />

            <br />
            <asp:Label ID="Label1" runat="server" Text="Todo list" BorderStyle="None" Font-Size="23pt" Height="62px" Width="398px"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TextBox1" OnTextChanged="Changed_Text" runat="server" Height="40px" placeholder="add todo" Width="350px" BorderStyle="None" Columns="2" BackColor="#8FBBFF" style="color:white;" ForeColor="White"></asp:TextBox>
&nbsp;<br />
            <br />
&nbsp;<asp:Button ID="Button4" runat="server" OnClick="Button1_Click" Text="add" Width="110px" BorderStyle="None" Height="43px" ForeColor="White" BackColor="#007CFF" CssClass="btn" />
            <asp:Button ID="Button5" runat="server"  visible="false" Text="Update" OnClick="Button5_Click" Width="110px" BorderStyle="None" Height="43px" BackColor="#007CFF" ForeColor="White" CssClass="btn" />
            <asp:Button ID="Button1" runat="server" visible="false" Text="delete" OnClick="Button1_Click1" Width="110px" Height="43px" BackColor="#007CFF" ForeColor="White" CssClass="btn" />

            <br />
            <br />
            <br />
            <asp:Repeater ID="Repeater1" runat="server" >
                <ItemTemplate>
                    <asp:RadioButton ID="RadioButton1" GroupName="jfe" runat="server" Font-Overline="True" />
                    <asp:Button Font-Size="17pt"  BorderStyle="None" style="background:none;color:#007CFF"  ID="Label2" runat="server" OnClick="GetIds" Text='<%# Eval("Todo") %>' ForeColor="#007CFF"></asp:Button>
                    <asp:Label ID="Label3" runat="server" Visible="false" Text='<%# Eval("Id") %>' BorderStyle="None"></asp:Label>
                   
                    <br />
                </ItemTemplate>
            </asp:Repeater>
            <br />

        </div>
    </form>
</body>
</html>
