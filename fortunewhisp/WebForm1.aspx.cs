using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Xml;

namespace fortunewhisp
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Username"] != null)
                {
                    lblWelcome.Text = "Hoş geldiniz, " + Session["Username"];
                    lblWelcome.Visible = true;
                    btnsignin.Visible = false;
                    btnsignup.Visible = false;
                    btnsignout.Visible = true;
                }
                LoadNews();
            }
        }

        protected void btnsignin_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignIn.aspx");
        }

        protected void btnsignup_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }

        protected void btnsignout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("WebForm1.aspx");
        }

        private void LoadNews()
        {
            ArrayList newsList = new ArrayList();
            string url = "https://www.haberturk.com/rss/kategori/astroloji.xml";

            XmlDocument doc = new XmlDocument();
            doc.Load(url);

            XmlNodeList nodes = doc.SelectNodes("//item");

            int maxNewsCount = 4;
            int currentCount = 0;

            foreach (XmlNode node in nodes)
            {
                if (currentCount >= maxNewsCount)
                    break;

                string title = node.SelectSingleNode("title").InnerText;
                string description = node.SelectSingleNode("description").InnerText;
                string imageUrl = node.SelectSingleNode("enclosure")?.Attributes["url"]?.Value ?? "No Image";
                string link = node.SelectSingleNode("link").InnerText;

                News news = new News(newsList.Count + 1, title, description, imageUrl, link);
                newsList.Add(news);

                currentCount++;
            }

            NewsRepeater.DataSource = newsList;
            NewsRepeater.DataBind();
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("KahveFaliForm.aspx");
        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("TarotFaliForm.aspx");
        }

        protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("ElFaliForm.aspx");
        }

        protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("DreamInterpretationForm.aspx");
        }

        protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("KatinaFaliForm.aspx");
        }
    }
}
