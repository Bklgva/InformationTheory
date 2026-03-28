<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lab1.aspx.cs" Inherits="Lab1" %>

<!DOCTYPE html>
<html>
<head>
    <title>ABBA Calculator</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 50px;
        }
        .line {
            display: flex;
            align-items: center;
            gap: 10px;
            font-size: 20px;
        }
        input {
            width: 60px;
            padding: 5px;
            font-size: 18px;
            text-align: center;
        }
        button {
            width: 40px;
            height: 40px;
            font-size: 20px;
            font-weight: bold;
            cursor: pointer;
        }
        .result {
            font-size: 20px;
            font-weight: bold;
            min-width: 50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="line">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <span>!</span>
            <span>×</span>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <span>!</span>&nbsp;
            <asp:Button ID="cmdGo" runat="server" Text="=" OnClick="cmdGo_Click" />
            <asp:Label ID="Label1" runat="server" CssClass="result"></asp:Label>
        </div>
    </form>
</body>
</html>