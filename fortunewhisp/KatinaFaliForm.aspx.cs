using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace fortunewhisp
{
    public partial class KatinaFaliForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void imgKoc_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://elle.com.tr/astroloji/koc");
        }

        protected void imgBoga_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://elle.com.tr/astroloji/boga");
        }

        protected void imgIkizler_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://elle.com.tr/astroloji/ikizler");
        }

        protected void imgYengec_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://elle.com.tr/astroloji/yengec");
        }

        protected void imgAslan_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://elle.com.tr/astroloji/aslan");
        }

        protected void imgBasak_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://elle.com.tr/astroloji/basak");
        }

        protected void imgTerazi_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://elle.com.tr/astroloji/terazi");
        }

        protected void imgAkrep_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://elle.com.tr/astroloji/akrep");
        }

        protected void imgYay_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://elle.com.tr/astroloji/yay");
        }

        protected void imgOglak_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://elle.com.tr/astroloji/oglak");
        }

        protected void imgKova_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://elle.com.tr/astroloji/kova");
        }

        protected void imgBalik_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://elle.com.tr/astroloji/balik");
        }

    }
}