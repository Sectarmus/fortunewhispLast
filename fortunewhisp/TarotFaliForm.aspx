<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TarotFaliForm.aspx.cs" Inherits="fortunewhisp.TarotFaliForm" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tarot Falı Formu</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #6a0dad;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            text-align: center;
            background-size: cover;
            background-position: center;
        }

        .container h2 {
            text-align: center;
            color: #333;
        }

        .cards {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin-bottom: 20px;
        }

        .card {
            width: 100px;
            height: 150px;
            margin: 10px;
            cursor: pointer;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
            background-color: white;
            background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThn9XICRT6Sfriz8qOphDRtnyiblx-nrccTw&s'); /* Arka yüz resmini burada belirtiyoruz */
            background-size: cover;
        }

        .card img {
            display: none; /* Kartın ön yüzünü başlangıçta gizle */
        }

        .card:hover {
            transform: scale(1.1);
        }

        .selected-cards {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }

        .selected-card {
            width: 100px;
            height: 150px;
            margin: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
            background-color: white;
        }

        .selected-card img {
            width: 100%;
            height: 100%;
            border-radius: 4px;
        }

        .textbox-container {
            margin-top: 20px;
        }

        .textbox-container textarea {
            width: 100%;
            height: 150px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .reset-button {
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #f44336;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .reset-button:hover {
            background-color: #d32f2f;
        }
    </style>
    <script>
        var cardMeanings = {
            1: "Kılıç Kralı anlamı: Zeka, Analiz, Liderlik.",
            2: "Kupaların Yedilisi anlamı: Hayaller, Seçenekler, Kafa Karışıklığı.",
            3: "İmparatoriçe anlamı: Annelik, Bereket, Yaratıcılık.",
            4: "Asaların Yedilisi anlamı: Mücadele, Savunma, Kararlılık.",
            5: "Kupaların Onlusu anlamı: Mutluluk, Aile, Huzur.",
            6: "Savaş Arabası anlamı: İrade, Zafer, Kontrol.",
            7: "Büyücü anlamı: Güç, Beceriklilik, Yaratıcılık.",
            8: "Tılsım Kraliçesi anlamı: Pratiklik, Güven, Refah.",
            9: "Tılsım Ası anlamı: Yeni Başlangıçlar, Fırsatlar, Bolluk.",
            10: "Tılsım Şövalyesi anlamı: Sorumluluk, Kararlılık, Sabır.",
            11: "Asaların Uşağı anlamı: Macera, Keşif, Tutku.",
            12: "Kılıç Kralı anlamı: Zeka, Analiz, Liderlik.",
            13: "Kupaların Yedilisi anlamı: Hayaller, Seçenekler, Kafa Karışıklığı.",
            14: "Büyücü anlamı: Güç, Beceriklilik, Yaratıcılık.",
            15: "Kupaların Onlusu anlamı: Mutluluk, Aile, Huzur.",
            16: "Savaş Arabası anlamı: İrade, Zafer, Kontrol.",
            17: "İmparatoriçe anlamı: Annelik, Bereket, Yaratıcılık.",
            18: "Asaların Yedilisi anlamı: Mücadele, Savunma, Kararlılık."
        };

        function selectCard(cardId, imgSrc) {
            var selectedCards = document.getElementById("selectedCards");
            var selectedCardImages = selectedCards.getElementsByTagName("img").length;

            if (selectedCardImages < 3) {
                var newCard = document.createElement("div");
                newCard.className = "selected-card";
                newCard.innerHTML = '<img src="' + imgSrc + '" alt="Selected Card ' + cardId + '" />';
                selectedCards.appendChild(newCard);

                var hiddenField = document.getElementById("HiddenFieldSelectedCards");
                hiddenField.value += imgSrc + ",";

                // Kartın anlamını textarea'ya ekleyelim
                var textarea = document.getElementById("<%= textarea1.ClientID %>");
                textarea.value += cardMeanings[cardId] + "\n";

                // Scroll the selected cards container to the bottom
                selectedCards.scrollTop = selectedCards.scrollHeight;
            }
        }

        function resetSelection() {
            document.getElementById("selectedCards").innerHTML = "";
            document.getElementById("HiddenFieldSelectedCards").value = "";
            document.getElementById("<%= textarea1.ClientID %>").value = "";
        }

        // Scroll the selected cards container to the bottom when the page is loaded
        window.onload = function () {
            var selectedCards = document.getElementById("selectedCards");
            selectedCards.scrollTop = selectedCards.scrollHeight;
        };
    </script>
</head>
<body>
    <div class="container">
        <h2>Tarot Falı Formu</h2>
        <form id="form1" runat="server">
            <div class="cards">
                <div class="card" onclick="selectCard(1, 'https://www.elle.com.tr/Content/Images/Tarot/kılıc-kralı.jpg')" data-front="https://www.elle.com.tr/Content/Images/Tarot/kılıc-kralı.jpg">
                    <img src="https://www.elle.com.tr/Content/Images/Tarot/kılıc-kralı.jpg" alt="Card 1" />
                </div>
                <div class="card" onclick="selectCard(2, 'https://www.elle.com.tr/Content/Images/Tarot/kupaların-yedilisi.jpg')" data-front="https://www.elle.com.tr/Content/Images/Tarot/kupaların-yedilisi.jpg">
                    <img src="https://www.elle.com.tr/Content/Images/Tarot/kupaların-yedilisi.jpg" alt="Card 2" />
                </div>
                <div class="card" onclick="selectCard(3, 'https://www.elle.com.tr/Content/Images/Tarot/imparatorice.jpg')" data-front="https://www.elle.com.tr/Content/Images/Tarot/imparatorice.jpg">
                    <img src="https://www.elle.com.tr/Content/Images/Tarot/imparatorice.jpg" alt="Card 3" />
                </div>
                <div class="card" onclick="selectCard(4, 'https://www.elle.com.tr/Content/Images/Tarot/asaların-yedilisi.jpg')" data-front="https://www.elle.com.tr/Content/Images/Tarot/asaların-yedilisi.jpg">
                    <img src="https://www.elle.com.tr/Content/Images/Tarot/asaların-yedilisi.jpg" alt="Card 4" />
                </div>
                <div class="card" onclick="selectCard(5, 'https://www.elle.com.tr/Content/Images/Tarot/kupaların-onlusu.jpg')" data-front="https://www.elle.com.tr/Content/Images/Tarot/kupaların-onlusu.jpg">
                    <img src="https://www.elle.com.tr/Content/Images/Tarot/kupaların-onlusu.jpg" alt="Card 5" />
                </div>
                <div class="card" onclick="selectCard(6, 'https://www.elle.com.tr/Content/Images/Tarot/savaş%20arabası.jpg')" data-front="https://www.elle.com.tr/Content/Images/Tarot/savaş%20arabası.jpg">
                    <img src="https://www.elle.com.tr/Content/Images/Tarot/savaş%20arabası.jpg" alt="Card 6" />
                </div>
                <div class="card" onclick="selectCard(7, 'https://www.elle.com.tr/Content/Images/Tarot/buyucu.jpg')" data-front="https://www.elle.com.tr/Content/Images/Tarot/buyucu.jpg">
                    <img src="https://www.elle.com.tr/Content/Images/Tarot/buyucu.jpg" alt="Card 7" />
                </div>
                <div class="card" onclick="selectCard(8, 'https://www.elle.com.tr/Content/Images/Tarot/tılsım-kralicesi.jpg')" data-front="https://www.elle.com.tr/Content/Images/Tarot/tılsım-kralicesi.jpg">
                    <img src="https://www.elle.com.tr/Content/Images/Tarot/tılsım-kralicesi.jpg" alt="Card 8" />
                </div>
                <div class="card" onclick="selectCard(9, 'https://www.elle.com.tr/Content/Images/Tarot/tılsım-ası.jpg')" data-front="https://www.elle.com.tr/Content/Images/Tarot/tılsım-ası.jpg">
                    <img src="https://www.elle.com.tr/Content/Images/Tarot/tılsım-ası.jpg" alt="Card 9" />
                </div>
                <div class="card" onclick="selectCard(10, 'https://www.elle.com.tr/Content/Images/Tarot/tılsım-sovalyesi.jpg')" data-front="https://www.elle.com.tr/Content/Images/Tarot/tılsım-sovalyesi.jpg">
                    <img src="https://www.elle.com.tr/Content/Images/Tarot/tılsım-sovalyesi.jpg" alt="Card 10" />
                </div>
                <div class="card" onclick="selectCard(11, 'https://www.elle.com.tr/Content/Images/Tarot/asaların-usagı.jpg')" data-front="https://www.elle.com.tr/Content/Images/Tarot/asaların-usagı.jpg">
                    <img src="https://www.elle.com.tr/Content/Images/Tarot/asaların-usagı.jpg" alt="Card 11" />
                </div>
                <div class="card" onclick="selectCard(12, 'https://www.elle.com.tr/Content/Images/Tarot/kılıc-kralı.jpg')" data-front="https://www.elle.com.tr/Content/Images/Tarot/kılıc-kralı.jpg">
                    <img src="https://www.elle.com.tr/Content/Images/Tarot/kılıc-kralı.jpg" alt="Card 12" />
                </div>
                <div class="card" onclick="selectCard(13, 'https://www.elle.com.tr/Content/Images/Tarot/kupaların-yedilisi.jpg')" data-front="https://www.elle.com.tr/Content/Images/Tarot/kupaların-yedilisi.jpg">
                    <img src="https://www.elle.com.tr/Content/Images/Tarot/kupaların-yedilisi.jpg" alt="Card 13" />
                </div>
                <div class="card" onclick="selectCard(14, 'https://www.elle.com.tr/Content/Images/Tarot/buyucu.jpg')" data-front="https://www.elle.com.tr/Content/Images/Tarot/buyucu.jpg">
                    <img src="https://www.elle.com.tr/Content/Images/Tarot/buyucu.jpg" alt="Card 14" />
                </div>
                <div class="card" onclick="selectCard(15, 'https://www.elle.com.tr/Content/Images/Tarot/kupaların-onlusu.jpg')" data-front="https://www.elle.com.tr/Content/Images/Tarot/kupaların-onlusu.jpg">
                    <img src="https://www.elle.com.tr/Content/Images/Tarot/kupaların-onlusu.jpg" alt="Card 15" />
                </div>
                <div class="card" onclick="selectCard(16, 'https://www.elle.com.tr/Content/Images/Tarot/savaş%20arabası.jpg')" data-front="https://www.elle.com.tr/Content/Images/Tarot/savaş%20arabası.jpg">
                    <img src="https://www.elle.com.tr/Content/Images/Tarot/savaş%20arabası.jpg" alt="Card 16" />
                </div>
                <div class="card" onclick="selectCard(17, 'https://www.elle.com.tr/Content/Images/Tarot/imparatorice.jpg')" data-front="https://www.elle.com.tr/Content/Images/Tarot/imparatorice.jpg">
                    <img src="https://www.elle.com.tr/Content/Images/Tarot/imparatorice.jpg" alt="Card 17" />
                </div>
                <div class="card" onclick="selectCard(18, 'https://www.elle.com.tr/Content/Images/Tarot/asaların-yedilisi.jpg')" data-front="https://www.elle.com.tr/Content/Images/Tarot/asaların-yedilisi.jpg">
                    <img src="https://www.elle.com.tr/Content/Images/Tarot/asaların-yedilisi.jpg" alt="Card 18" />
                </div>
            </div>
            <div id="selectedCards" class="selected-cards">
                <%-- C# kodu ile seçilen kartları göstereceğiz --%>
                <asp:Panel ID="selectedCardsContainer" runat="server" CssClass="selected-cards"></asp:Panel>
            </div>
            <asp:HiddenField ID="HiddenFieldSelectedCards" runat="server" />
            <div class="textbox-container">
                <textarea id="textarea1" runat="server"></textarea>
            </div>
            <button type="button" class="reset-button" onclick="resetSelection()">Seçilen Kartları Sıfırla</button>
        </form>
    </div>
</body>
</html>
