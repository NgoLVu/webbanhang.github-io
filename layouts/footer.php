
<footer style="background-color: #00CCFF  !important; ">
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<h4>GIỚI THIỆU</h4>
				<ul>
					<li>LIÊN HỆ</li>
			<!--		<li><i class="bi bi-mailbox2"></i> ngovu2121@gmail.com</li>
					<li><i class="bi bi-telephone-fill"></i> 0382088863</li>
					<li><i class="bi bi-map-fill"></i> Thanh Hóa, Việt Nam</li>
				-->
				</ul>
			</div>
			<div class="col-md-4">
				<h4>SẢN PHẨM MỚI NHẤT</h4>
				<ul>
					<li>LIÊN HỆ </li>
			<!--		<li>Email: ngovu2121@gmail.com</li>
					<li>Phone:  0382088863</li>
					<li>Nhận làm đồ án</li> 
				-->
				</ul>
			</div>
			<div class="col-md-4">
				<h4>TIN TỨC MỚI NHẤT</h4>
				<ul>
					<li>LIÊN HỆ NV studio</li>
				<!--	<li>Email: ngovu2121@gmail.com</li>
					<li>Phone:  0382088863</li>
					<li>Nhận làm đồ án</li> -->
				</ul>
			</div>
		</div>
	</div>
</footer>

<?php
if(!isset($_SESSION['cart'])) {
	$_SESSION['cart'] = [];
}
$count = 0;
// var_dump($_SESSION['cart']);
foreach($_SESSION['cart'] as $item) {
	$count += $item['num'];
}
?>
<script type="text/javascript">
	function addCart(productId, num) {
		$.post('api/ajax_request.php', {
			'action': 'cart',
			'id': productId,
			'num': num
		}, function(data) {
			location.reload()
		})
	}
</script>
<!-- Cart start -->
<span class="cart_icon">
	<span class="cart_count"><?=$count?></span>
	<a href="cart.php"><img src="https://gokisoft.com/img/cart.png"></a>
</span>
<!-- Cart stop -->
</body>
</html>