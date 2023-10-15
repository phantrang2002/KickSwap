<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Trangsanphamchitiet.aspx.cs" Inherits="SneakerShop.Trangsanphamchitiet" %>

<!DOCTYPE aspx>

<aspx xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta charset="utf-8">
	<link rel="stylesheet" href="Style/Trangsanphamchitiet.css">
    <title>Đồng hồ Mona</title>
</head>
<body>
	<form id="form1" runat="server">
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
				
				<li><a  href="giaynam.aspx">MEN'S</a></li>
				<li><a href="giaynu.aspx">WOMEN'S</a></li>
				<li><a href="Lienhe.aspx">CONTACT</a></li>
				<li><a href="gioithieu.aspx">ABOUT US</a></li>
				<li>
					<div class="gioHang"> 
						<a href="Giohang.aspx">CART</a>

					</div>



				</li>
				 
				 
			</ul>
		</div>
	</div>
	<div>
	<div class="main">
		<asp:ListView ID="ListViewProductinformation" runat="server" >
			<ItemTemplate>
				<div class="anh">
					<img src="<%# Eval("Images") %>" title="ảnh đồng hồ">
				</div>

				<div class="content">
					<!--<p><a href="Trangchu.aspx">HOME</a> / <a href="giaynu.aspx">WOMEN'S SHOES</a></p> -->
					<h1 class="header-content"><%# Eval("Name") %></h1>
					<hr width="20px" />
					<p style="font-size:45px;color: #C89979;   " class="header-content"><b><%# Eval("Price") %> $ </b></p>
					<p class="header-content"><%# Eval("Detail") %>
					</p>
					<ul class="header-content">
						<li>Color: Original</li>
						<li>Categories: Shoes, Flat, Sneakers</li>
						<li>Size: 37, 38</li>
					</ul>
				</ItemTemplate>
		</asp:ListView>
		<div class="submit">
			<!--<p class="Themgio" name="Themgio" runat="server" id="Themgio" style="color:red"></p>-->
			<button type="submit" class="themvaogio" runat="server" ID="AddToCartButton1" onserverclick="AddToCartButton" >ADD TO CART</button>
		</div>
		</div>
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
		</form>
	
</body>
</aspx>
