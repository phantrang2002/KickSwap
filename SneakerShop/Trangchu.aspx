<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Trangchu.aspx.cs" Inherits="SneakerShop.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang chủ</title>
    <link href="Style/trangchu.css" rel="stylesheet" /> 
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
		<!-- <div class="header_mid">
			
		</div> -->
		<div class="header_bot" id="header-bot">
			<a href="Trangchu.aspx">
				<img class="imgLogo" width="200" height="80" src="images/logo.png" title="Logo">
			</a>
			<ul>
				<li><a href="Trangchu.aspx">HOME</a></li>
				
				<li><a href="giaynam.aspx">MEN'S</a></li>
				<li><a href="giaynu.aspx">WOMEN'S</a></li>
				<li><a href="Lienhe.aspx">CONTACT</a></li>
				<li><a href="gioithieu.aspx">ABOUT US</a></li>
				<li>
					<div class="gioHang"> 
						<a href="Giohang.aspx">CART</a>

					</div>



				</li>
				 
				<a href="javascript:void(0);" style="font-size:35px;" class="icon" onclick="responsive() ">&#9776;</a>
			</ul>
		</div>
	</div>

	<div class="banner">
		<div class="noidung_banner">
				<h2>Kick Swap</h2>
				<h1>Your perfect buddy</h1>
				<p>Since 2012, our shop has been founded. With everything from classic white kicks to major trend-right sneakers, discover the one-stop shop to level up your sneaker game. More arriving daily.</p>
				<h2>Join us!</h2>
		</div>
		<img id="img" src="images/banner-1.jpg" width="auto">
	</div>

	<div class="slogan">
		<center> <p><i> " Life isn't perfect, <br />
		but your sneaker can be ! " </i> </p>  </center>

	</div>


	 <div class="giay-section">
		<div class="left">
			<div class="p_giay">
				<h2>Perfect for a man</h2>
				<h1>Men's</h1>
				 <button class="shop-now"><a href="giaynam.aspx">Shop now </a></button>
				
			</div>
		</div>
		<div class="right">
			<div class="p_giay">
				<h2>Just for a woman</h2>
				<h1>Women's</h1>
				<button class="shop-now"><a href="giaynu.aspx">Shop now </a></button>
			</div>
		</div>
	</div>

	
	


	<h1 class="fp">FEATHER PRODUCTS</h1>
	<div class="sanpham">
			<asp:ListView ID="sanphambanchay" runat="server">
				<ItemTemplate>
					<div class="sanphambanchay">
					<a href="Trangsanphamchitiet.aspx?id=<%# Eval("Id") %>">
						<img id="anh1" width="200" height="80" src="<%# Eval("Images") %>" title="Giày">
						<div class="sanphambanchay_gia" id="sanpham1">
							<strong id="ten1"><%# Eval("Name") %></strong>
							<p id="gia1"><%# Eval("Price") %>$</p>
						</div>
					</a>
					</div>
				</ItemTemplate>
			</asp:ListView>
	</div>

 

	 
	 <h1 class="tintuc-title">CATCH THE WORLD TRENDING</h1>
	
	<div class="trending">
		
 	 
		<img src="images/banner-fire.png" title="Banner" width="auto">
 
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




	<script>
        var i = 1;
		function chuyenhinh() {
            var hinh = ["images/banner-af1.png", "images/banner-fr.png" ];
            document.getElementById('img').src = hinh[i];
            i++;
            if (i > 1) {
                i = 0;
            }
            setTimeout(chuyenhinh, 3*1000);
		}
        chuyenhinh()
		function responsive()
		{
			var x = document.getElementById("header-bot");
			if (x.className === "header_bot"){
				x.className += "responsive";
			}
			else {
				x.className = "header_bot";
            }
		}
    </script>
</body>
</html>
