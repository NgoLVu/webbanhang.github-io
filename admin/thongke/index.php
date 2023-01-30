<?php
	$title = 'Thống kê doanh thu';
	$baseUrl = '../';
	require_once('../layouts/header.php');

	//pending, approved, cancel
	//$sql = "select * from Order_Details";
	$sql="select Order_Details.id,Order_Details.order_id,product.title as title,Order_Details.price,Order_Details.num,Order_Details.total_money from ((Order_Details inner join Product on Order_Details.product_id=Product.id) inner join Orders on Order_Details.order_id=Orders.id) where Orders.status=1";
	$sqli="select sum(total_money) as TongTien from Orders where status=1";
	$data = executeResult($sql);
	$datas=executeResult($sqli);
?>

<div class="row" style="margin-top: 20px;">
	<div class="col-md-12 table-responsive">
		<h3>Thống kê doanh thu</h3>

		<table class="table table-bordered table-hover" style="margin-top: 20px;">
			<thead>
				<tr>
					<th>STT</th>
					<th>Đặt hàng</th>
					<th>Sản phẩm</th>
					<th>Giá</th>
					<th>số lượng</th>
					<th>Tổng tiền</th>
				</tr>
			</thead>
			<tbody>
<?php
	foreach($data as $item) {
		echo '<tr>
					<th>'.$item['id'].'</th>
					<td>'.$item['order_id'].'</td>
					<td>'.$item['title'].'</td>
					<td>'.$item['price'].'</td>
					<td>'.$item['num'].'</td>
					<td>'.$item['total_money'].'</td>
				</tr>';
	}
	foreach($datas as $item) {
		echo '  <tr>
				<th style="color:red;background:yellow">'.'Doanh Thu:'.$item['TongTien'].'</th>
				</tr>';
	}
?>
			</tbody>
		</table>
	</div>
</div>

<script type="text/javascript">
	function changeStatus(id, status) {
		$.post('form_api.php', {
			'id': id,
			'status': status,
			'action': 'update_status'
		}, function(data) {
			location.reload()
		})
	}
</script>

<?php
	require_once('../layouts/footer.php');
?>