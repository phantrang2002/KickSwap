using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace SneakerShop
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

            //tk mac dinh
            Application["Users"] = new List<NguoiDung>();
            List<NguoiDung> Users = (List<NguoiDung>)Application["Users"];
            Users.Add(new NguoiDung("thanhnam", "thanhnam@gmail.com", "thanhnam", "thanhnam"));
            Users.Add(new NguoiDung("huyhoang", "huyhoang@gmail.com", "huyhoang", "huyhoang"));
            Users.Add(new NguoiDung("nguyenhuy", "nguyenhuy@gmail.com", "nguyenhuy", "nguyenhuy"));
            Users.Add(new NguoiDung("duyhuy", "duyhuy@gmail.com", "duyhuy", "duyhuy"));

            //sanpham
            Application["ProductList"] = new List<Product>();
            List<Product> ProductList = new List<Product>();
            //san pham ban chay
            ProductList.Add(new Product() { Id = "1", Images = "../images/product-01.png", Name = "Adidas Stan Smith", Price = "35", Detail = "The shoe, usually made with a white leather upper and laces, has a simple design. Unlike most Adidas shoes, it does not have the external three stripes. Instead there are three rows of perforations (or punched ventilation holes) on both sides of each shoe's leather upper" });
            ProductList.Add(new Product() { Id = "2", Images = "../images/product-02.png", Name = "Jordan 'Fire Red'", Price = "280", Detail= "This Jordan 4 consists of a white leather upper with black and Fire Red detailing. Rubber netted underlays, black heel tabs with \"Nike Air\" branding, and black with fire red midsoles completes this design. These sneakers released in November of 2020 and retailed for $200." });
            ProductList.Add(new Product() { Id = "3", Images = "../images/product-03.png", Name = "YSL Opyum 110mm pumps", Price = "1028", Detail= "Set to elevate any after-dark ensemble, these Opium pumps from Saint Laurent are crafted from patent-leather for a high-shine finish. Set in black for easy pairing with a multitude of looks, they have a pointed toe and are finished with a brand embossed insole and a YSL logo heel." });
            ProductList.Add(new Product() { Id = "4", Images = "../images/product-04.png", Name = "D&G Velvet devotion slippers", Price = "537", Detail= "Feel like royalty slipping on these Velvet Devotion slippers from Dolce & Gabbana. Crafted from powder pink velvet, cotton and leather, it has a signature Sacred Heart logo plaque in gold-tone, embellished with faux pearls and a little bow. Enjoy them, Milady." });
           // ProductList.Add(new Product() { Id = "5", Images = "../images/product-03-300x300.png", Name = "Đồng hồ nam Classico", Price = "2000000", Detail = "Đồng hồ nam Casio MTP-1381L-9AVDF với kiểu dáng thời trang dành cho nam, kim chỉ và vạch số to rõ nổi bật trên mặt đồng hồ tròn to nam tính, phối cùng với dây đeo bằng da nâu lịch lãm." });
            /* san pham pho bien
            ProductList.Add(new Product() { Id = "10", Images = "../images/product-10.jpg", Name = "Đồng hồ nam Mathey", Price = "600000", Detail = "Đồng hồ nam Casio MTP-1381L-9AVDF với kiểu dáng thời trang dành cho nam, kim chỉ và vạch số to rõ nổi bật trên mặt đồng hồ tròn to nam tính, phối cùng với dây đeo bằng da nâu lịch lãm." });
            ProductList.Add(new Product() { Id = "11", Images = "../images/product-11.jpg", Name = "Đồng hồ nam Nibosi", Price = "200000", Detail = "Đồng hồ nam Casio MTP-1381L-9AVDF với kiểu dáng thời trang dành cho nam, kim chỉ và vạch số to rõ nổi bật trên mặt đồng hồ tròn to nam tính, phối cùng với dây đeo bằng da nâu lịch lãm." });
            ProductList.Add(new Product() { Id = "12", Images = "../images/product-02-300x300.png", Name = "Đồng hồ nam Casio", Price = "500000", Detail = "Đồng hồ nam Casio MTP-1381L-9AVDF với kiểu dáng thời trang dành cho nam, kim chỉ và vạch số to rõ nổi bật trên mặt đồng hồ tròn to nam tính, phối cùng với dây đeo bằng da nâu lịch lãm." });
            ProductList.Add(new Product() { Id = "13", Images = "../images/product-13.jpg", Name = "Đồng hồ nữ Citizen", Price = "500000", Detail = "Đồng hồ nam Casio MTP-1381L-9AVDF với kiểu dáng thời trang dành cho nam, kim chỉ và vạch số to rõ nổi bật trên mặt đồng hồ tròn to nam tính, phối cùng với dây đeo bằng da nâu lịch lãm." });
            ProductList.Add(new Product() { Id = "14", Images = "../images/product-14.jpg", Name = "Đồng hồ nữ Julius", Price = "1200000", Detail = "Đồng hồ nam Casio MTP-1381L-9AVDF với kiểu dáng thời trang dành cho nam, kim chỉ và vạch số to rõ nổi bật trên mặt đồng hồ tròn to nam tính, phối cùng với dây đeo bằng da nâu lịch lãm." });
           */
            
            //sanpham dong ho nam
            ProductList.Add(new Product() { Id = "5", Images = "../images/giaynam/product-05.png", Name = "D&G Stretch mesh sorrento", Price = "695", Detail = "The shoe, usually made with a white leather upper and laces, has a simple design. Unlike most Adidas shoes, it does not have the external three stripes. Instead there are three rows of perforations (or punched ventilation holes) on both sides of each shoe's leather upper" });
            ProductList.Add(new Product() { Id = "6", Images = "../images/giaynam/product-06.png", Name = "Nike LeBron 18 'Black Green'", Price = "200", Detail = "The shoe, usually made with a white leather upper and laces, has a simple design. Unlike most Adidas shoes, it does not have the external three stripes. Instead there are three rows of perforations (or punched ventilation holes) on both sides of each shoe's leather upper" });
            ProductList.Add(new Product() { Id = "7", Images = "../images/giaynam/product-07.png", Name = "Gucci Interlocking G", Price = "370", Detail = "The shoe, usually made with a white leather upper and laces, has a simple design. Unlike most Adidas shoes, it does not have the external three stripes. Instead there are three rows of perforations (or punched ventilation holes) on both sides of each shoe's leather upper" });
            ProductList.Add(new Product() { Id = "8", Images = "../images/giaynam/product-08.png", Name = "D&G Suede loafers", Price = "925", Detail = "The shoe, usually made with a white leather upper and laces, has a simple design. Unlike most Adidas shoes, it does not have the external three stripes. Instead there are three rows of perforations (or punched ventilation holes) on both sides of each shoe's leather upper" });
            ProductList.Add(new Product() { Id = "9", Images = "../images/giaynam/product-09.png", Name = "Gucci Double G", Price = "950", Detail = "The shoe, usually made with a white leather upper and laces, has a simple design. Unlike most Adidas shoes, it does not have the external three stripes. Instead there are three rows of perforations (or punched ventilation holes) on both sides of each shoe's leather upper" });
            ProductList.Add(new Product() { Id = "10", Images = "../images/giaynam/product-10.png", Name = "Mercurial Superfly 7", Price = "68", Detail = "The shoe, usually made with a white leather upper and laces, has a simple design. Unlike most Adidas shoes, it does not have the external three stripes. Instead there are three rows of perforations (or punched ventilation holes) on both sides of each shoe's leather upper" });


            //sanpham dong ho nu
            ProductList.Add(new Product() { Id = "11", Images = "../images/giaynu/product-11.png", Name = "Gucci Horsebit", Price = "790", Detail = "The shoe, usually made with a white leather upper and laces, has a simple design. Unlike most Adidas shoes, it does not have the external three stripes. Instead there are three rows of perforations (or punched ventilation holes) on both sides of each shoe's leather upper" });
            ProductList.Add(new Product() { Id = "12", Images = "../images/giaynu/product-12.png", Name = "D&G Nappa Leather", Price = "1245", Detail = "The shoe, usually made with a white leather upper and laces, has a simple design. Unlike most Adidas shoes, it does not have the external three stripes. Instead there are three rows of perforations (or punched ventilation holes) on both sides of each shoe's leather upper " });
            ProductList.Add(new Product() { Id = "13", Images = "../images/giaynu/product-13.png", Name = "Versace Safepin Pumps", Price = "950", Detail = "The shoe, usually made with a white leather upper and laces, has a simple design. Unlike most Adidas shoes, it does not have the external three stripes. Instead there are three rows of perforations (or punched ventilation holes) on both sides of each shoe's leather upper" });
            ProductList.Add(new Product() { Id = "14", Images = "../images/giaynu/product-14.png", Name = "Gucci Ballet Flat", Price = "890", Detail = " The shoe, usually made with a white leather upper and laces, has a simple design. Unlike most Adidas shoes, it does not have the external three stripes. Instead there are three rows of perforations (or punched ventilation holes) on both sides of each shoe's leather upper " });
            ProductList.Add(new Product() { Id = "15", Images = "../images/giaynu/product-15.png", Name = "Gucci Boots Tiger", Price = "569", Detail = "The shoe, usually made with a white leather upper and laces, has a simple design. Unlike most Adidas shoes, it does not have the external three stripes. Instead there are three rows of perforations (or punched ventilation holes) on both sides of each shoe's leather upper" });
            ProductList.Add(new Product() { Id = "16", Images = "../images/giaynu/product-16.png", Name = "Nike Air Zoom 2", Price = "153", Detail = "The shoe, usually made with a white leather upper and laces, has a simple design. Unlike most Adidas shoes, it does not have the external three stripes. Instead there are three rows of perforations (or punched ventilation holes) on both sides of each shoe's leather upper" });
            


            Application["ProductList"] = ProductList;

        }

        protected void Session_Start(object sender, EventArgs e)
        {
            /**Session["product"] = new List<Product>();**/
            Session["login"] = 0;
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}