using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace fortunewhisp
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;

            if (AuthenticateUser(username, password))
            {
                Session["Username"] = username; // Kullanıcı adını oturumda sakla
                Response.Redirect("WebForm1.aspx");
            }
            else
            {
                lblErrorMessage.Text = "Invalid username or password.";
            }
        }

        private bool AuthenticateUser(string username, string password)
        {
            string xmlFilePath = Server.MapPath("~/Users.xml");
            XmlDocument doc = new XmlDocument();
            doc.Load(xmlFilePath);

            XmlNodeList users = doc.SelectNodes("/Users/User");

            foreach (XmlNode user in users)
            {
                string xmlUsername = user.SelectSingleNode("Username").InnerText;
                string xmlPassword = user.SelectSingleNode("Password").InnerText;

                if (xmlUsername == username && xmlPassword == password)
                {
                    return true;
                }
            }

            return false;
        }
    }
}
