<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ElFaliForm.aspx.cs" Inherits="fortunewhisp.ElFaliForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>El Falı Formu</title>
    <script>
        function previewImage() {
            var fileInput = document.getElementById('fileUpload');
            var preview = document.getElementById('preview');
            var file = fileInput.files[0];
            var reader = new FileReader();

            reader.onloadend = function () {
                preview.src = reader.result;
                preview.style.display = "block";
            }

            if (file) {
                reader.readAsDataURL(file);
            } else {
                preview.src = "";
            }
        }
    </script>
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

        #preview {
            display: none;
            max-width: 300px;
            margin-top: 10px;
        }

        #TextBoxComments {
            width: 100%;
            height: 200px;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div>
                <h2>El Falı Formu</h2>
                <!-- Fotoğraf seçme alanı -->
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9yiwoGmberWSiXmk3IljUCsg2-lIXOb9qrA&s" alt="Fal fincanı" style="display: block; margin: 0 auto; width: 100px; height: auto;" />
                <asp:FileUpload ID="fileUpload" runat="server" onchange="previewImage()" accept="image/*" />
                <!-- Önizleme için bir resim alanı -->
                <img id="preview" src="#" alt="Seçilen Fotoğraf" />
                <!-- Yorum yapılacak metin kutusu -->
                &nbsp;<!-- Gönder butonu --><asp:Button ID="ButtonSubmit" runat="server" Text="Gönder" OnClick="ButtonSubmit_Click" Style="margin-top: 10px;" />
                <!-- Yorumları görüntülemek için TextBox -->
                <asp:TextBox ID="TextBoxComments" runat="server" TextMode="MultiLine" ReadOnly="true"></asp:TextBox>
            </div>
        </div>
    </form>
</body>
</html>
