<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lienhe.aspx.cs" Inherits="SneakerShop.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Liên hệ</title>
    <link href="Style/Lienhe.css" rel="stylesheet" />
	<script>
        
        function ktra() {
            var ipTen = document.getElementById("usernameL").value;
			var ipEmail = document.getElementById("Email").value;
            var ipRv = document.getElementById("Review").value;
  
 
            if (ipTen == "") {
                alert('Fill your name');
                return false;
            }
            else if (ipEmail == "") {
                alert('Fill your Email');
                return false;
			}
            else if (ipRv == "") {
                alert('Fill your feedback');
                return false;
            }
            }
         
</script>

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
				<li><a id="selected" href="Lienhe.aspx">CONTACT</a></li>
				<li><a  href="gioithieu.aspx">ABOUT US</a></li>
				<li>
					<div class="gioHang"> 
						<a href="Giohang.aspx">CART</a>

					</div>
			</li>			 
			</ul>
		</div>
	</div>

    <form method="get" action="#" onsubmit="return ktra()">
        <div class="content">
            <div class="auth">
                <div class="auth__header">
                    <h2>Send Your Feedback</h2>
                </div>
                <div class="auth__form">
                    <div class="form-control">
                        <label for="username">Name</label>
                        <input type="text" id="usernameL">
                         
                    </div>
                    <div class="form-control">
                        <label for="Email">Email</label>
                        <input type="email" id="Email">
                        <p>Error message</p>
                    </div>
                    <div class="form-control">
                        <label for="Review">Feedback</label>
                        <textarea name="Review" id="Review" cols="5"></textarea>
                        <p>Error message</p>
                    </div>
                    <input type="submit" name="submit" class="auth_btn" id="btnLogin" value="Send"  />
					 
                </div>
            </div>
        </div>
    </form>


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
