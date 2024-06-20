using System;
using System.IO;
using System.Collections.Generic;
using System.Xml;

namespace fortunewhisp
{
    public partial class ElFaliForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            if (fileUpload.HasFile)
            {
                // Yüklenen fotoğrafın yolu
                string fileName = Path.GetFileName(fileUpload.PostedFile.FileName);
                string imagePath = "~/UploadedImages/" + fileName;

                // XML dosyasından rastgele fal yorumunu yükle
                string falYorumu = GetRandomFalYorumu(Server.MapPath("~/Fallar.xml"));

                // Yorumları TextBox'a ekle
                TextBoxComments.Text = $"Fal Yorumunuz: {falYorumu}";
            }
            else
            {
                // Fotoğraf yüklenmemişse uyarı mesajı göster
                TextBoxComments.Text = "Lütfen bir fotoğraf yükleyin.";
            }
        }

        private string GetRandomFalYorumu(string xmlFilePath)
        {
            List<string> yorumlar = new List<string>();
            XmlDocument doc = new XmlDocument();
            try
            {
                doc.Load(xmlFilePath);
                XmlNodeList nodes = doc.SelectNodes("/Fallar/Fal/Yorum");
                foreach (XmlNode node in nodes)
                {
                    yorumlar.Add(node.InnerText.Trim());
                }

                if (yorumlar.Count > 0)
                {
                    Random rnd = new Random();
                    int randomIndex = rnd.Next(yorumlar.Count);
                    return yorumlar[randomIndex];
                }
                else
                {
                    return "Fal yorumları bulunamadı.";
                }
            }
            catch (Exception ex)
            {
                return $"Hata: {ex.Message}";
            }
        }

    }
}