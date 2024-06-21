<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="fortunewhisp.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&family=Playwrite+NZ:wght@100..400&display=swap');
            html, body {
                margin: 0;
                padding: 0;
                width: 100%;
                height: 100%;
                overflow-x: hidden; /* Yatay kaydırma çubuğunu kaldır */
            }

            * {
                box-sizing: border-box;
            }

            #Panel1 {
                background-color: #6a0dad; /* Ana panel arka plan rengi */
                width: 100vh; /* Panel genişliği */
                height:100%;
                padding: 20px; /* Panel içerik boşluğu */
                box-sizing: border-box; /* Kutu modeli */
            }

            #Panel2 {
                background-color: #AD88C6; /* Menü paneli arka plan rengi */
                padding: 10px;
                margin-left:-20px;
                margin-top:-20px;/* Menü paneli içerik boşluğu */
                box-sizing: border-box; /* Kutu modeli */
            }

            .menu-button {
                margin-bottom: 0; /* Menü düğmeleri alt boşluk */
                padding: 8px 16px; /* Menü düğmeleri içerik boşluğu */
                background-color: #AD88C6; /* Menü düğmeleri arka plan rengi */
                color: white; /* Menü düğmeleri metin rengi */
                border: none; /* Menü düğmeleri kenarlık yok */
                cursor: pointer; /* İmleç türü */
                transition: background-color 0.3s; /* Geçiş efekti */
            }

            .btnprime{
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

            .btnprime:hover{
                background-color: white;
                color: #060490;
            }

            .btnsecond{
                background-color: #060490; /* Green */
                border: none;
                color: white;
                padding: 6px 13px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 13px;
                transition-duration: 0.4s;
            }

            .btnsecond:hover{
                background-color: white;
                color: #060490;
            }
           
            .menu-button:hover {
                background-color: #8C6D99; /* Üzerine gelindiğinde menü düğmesi arka plan rengi */
            }

            #Label1 {
                font-size: 28px; /* Başlık metin boyutu */
                font-family: "Open Sans", sans-serif;
                background: linear-gradient(to right, #FFD700, #FFFACD);
                -webkit-background-clip: text;
                -webkit-text-fill-color: transparent;
                font-weight: bold;
            }

            #ImageButton5, #ImageButton6, #ImageButton7, #ImageButton8, #ImageButton9 {
                 /* Kenarlık stili */
                transition: transform 0.3s; /* Geçiş efekti */
                border-radius:35%;
                border: 5px solid #FFD700;
                box-shadow:5px 5px;
                
            }
            #ImageButton5, #ImageButton6, #ImageButton7{              
                margin-bottom: -55px;
            }

            #ImageButton5:hover, #ImageButton6:hover, #ImageButton7:hover, #ImageButton8:hover, #ImageButton9:hover {
                transform: scale(1.1); /* Üzerine gelindiğinde büyüme efekti */
            }

            #Panel3 {
                background-color: #AD88C6; /* Alt menü paneli arka plan rengi */
                padding: 10px; /* Alt menü paneli içerik boşluğu */
                box-sizing: border-box; /* Kutu modeli */
                margin-top:130px;
                
            }

            #Panel3 img {
                margin-right: 10px; /* İletişim simgeleri arasındaki sağ boşluk */
                cursor: pointer; /* İmleç türü */
                transition: transform 0.3s; /* Geçiş efekti */
            }

            #Panel3 img:hover {
                transform: scale(1.1); /* Üzerine gelindiğinde büyüme efekti */
            }

            .news-container {
                display: grid;
                grid-template-columns: repeat(4, 1fr);
                grid-gap: 20px;
                margin: 20px;
                background-color: #6A0DAD;
            }
            .news-item {
                border: 1px solid #ddd;
                padding: 10px;
                text-align: center;
                background-color: white;
                transition: all .2s ease-in-out;
                margin-right:15px;
            }
            .news-item:hover{
                transform: scale(1.05);
            }
            .news-item img {
                max-width: 100%;
                height: auto;
                max-height: 150px;
            }
            .news-title {
                font-size: 1.2em;
                font-weight: bold;
                margin: 10px 0;
            }
            .news-description {
                font-size: 1em;
                margin: 10px 0;
            }
            .news-meta {
                font-size: 0.8em;
                color: #555;
            }

    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" BackColor=" #6a0dad" Height="1447px" Width="1571px">
                <asp:Panel ID="Panel2" runat="server" BackColor="#AD88C6" Height="86px">
                    <asp:Label ID="lblWelcome" runat="server" Font-Bold="True" ForeColor="White" Visible="False" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="White" Visible="False" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnmain" class="btnsecond" runat="server" style="margin-bottom: 0px" Text="Main" />
                    &nbsp;
                    <asp:Button ID="btnabout" class="btnsecond" runat="server" Text="About" />
                    &nbsp;&nbsp;
                    <asp:Button ID="btncontact" class="btnsecond" runat="server" Text="Contact" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" BorderColor="#FF99FF" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="White" Height="45px" Text="FortuneWhispers" Width="264px"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnsignin" class ="btnprime" runat="server" Text="Sign In" OnClick="btnsignin_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnsignup" class ="btnprime" runat="server" Text="Sign Up" OnClick="btnsignup_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnsignout" class ="btnprime" runat="server" Text="Sign Out" OnClick="btnsignout_Click" Visible="False" />
                </asp:Panel>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton5" runat="server" BorderStyle="Inset" Height="220px" ImageUrl="https://falyolu.com/images/logofalyolu.png" OnClick="ImageButton5_Click" Width="300px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton6" runat="server" BorderStyle="Inset" Height="220px" ImageUrl="https://regincollective.com/image/cache/catalog/urunler/78d95c4c-2ce9-4a21-9ed4-b91426ca6824-800x800.jpg" OnClick="ImageButton6_Click" Width="300px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton7" runat="server" BorderStyle="Inset" Height="220px" ImageUrl="https://fa-blog.b-cdn.net/wp-content/uploads/2023/02/el-fali-nedir-kendi-elinizi-okumak-icin-bir-rehber.jpg" OnClick="ImageButton7_Click" Width="300px" />
                <br />
                <br />
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton8" runat="server" BorderStyle="Inset" Height="220px" ImageUrl="https://static.vecteezy.com/system/resources/previews/024/553/569/non_2x/dreamcatcher-boho-style-magic-ritual-dreams-dreamcatcher-decorated-astrology-spirituality-magic-symbol-ethnic-tribal-element-ai-generated-png.png" OnClick="ImageButton8_Click" Width="300px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton9" runat="server" BorderStyle="Inset" Height="220px" ImageUrl="https://cdn.britannica.com/72/223172-131-C3F72804/astrology-horoscope-circle.jpg" OnClick="ImageButton9_Click" Width="300px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <div class="news-container">
                    <asp:Repeater ID="NewsRepeater" runat="server">
                        <ItemTemplate>
                            <div class="news-item">
                                <img src="<%# Eval("ImageUrl") %>" alt="News Image" />
                                <div class="news-title"><%# Eval("Title") %></div>
                                <div class="news-description"><%# Eval("Description") %></div>
                                <asp:HyperLink runat="server" NavigateUrl='<%# Eval("Link") %>' Text="Read more" Target="_blank" />
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                 </div>
               

                <asp:Panel ID="Panel3" runat="server" BackColor="#AD88C6" Height="66px">
                    
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="45px" ImageUrl="https://store-images.s-microsoft.com/image/apps.37935.9007199266245907.b029bd80-381a-4869-854f-bac6f359c5c9.91f8693c-c75b-4050-a796-63e1314d18c9" Width="50px" />
                    &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" Height="45px" ImageUrl="https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Instagram_logo_2022.svg/800px-Instagram_logo_2022.svg.png" Width="48px" />
                    &nbsp;<asp:ImageButton ID="ImageButton3" runat="server" Height="45px" ImageUrl="https://store-images.s-microsoft.com/image/apps.60673.9007199266244427.4d45042b-d7a5-4a83-be66-97779553b24d.5d82b7eb-9734-4b51-b65d-a0383348ab1b?h=464" Width="50px" />
                    &nbsp;<asp:ImageButton ID="ImageButton4" runat="server" Height="45px" ImageUrl="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuWEnDf_nJE8d51xaxM8KP-jJmJxCoencSG5ss1ZpHuw&amp;s" Width="60px" />
                    &nbsp;
                </asp:Panel>
            </asp:Panel>
        </div>

        
    </form>

</body>
</html>
