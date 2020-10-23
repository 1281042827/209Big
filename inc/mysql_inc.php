<?php 


//@ 连接数据库
//@ 参数均为同目录下config_inc.php文件定义好的常量
//@ 返回link对象
function Mysql_inc_connect($host=DB_HOST,$user=DB_USER,$password=DB_PASSWORD,$database=DB_DATABASE,$port=DB_PORT){
	$link=@mysqli_connect($host, $user, $password, $database, $port);
	if(mysqli_connect_errno()  ){
		echo '连接mysql失败！';
		exit(mysqli_connect_error()  );
	}
	mysqli_set_charset($link,'utf8');
	echo '连接mysql成功！';
	return $link;
}

//@ 执行一条sql语句
//@ p1：link对象，对象
//@ p2：sql语句，字符串
//@ 返回结果集result，执行失败则返回空
function Mysql_inc_execute($link,$query){
	$result=mysqli_query($link,$query);
	if(mysqli_errno($link)  ){
		echo '执行语句失败！';
		exit(mysqli_error($link)  );
	}
	echo '执行语句成功！';
	return $result;
}

//@ 执行一条sql语句
//@ p1：link对象，对象
//@ p2：sql语句，字符串
//@ 返回bool值，执行成功返回true，否则返回false
function Mysql_inc_execute_bool($link,$query){
	$bool=mysqli_real_query($link,$query);
	if(mysqli_errno($link)  ){
		echo 'cao';
		echo '执行语句失败！';
		exit(mysqli_error($link)  );
	}
	echo '执行语句成功！';
	return $bool;
}

// @一次性执行多条SQL语句
// p1：link对象，对象
// p2：多条语句，字符串数组
// p3：用于引用返回的错误信息，引用型字符串
// 执行成功返回结果集数组，否则返回bool值false
function Mysql_inc_execute_multi($link,$arr_sqls,&$error){
	$sqls=implode(';',$arr_sqls).';';
	
	var_dump($sqls);
	
	if(mysqli_multi_query($link,$sqls)){
		$data=array();
		$i=0;//计数
		do {
			if($result=mysqli_store_result($link)){
				$data[$i]=mysqli_fetch_all($result);
				mysqli_free_result($result);
			}else{
				$data[$i]=null;
			}
			$i++;
			if(!mysqli_more_results($link)) break;
		}while (mysqli_next_result($link));
		if($i==count($arr_sqls)){
			echo '执行语句成功';
			return $data;
		}else{
			$error="sql语句执行失败：<br />&nbsp;数组下标为{$i}的语句:{$arr_sqls[$i]}执行错误<br />&nbsp;错误原因：".mysqli_error($link);
			return false;
		}
	}else{
		$error='执行失败！请检查首条语句是否正确！<br />可能的错误原因：'.mysqli_error($link);
		return false;
	}
	
}

//@ 获取指定表的记录数
//@ p1：link对象，对象
//@ p2：表名，string
//@ 返回-1代表查询失败，否则返回表的记录数（字符串型)
function Mysql_inc_get_line_num($link,$list_name){
	$query='select count(*) from ';
	$query.=$list_name;//设置好查询语句
	$result=Mysql_inc_execute($link,$query);//执行查询语句
	$count=mysqli_fetch_row($result);//获取结果集
	return $count[0];//count数组的仅有的值就是表的行数
}

// 关闭与数据库的连接
// @p1：link对象，对象
// 无返回值
function Mysql_inc_close_connect($link){
	mysqli_close($link);
}
?>