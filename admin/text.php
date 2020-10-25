<?php 
	include_once '../inc/config_inc.php';
	include_once '../inc/mysql_inc.php';

	echo "<pre>";
	
	
	$link=Mysql_inc_connect();
	echo '1<hr>';
	
	$query='select * from father_module';
	
	/*var_dump(Mysql_inc_execute($link,$query) );
	echo '2<hr>';
	
	var_dump(Mysql_inc_execute_bool($link,$query) );
	echo '3<hr>';*/


	$query_arr[]=$query;
	$query_arr[]=$query;
	if(!Mysql_inc_execute_multi($link,$query_arr,$error) ){
		echo $error;
	}
	echo '4<hr>';
	

	
	var_dump(Mysql_inc_get_line_num($link,'father_module') );
	echo '5<hr>';
	
	var_dump(Mysql_inc_close_connect($link));
	echo '6<hr>';
?>