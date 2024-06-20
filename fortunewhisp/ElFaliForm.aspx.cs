using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace fortunewhisp
{
    public partial class ElFaliForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            if (fileUpload.HasFile) // Dosya seçilmiş mi kontrol ediyoruz
            {
                // Yüklenen fotoğrafın yolu
                string fileName = Path.GetFileName(fileUpload.PostedFile.FileName);
                string imagePath = "~/UploadedImages/" + fileName;

                // Yüklenen fotoğrafı sunucuya kaydet
                fileUpload.SaveAs(Server.MapPath(imagePath));

                // Yorum
                string comment = commentBox.Value;

                // Yapılan yorumu TextBox'a ekle
                TextBoxComments.Text += "Yorum: " + comment + Environment.NewLine;
                // Yüklenen fotoğrafı ekle
                TextBoxComments.Text += "Fotoğraf: " + imagePath + Environment.NewLine;
                TextBoxComments.Text += "----------------------------------------------" + Environment.NewLine;
            }
        }

    }
}