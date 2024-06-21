<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DreamInterpretationForm.aspx.cs" Inherits="fortunewhisp.DreamInterpretationForm" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rüya Tabiri</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #6a0dad;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 50%;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        .container h2 {
            text-align: center;
            color: #333;
        }
        .alphabet-buttons {
            text-align: center;
            margin-bottom: 20px;
        }
        .alphabet-buttons button {
            margin: 5px;
            padding: 10px 15px;
            border: none;
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        .alphabet-buttons button:hover {
            background-color: #45a049;
        }
        .interpretation-link {
            display: block;
            color: #4CAF50;
            text-decoration: none;
        }
        .interpretation-link:hover {
            text-decoration: underline;
        }
        .search-box {
            text-align: center;
            margin-bottom: 20px;
        }
        .search-box input[type="text"] {
            width: 80%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .search-box input[type="button"] {
            padding: 10px 15px;
            border: none;
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        .search-box input[type="button"]:hover {
            background-color: #45a049;
        }
        .interpretation-content {
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 4px;
            margin-top: 20px;
        }
        .btnsearch{
            background-color: #060490; /* Green */
            border: none;
            color: white;
            padding: 8px 17px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            transition-duration: 0.4s;
        }
        .btnsearch:hover{
            background-color: #d8e604;
            color: black;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="container">
            <h2>Rüya Tabiri</h2>
            <div class="search-box">
                <asp:TextBox ID="searchTextBox" runat="server" placeholder="Rüya tabiri ara..."></asp:TextBox>
                <asp:Button ID="searchButton" class="btnsearch" runat="server" Text="Ara" OnClick="SearchButton_Click" />
            </div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="alphabet-buttons" id="alphabetButtons" runat="server"></div>
                    <div id="interpretationsContainer" runat="server"></div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image1" runat="server" Height="382px" ImageUrl="https://images.ctfassets.net/cnu0m8re1exe/52MFJVkqEMCiNdAVqYBHZ/7b26a05b4a8cddf7a9f70d5f168f90de/shutterstock_1520037971.jpg?fm=jpg&amp;fl=progressive&amp;w=660&amp;h=433&amp;fit=fill" Width="560px" />
        </p>
    </form>
</body>
</html>
