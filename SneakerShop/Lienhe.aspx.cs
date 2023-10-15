using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SneakerShop
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                login.InnerHtml = "<p class='user'>HELLO " + Session["username"].ToString().ToUpper() + " | " + "</p>" +
                                  "<a href = 'Dangxuat.aspx'> SIGN OUT </a>";

            }
        }
    }
}