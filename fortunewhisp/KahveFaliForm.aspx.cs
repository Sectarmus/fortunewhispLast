using System;
using System.IO;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace fortunewhisp
{
    public partial class KahveFaliForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonGonder_Click(object sender, EventArgs e)
        {
            string isim = TextBoxIsim.Text;
            string soyisim = TextBoxSoyisim.Text;
            string yas = TextBoxYas.Text;

            if (FileUploadFincan.HasFile)
            {
                string fileName = Path.GetFileName(FileUploadFincan.PostedFile.FileName);
                string filePath = Server.MapPath("~/Uploads/" + fileName);
                Directory.CreateDirectory(Server.MapPath("~/Uploads/")); // Ensure the directory exists
                FileUploadFincan.SaveAs(filePath);

                // Fal yorumlarını yükle
                List<string> falYorumlari = LoadFalYorumlari(Server.MapPath("~/Fal.xml"));

                // Rastgele bir yorum seç
                string randomYorum = falYorumlari.Count > 0 ? falYorumlari[new Random().Next(falYorumlari.Count)] : "Fal yorumları bulunamadı.";

                // Verileri işleyin ve fal yorumunu oluşturun
                string yorum = $"İsim: {isim}<br />Soyisim: {soyisim}<br />Yaş: {yas}<br />Yüklenen Dosya: {fileName}<br /><br />Fal Yorumunuz: {randomYorum}";

                // Sonucu göstermek için ResultPanel'i doldurun ve görünür yapın
                ResultLiteral.Text = yorum;
                ResultPanel.Visible = true;
            }
        }

        private List<string> LoadFalYorumlari(string xmlFilePath)
        {
            List<string> yorumlar = new List<string>();
            XmlDocument doc = new XmlDocument();
            try
            {
                doc.Load(xmlFilePath);
                XmlNodeList nodes = doc.SelectNodes("/kahveFali/yorum/icerik");
                foreach (XmlNode node in nodes)
                {
                    yorumlar.Add(node.InnerText.Trim());
                }
            }
            catch (Exception ex)
            {
                // Hata durumunda loglama veya hata mesajı gösterebilirsiniz
                yorumlar.Add($"Hata: {ex.Message}");
            }
            return yorumlar;
        }
    }
}
