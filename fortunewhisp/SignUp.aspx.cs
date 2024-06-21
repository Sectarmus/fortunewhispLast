using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace fortunewhisp
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;
            string confirmPassword = txtConfirmPassword.Text;

            if (password != confirmPassword)
            {
                lblErrorMessage.Text = "Passwords do not match.";
                return;
            }

            if (!string.IsNullOrEmpty(username) && !string.IsNullOrEmpty(password))
            {
                string xmlFilePath = Server.MapPath("~/Users.xml");
                XmlDocument doc = new XmlDocument();

                if (!System.IO.File.Exists(xmlFilePath))
                {
                    XmlDeclaration xmlDeclaration = doc.CreateXmlDeclaration("1.0", "UTF-8", null);
                    XmlElement root = doc.CreateElement("Users");
                    doc.AppendChild(root);
                    doc.InsertBefore(xmlDeclaration, root);
                }
                else
                {
                    try
                    {
                        doc.Load(xmlFilePath);
                    }
                    catch (XmlException)
                    {
                        // XML dosyası bozuksa, yeni bir kök öğesi ile temiz bir XML oluştur
                        XmlElement root = doc.CreateElement("Users");
                        doc.AppendChild(root);
                    }
                }

                XmlElement userElement = doc.CreateElement("User");

                XmlElement usernameElement = doc.CreateElement("Username");
                usernameElement.InnerText = username;
                userElement.AppendChild(usernameElement);

                XmlElement passwordElement = doc.CreateElement("Password");
                passwordElement.InnerText = password;
                userElement.AppendChild(passwordElement);

                doc.DocumentElement.AppendChild(userElement);
                doc.Save(xmlFilePath);

                Response.Redirect("WebForm1.aspx");
            }
            else
            {
                lblErrorMessage.Text = "Username and Password are required.";
            }
        }
    }
}
