using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace fortunewh12
{
    public partial class DreamInterpretationForm : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GenerateAlphabetButtons();
            }
        }

        private void GenerateAlphabetButtons()
        {
            string alphabet = "ABCÇDEFGĞHIİJKLMNOÖPRSŞTUÜVYZ";
            alphabetButtons.Controls.Clear();
            foreach (char c in alphabet)
            {
                Button btn = new Button();
                btn.Text = c.ToString();
                btn.ID = "btn" + c;
                btn.Click += new EventHandler(AlphabetButtonRedirect_Click);
                alphabetButtons.Controls.Add(btn);
            }
        }

        protected void AlphabetButtonRedirect_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string letter = btn.Text;
            Response.Redirect($"https://www.milliyet.com.tr/pembenar/ruya-tabirleri/?search={letter}");
        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            string query = searchTextBox.Text;
            Response.Redirect($"https://www.milliyet.com.tr/pembenar/ruya-tabirleri/?search={query}");
        }
    }
}
