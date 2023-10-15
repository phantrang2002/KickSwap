<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gioithieu.aspx.cs" Inherits="SneakerShop.gioithieu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>Giới thiệu</title>
    <link href="Style/gioithieu.css" rel="stylesheet" />
</head>
<body>
     <div class="header">
		<div class="header_top" id="header-top">
			<img  src="images/Global.png" title="global">
			<p>English/USA</p>
			<div id="login" class="login" runat="server">
				<p class="user"></p>
				<a class="TrangDangNhap" href="Dangnhap.aspx" title="Đăng nhập">SIGN IN</a>
				<a href="Dangky.aspx" title="Đăng ký">SIGN UP</a>
			</div>	
		</div>
		 
		<div class="header_bot" id="header-bot">
			<a href="Trangchu.aspx">
				<img class="imgLogo" width="200" height="80" src="images/logo.png" title="Logo">
			</a>
			<ul>
				<li><a href="Trangchu.aspx">HOME</a></li>
				
				<li><a href="giaynam.aspx">MEN'S</a></li>
				<li><a href="giaynu.aspx">WOMEN'S</a></li>
				<li><a href="Lienhe.aspx">CONTACT</a></li>
				<li><a id="selected" href="gioithieu.aspx">ABOUT US</a></li>
				<li>
					<div class="gioHang"> 
						<a href="Giohang.aspx">CART</a>

					</div>
			</li>			 
			</ul>
		</div>
	</div>

    <div class="gioithieu">
        <div class="gioithieu_column_one">
            <img src="images/about-kick.jpg" alt="lỗi" width="100%">
        </div>
        <div class="gioithieu_column_two">
            <h2>About KickSwap</h2>
            <span>
                “Through SNS Label we can creatively transform our curiosity for new things, and our passion for heritage into items. A mix between full apparel collections or just that one special thing is being released on a regular cadence. Some items are meant to never run out of stock, and some things are made in very limited runs and sells out on launch. Since the launch of the first footwear collaboration in 2003 (with Puma) SNS has worked on over 200 collaborative projects with all major footwear brands such as Nike, Jordan Brand, adidas, New Balance, Converse, Reebok, Vans and more.”
            </span>
        </div>
    </div>
    <div class="section_content">
        <div class="section_item">
            <div class="section_child">
                <h3>Authentic</h3>
                <span>Nowadays, shoes are an essential fashion accessory for today's modern people</span>
            </div>
            <div class="section_child">
                <h3>New product</h3>
                <span>Nowadays, shoes are an essential fashion accessory for today's modern people</span>
            </div>
            <div class="section_child">
                <h3>12 months warranty</h3>
                <span>Nowadays, shoes are an essential fashion accessory for today's modern peopley</span>
            </div>
        </div>
        <div class="section_item">
            <div class="section_child">
                <h3>Free return within 7 daysy</h3>
                <span>Nowadays, shoes are an essential fashion accessory for today's modern people</span>
            </div>
            <div class="section_child">
                <h3>Free Shipping</h3>
                <span>
                    Nowadays, shoes are an essential fashion accessory for today's modern people
                </span>
            </div>
            <div class="section_child">
                <h3>Best price</h3>
                <span>Nowadays, shoes are an essential fashion accessory for today's modern people</span>
            </div>
        </div>
    </div>
    <div class="section_img">
        <img src="images/about-kick2.jpg" alt="photo" width="100%">
    </div>

    

     <div class="footer">
		<div class="footer_top">
			 
			<div class="footer-section">
				<h1>SHOP</h1>
				<ul>
					<li><a href="giaynam.aspx">MEN'S</a></li>
					<li><a href="giaynu.aspx">WOMEN'S</a></li>
					<li><a href="Lienhe.aspx">CONTACT</a></li>
					<li><a href="gioithieu.aspx">ABOUT US</a></li>
				</ul>
			</div>
			<div class="footer-section">
				<h1>FOR YOU</h1>
				<ul>
					<li><a href="#">FREQUENTLY ASKED QUESTION</a></li>
					<li><a href="#">SHIPPING</a></li>
					<li><a href="#">RETURNS AND EXCHANGES</a></li>
					<li><a href="#">SIZES GUIDES</a></li>
					<li><a href="#">GIFT CARDS</a></li>
				</ul>
			</div>
		</div>
		<div class="footer_bot">
			 
        		©Phan Thi Thu Trang - 2010A05
			 
		</div>
	</div>

</body>
</html>
