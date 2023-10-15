using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SneakerShop
{
    public partial class Giohang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                int soluot = Convert.ToInt32(Application["sogiohang"]);


                login.InnerHtml = "<p class='user'>HELLO " + Session["username"].ToString().ToUpper() + " | " + "</p>" +
                                  "<a href = 'Dangxuat.aspx'> SIGN OUT </a>";

                if (Request.Cookies["cart"] != null)
                {
                    List<Product> cartList = new List<Product>();
                    List<Product> productList = (List<Product>)Application["ProductList"];
                    string[] productsID = Request.Cookies["cart"].Value.Split(',');
                    foreach (string productID in productsID)
                    {
                        foreach (Product product in productList)
                        {
                            if (product.Id == productID)
                            {   
                                soluot ++;
                                cartList.Add(product);
                                
                            }
                        }
                        //sogiohang.InnerHtml = "<p> Số sản phẩm trong giỏ hàng là: " + soluot +"</p>";
                    }
                    ListViewCart.DataSource = cartList;
                    ListViewCart.DataBind();

                    //Display products price toan bo san pham
                    int productsPrice = 0;
                    foreach (Product product in cartList) productsPrice += Int32.Parse(product.Price);
                    products_price.InnerHtml = $"{productsPrice} <span class='cart__product-price-unit'>đ</span>";

                    //Display delivery price phi ship
                   // const int DELIVERY = 25000;
                    

                   // delivery_price.InnerHtml = $"{DELIVERY} <span class='cart__product-price-unit'>đ</span>";

                    //Display order total price
                   // int orderTotal = productsPrice + DELIVERY;
                    int orderTotal = productsPrice;
                    order_total_price.InnerHtml = $"{orderTotal} <span class='cart__product-price-unit'>đ</span>";
                }
                else
                {
                    Response.Redirect("Trangchu.aspx");
                }
            }
            else
            {
                Response.Redirect("Dangnhap.aspx");
            }
        }
    }
}