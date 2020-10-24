<?php 
	//本文件的功能:

	// config_inc.php 是所有php文件都要导入的基本配置文件
	// mysql_inc.php 是实现写好的数据库操作文件，里面有封装好的函数
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
	//可恶，mysqli_query函数无法连续执行，所有2、3、4个样例只能分批次测试
	//这个bug的解释见https://blog.csdn.net/weixin_34302798/article/details/92033851
	$query_arr[]=$query;
	$query_arr[]=$query;
	if(!Mysql_inc_execute_multi($link,$query_arr,$error) ){
		echo $error;
	}
	echo '4<hr>';
	
	$arr=array(
		0=>"abc",
		1=>array(0=>$query),
		2=>'222',
		3=>array(
			0=>'444_0""0',
			1=>'555',
			2=>array('1__1"','22_2"2')
		)
	);
	var_dump(Mysql_inc_escape($link, $arr) );
	echo '6<hr>';
	
	
	var_dump(Mysql_inc_get_line_num($link,'father_module') );
	echo '6<hr>';
	
	var_dump(Mysql_inc_close_connect($link));
	echo '7<hr>';
?>