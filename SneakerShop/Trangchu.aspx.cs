using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SneakerShop
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                login.InnerHtml = "<p class='user'>HELLO " + Session["username"].ToString().ToUpper() + " | " + "</p>" +
                                  "<a href = 'Dangxuat.aspx'> SIGN OUT </a>";

            }

            List<Product> ProductList = (List<Product>)Application["productList"];
            List<Product> banchay = new List<Product>();
            List<Product> phobien = new List<Product>();

            foreach (Product product in ProductList)
            {
                string id = product.Id;
                if (id == "1" || id == "2" || id == "3" || id == "4" )
                {
                    banchay.Add(product);
                }
                /*
                if (id == "10" || id == "11" || id == "12" || id == "13" || id == "14" )
                {
                    phobien.Add(product);
                }    */
            }
            sanphambanchay.DataSource = banchay;
            sanphambanchay.DataBind();
           /* sanphamphobien.DataSource = phobien;
            sanphamphobien.DataBind();*/
        }
    }
}