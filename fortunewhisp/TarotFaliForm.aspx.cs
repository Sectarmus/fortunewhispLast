using System;
using System.Web.UI;

namespace fortunewhisp
{
    public partial class TarotFaliForm : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string selectedCards = HiddenFieldSelectedCards.Value;
                DisplaySelectedCards(selectedCards);
            }
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            // Diğer form işlemleri burada gerçekleştirilebilir.
        }

        private void DisplaySelectedCards(string selectedCards)
        {
            if (!string.IsNullOrEmpty(selectedCards))
            {
                string[] cardImages = selectedCards.Split(new char[] { ',' }, StringSplitOptions.RemoveEmptyEntries);
                foreach (string cardImage in cardImages)
                {
                    selectedCardsContainer.Controls.Add(new LiteralControl($"<div class='selected-card'><img src='{cardImage}' alt='Selected Card' /></div>"));
                }
            }
        }
    }
}
