using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SneakerShop
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                login.InnerHtml = "<p class='user'>HELLO " + Session["username"].ToString().ToUpper() + " | " + "</p>" +
                                  "<a href = 'Dangxuat.aspx'> SIGN OUT </a>";

            }
            List<Product> ProductList = (List<Product>)Application["productList"];
            List<Product> giaynam = new List<Product>();
            foreach (Product product in ProductList)
            {
                string id = product.Id;
                if (id == "1" || id == "2" || id == "5" || id == "6" || id == "7" || id == "8" || id == "9" || id == "10")
                {
                    giaynam.Add(product);
                }
            }
            giaynam1.DataSource = giaynam;
            giaynam1.DataBind();

        }
    }
}