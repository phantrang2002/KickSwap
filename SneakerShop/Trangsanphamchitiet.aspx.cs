using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
 

namespace SneakerShop
{
    public partial class Trangsanphamchitiet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                login.InnerHtml = "<p class='user'>HELLO " + Session["username"].ToString().ToUpper() + " | " + "</p>" +
                                  "<a href = 'Dangxuat.aspx'> SIGN OUT </a>";


            }
            string id = Request.QueryString.Get("id");
            
            if( id != null)
            {
                List<Product> ProductList = (List<Product>)Application["productlist"];
                List<Product> Productinformation = new List<Product>();
                foreach ( Product product in ProductList)
                {
                    if (id == product.Id)
                    {   
                        Productinformation.Add(product);

                    }
                    ListViewProductinformation.DataSource = Productinformation;
                    ListViewProductinformation.DataBind();
                }
            }
            else
            {
                Response.Redirect("Trangchu.aspx");
            }
        }
        protected void AddToCartButton(object sender, EventArgs e)
        {
            
            if (Session["username"] != null )
            {
                string id = Request.QueryString.Get("id");
                //Store cart to cookies
                if (Request.Cookies["cart"] == null)
                {   
                    Response.Cookies["cart"].Value = $"{id},";
                    Response.Cookies["cart"].Expires = DateTime.Now.AddDays(14);
                }
                else
                {
                    
                    //Store cookies by productID, example: 1,2,3,40,50,... 
                    Response.Cookies["cart"].Value = Request.Cookies["cart"].Value + $"{id},";
                    Response.Cookies["cart"].Expires = DateTime.Now.AddDays(14);
                }

                //Refresh to update cart number
                //Response.Redirect(Request.Url.ToString());
               // ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "msg", "alert('Added to your cart')", true);

                System.Web.UI.Page page = (System.Web.UI.Page)HttpContext.Current.Handler;

                page.ClientScript.RegisterStartupScript(this.GetType(), "a", "alert('Added to your cart');", true);



                //Themgio.InnerHtml = "Thêm thành công";
            }
            else
            {
                Response.Redirect("Dangnhap.aspx");
            }
        }
    }
}