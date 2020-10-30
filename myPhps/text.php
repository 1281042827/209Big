<?php 

	include_once 'inc/config_inc.php';
	include_once 'inc/mysql_inc.php';
	
	$link = Mysql_inc_connect();//首先建立好与数据库的连接
	$error=null;//默认无错误
	$success=null;//返回的数组
	
    //$myname =$_POST['module_name'];
   // $mysort =$_POST['sort'];
    //$query = "insert into father_module (module_name,sort) values( '$myname', '$mysort' );";
	$query = "insert into father_module (module_name,sort) values( '{$_POST["module_name"]}', {$_POST["sort"]} );";

    //$query = "insert into father_module (module_name,sort) values( '嗷嗷嗷', 1 );";
    $success =Mysql_inc_execute_bool($link,$query);
	
	//var_dump($success);
	//var_dump(json_encode($success) );
	echo json_encode($success);
?>