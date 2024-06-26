<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DreamInterpretationForm.aspx.cs" Inherits="fortunewh12.DreamInterpretationForm" %>

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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="container">
            <h2>Rüya Tabiri</h2>
            <div class="search-box">
                <asp:TextBox ID="searchTextBox" runat="server" placeholder="Rüya tabiri ara..."></asp:TextBox>
                <asp:Button ID="searchButton" runat="server" Text="Ara" OnClick="SearchButton_Click" />
            </div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="alphabet-buttons" id="alphabetButtons" runat="server"></div>
                    <div id="interpretationsContainer" runat="server"></div>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
