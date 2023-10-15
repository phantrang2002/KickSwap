<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dangnhap.aspx.cs" Inherits="SneakerShop.WebForm3" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng nhập</title>
    <link href="Style/Dangnhap.css" rel="stylesheet" />
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
				<li><a href="gioithieu.aspx">ABOUT US</a></li>
				<li>
					<div class="gioHang"> 
						<a href="Giohang.aspx">CART</a>

					</div>
			</li>			 
			</ul>
		</div>
	</div>
    <div class="content">

            <div id="login-form" class="auth" >
                <form action="Dangnhap.aspx" method="post" runat="server">
                <div class="auth__header">
                    <h2>SIGN IN</h2>
                    <a href="Dangky.aspx">SIGN UP</a>
                </div>
                <div class="auth__form">
                    <div class="form-control">
                        <label for="username">Username</label>
                        <input type="text" id="usernameL" placeholder="Insert Username" name="usernameL">
                    </div>
                    <div class="form-control">
                        <label for="password">Password</label>
                        <input type="password" id="passwordL" placeholder="Insert Password" name="passwordL">
                    </div>
                    <p runat="server" id="errorL" style=" color:red"></p>
                    <button class="auth_btn" id="btnLogin" runat="server">Sign in</button>
                </div>
                </form>
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
	 
<script>
  
    btnLogin.onclick = function (e) {
        
        var valid = true;
        if (!(usernameL.value.trim() && passwordL.value.trim())) {
            valid = false;
          
        }
        if (!valid) {
            e.preventDefault();
            btn_error = document.getElementById("errorL");
            btn_error.innerHTML = "Điền đầy đủ tài khoản và mật khẩu";
        }   
        }
     

</script>
</body>
</html>

 