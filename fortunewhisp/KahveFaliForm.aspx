<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KahveFaliForm.aspx.cs" Inherits="fortunewhisp.KahveFaliForm" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kahve Falı Formu</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #6a0dad; /* Mor arka plan rengi */
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

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            color: #333;
        }

        .form-group input[type="text"],
        .form-group input[type="file"],
        .form-group button {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .form-group button {
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .form-group button:hover {
            background-color: #45a049;
        }

        .coffee-cup {
            text-align: center;
            margin-bottom: 20px;
        }

        .coffee-cup img {
            width: 100px;
            height: auto;
        }

        .result-panel {
            margin-top: 20px;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 4px;
            background-color: #f9f9f9;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="coffee-cup">
            <img src="https://falyolu.com/wp-content/uploads/2023/07/srcnx_coffee_horoscope_coffee_cup_no_shadow_white_background_tu_12af7150-2f58-44b4-91cc-c8e4f3134dbd.png.webp" alt="Kahve Fincanı" />
        </div>
        <h2>Kahve Falı Formu</h2>
        <form id="form1" runat="server">
            <div class="form-group">
                <label for="TextBoxIsim">İsim:</label>
                <asp:TextBox ID="TextBoxIsim" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="TextBoxSoyisim">Soyisim:</label>
                <asp:TextBox ID="TextBoxSoyisim" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="TextBoxYas">Yaş:</label>
                <asp:TextBox ID="TextBoxYas" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="FileUploadFincan">Fincan Fotoğrafı:</label>
                <asp:FileUpload ID="FileUploadFincan" runat="server" />
            </div>
            <div class="form-group">
                <asp:Button ID="ButtonGonder" runat="server" Text="Gönder" OnClick="ButtonGonder_Click" />
            </div>
            <asp:Panel ID="ResultPanel" runat="server" CssClass="result-panel" Visible="false">
                <asp:Literal ID="ResultLiteral" runat="server"></asp:Literal>
            </asp:Panel>
        </form>
    </div>
</body>
</html>

