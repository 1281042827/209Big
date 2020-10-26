<?php 

	include_once '../inc/config_inc.php';
	include_once '../inc/mysql_inc.php';
	
	$link = Mysql_inc_connect();
	
	$query = 'select * from father_module';
	
	//$data_all =Mysql_inc_select_return_array($link, $query);
	
	$query= Mysql_inc_escape($link,$query);//转义
	$result = Mysql_inc_execute($link, $query);//执行
	$data_all=mysqli_fetch_all($result,MYSQLI_ASSOC);//获取结果集的信息，保存在数组
	
	echo json_encode($data_all);
?>