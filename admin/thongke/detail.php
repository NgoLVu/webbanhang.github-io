<?php
	$title = 'Thông Tin Chi Tiết Đơn Hàng';
	$baseUrl = '../';
	require_once('../layouts/header.php');
	

	$sql = "select * from Order_Details";
	$orderItem = executeResult($sql, true);
?>

<div class="row" style="margin-top: 20px;">
	<div class="col-md-12">
		<h3>Chi Tiết Đơn Hàng</h3>
	</div>
	<div class="col-md-8 table-responsive">
		<table class="table table-bordered table-hover" style="margin-top: 20px;">
			<thead>
				<tr>
					<th>STT</th>
					<th>Thumbnail</th>
					<th>Tên Sản Phẩm</th>
					<th>Giá</th>
					<th>Số Lượng</th>
					<th>Tổng Giá</th>
				</tr>
			</thead>
			<tbody>
<?php
	$index = 0;
	foreach($data as $item) {
		echo '<tr>
					<th>'.$item['id'].'</th>
					<td><img src="'.fixUrl($item['thumbnail']).'" style="height: 120px"/></td>
					<td>'.$item['title'].'</td>
					<td>'.$item['price'].'</td>
					<td>'.$item['num'].'</td>
					<td>'.$item['total_money'].'</td>
				</tr>';
	}
?>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<th>Tổng Tiền</th>
					<th><?=$orderItem['total_money']?></th>
				</tr>
			</tbody>
		</table>
	</div>
</div>
<?php
	require_once('../layouts/footer.php');
?>