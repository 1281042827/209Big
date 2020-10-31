<?php 

	include_once 'inc/config_inc.php';
	include_once 'inc/mysql_inc.php';
	
	$link = Mysql_inc_connect();//首先建立好与数据库的连接
	$error=null;//默认无错误
	$success=null;//返回的数组
    
    {
        $query = "insert into son_module (father_module_id, father_module_name, module_name, info, member_id, member_name, sort) 
        VALUES ( '{$_POST["father_module_id"]}', '{$_POST["father_module_name"]}', '{$_POST["module_name"]}', '{$_POST["info"]}', '{$_POST["member_id"]}', '{$_POST["member_name"]}', '{$_POST["sort"]}' );";
        $success =Mysql_inc_execute_bool($link,$query);

    }
	
	//var_dump($success);
	//var_dump(json_encode($success) );
	echo json_encode($success);
?>