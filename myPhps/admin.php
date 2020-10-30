<?php 

	include_once 'inc/config_inc.php';
	include_once 'inc/mysql_inc.php';
	
	$link = Mysql_inc_connect();//首先建立好与数据库的连接
	$error=null;//默认无错误
	$success=null;//返回的数组
	
	
	
	switch ($_POST['request_name']){//根据访问模块的名字执行操作
		case "father_module_list":{
			$query = 'select * from sfk_father_module';
			$success =Mysql_inc_select_return_array($link,$query);
		}
		case 'aj2':{
			
		}
	}
	
	$success['error']=$error;
	echo json_encode($success);
?>