<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KatinaFaliForm.aspx.cs" Inherits="fortunewhisp.KatinaFaliForm" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kartina Falı</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #6a0dad; /* Mor arka plan rengi */
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: 50px auto;
            background-color: #fff; /* Beyaz arka plan rengi */
            padding: 20px; /* Panel içi dolgusu */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Gölge efekti */
            border-radius: 8px; /* Köşelerin yuvarlatılması */
            text-align: center; /* Burçların ortalanması için */
        }

        .image-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }

        .image-container img {
            margin: 10px;
            cursor: pointer;
        }
        .burc-name {
            display: block;
            color: #333; /* Yazı rengi */
            margin-top: 5px; /* Üst boşluk */
            font-weight: bold; /* Kalın font */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Burçlar</h2>
            <div class="image-container">
                 <div style="position: relative;">
                    <asp:ImageButton ID="imgKoc" runat="server" ImageUrl="https://www.elle.com.tr/content/dist/img/horoscopes/koc.jpg" AlternateText="Koç Burcu" OnClick="imgKoc_Click" />
                    <span class="burc-name">Koç</span>
                </div>
                <div style="position: relative;">
                    <asp:ImageButton ID="imgBoga" runat="server" ImageUrl="https://www.elle.com.tr/content/dist/img/horoscopes/boga.jpg" AlternateText="Boğa Burcu" OnClick="imgBoga_Click" />
                    <span class="burc-name">Boğa</span>
                </div>
                <div style="position: relative;">
                    <asp:ImageButton ID="imgIkizler" runat="server" ImageUrl="https://www.elle.com.tr/content/dist/img/horoscopes/ikizler.jpg" AlternateText="Koç Burcu" OnClick="imgIkizler_Click" />
                    <span class="burc-name">İkizler</span>
                </div>
                <div style="position: relative;">
                    <asp:ImageButton ID="imgYengec" runat="server" ImageUrl="https://www.elle.com.tr/content/dist/img/horoscopes/yengec.jpg" AlternateText="Boğa Burcu" OnClick="imgYengec_Click" />
                    <span class="burc-name">Yengeç</span>
                </div>
                <div style="position: relative;">
                    <asp:ImageButton ID="imgAslan" runat="server" ImageUrl="https://www.elle.com.tr/content/dist/img/horoscopes/aslan.jpg" AlternateText="Koç Burcu" OnClick="imgAslan_Click" />
                    <span class="burc-name">Aslan</span>
                </div>
                <div style="position: relative;">
                    <asp:ImageButton ID="imgBasak" runat="server" ImageUrl="https://www.elle.com.tr/content/dist/img/horoscopes/basak.jpg" AlternateText="Boğa Burcu" OnClick="imgBasak_Click" />
                    <span class="burc-name">Başak</span>
                </div>
                <div style="position: relative;">
                    <asp:ImageButton ID="imgTerazi" runat="server" ImageUrl="https://www.elle.com.tr/content/dist/img/horoscopes/terazi.jpg" AlternateText="Koç Burcu" OnClick="imgTerazi_Click" />
                    <span class="burc-name">Terazi</span>
                </div>
                <div style="position: relative;">
                    <asp:ImageButton ID="imgAkrep" runat="server" ImageUrl="https://www.elle.com.tr/content/dist/img/horoscopes/akrep.jpg" AlternateText="Boğa Burcu" OnClick="imgAkrep_Click" />
                    <span class="burc-name">Akrep</span>
                </div>
                <div style="position: relative;">
                    <asp:ImageButton ID="imgYay" runat="server" ImageUrl="https://www.elle.com.tr/content/dist/img/horoscopes/yay.jpg" AlternateText="Koç Burcu" OnClick="imgYay_Click" />
                    <span class="burc-name">Yay</span>
                </div>
                <div style="position: relative;">
                    <asp:ImageButton ID="imgOglak" runat="server" ImageUrl="https://www.elle.com.tr/content/dist/img/horoscopes/oglak.jpg" AlternateText="Boğa Burcu" OnClick="imgOglak_Click" />
                    <span class="burc-name">Oğlak</span>
                </div>
                <div style="position: relative;">
                    <asp:ImageButton ID="imgKova" runat="server" ImageUrl="https://www.elle.com.tr/content/dist/img/horoscopes/kova.jpg" AlternateText="Koç Burcu" OnClick="imgKova_Click" />
                    <span class="burc-name">Kova</span>
                </div>
                <div style="position: relative;">
                    <asp:ImageButton ID="imgBalik" runat="server" ImageUrl="https://www.elle.com.tr/content/dist/img/horoscopes/balik.jpg" AlternateText="Boğa Burcu" OnClick="imgBalik_Click" />
                    <span class="burc-name">Balık</span>
                </div>

            </div>
        </div>
    </form>
</body>
</html>

