<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Giohang.aspx.cs" Inherits="SneakerShop.Giohang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta charset="utf-8">
	<link rel="stylesheet" href="Style/giohang.css">
    <title>Cart</title>
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
				<li><a  href="gioithieu.aspx">ABOUT US</a></li>
				<li>
					<div class="gioHang"> 
						<a id="selected" href="Giohang.aspx">CART</a>

					</div>
			</li>			 
			</ul>
		</div>
	</div>

	<div class="main">
		<p class="sogiohang" id="sogiohang" runat="server"></p>
		<div class="cart_product">
			<table class="bang">
						<tr>
							<th>Photos</th>
							<th>Name</th>
							<th>Price</th>
							<th>Consider?</th>
						</tr>
			<asp:ListView ID="ListViewCart" runat="server">
				<ItemTemplate>
						<tr>
							<td class="td1"><img src= "<%# Eval("Images") %>" class="anh" /></td>
							<td><p><%# Eval("Name") %></p></td>
							<td><p><%# Eval("Price") %> $</p></td>
							<td><a href="Xoagiohang.aspx?id=<%#Eval("Id")%>" class="xoa"><button class="xoa">DELETE</button></a></td>
						</tr>
				</ItemTemplate>
			</asp:ListView>
			</table>
		</div>
		<div class="cart_price">
			<div class="cart--right">
                    <h2 class="cart__title--right">Your Order<br></h2>
                    <div class="cart__products-total-price">
                        <p>Product price:</p>
                        <p runat="server" id="products_price">0 <span class="cart__product-price-unit">$</span></p>
                    </div>

				<!--
                     <div class="cart__delivery-price">
                        <p>Tổng phí giao hàng</p>
                        <p runat="server" id="delivery_price"><span class="cart__product-price-unit">đ</span></p>
                    </div>
                    <hr> -->


                    <div class="cart__order-total">
                        <p>Total: </p>
                        <p runat="server" id="order_total_price">0 <span class="cart__product-price-unit">$</span></p>
                    </div>
                    <!-----<hr>--->
                    <div class="cart__buttons--right">
                        <button class="purchase-button" type="button">Purchase</button>
                    </div>
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
</body>

</html>

