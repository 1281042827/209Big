<?php 

	include_once 'inc/config_inc.php';
	include_once 'inc/mysql_inc.php';
	
	$link = Mysql_inc_connect();//首先建立好与数据库的连接
	$error=null;//默认无错误
	$success=null;//返回的数组
	
	
	
	switch ($_POST['request_name']){//根据访问模块的名字执行操作

		case 'system':{
				//写好预处理语句，其中?是会改变的值
				$success;
				$table_name=array("father_module","son_module","content","reply","member","admin");
				foreach($table_name as $i=>$tn){
					$query ="select count(*) from $tn";
					$result =Mysql_inc_execute($link,$query);
					$count =mysqli_num_rows($result);//获取行数

					array_push($success,$tn."_count",$count);//添加行数到数组里
				}
			break;
		}

		case "father_module_list":{
			$query = 'select * from father_module';
			$success =Mysql_inc_select_return_array($link,$query);
		break;
		}
		case 'father_module_add':{
			
			$query = "insert into father_module (module_name,sort) VALUES ( '{$_POST["module_name"]}', {$_POST["sort"]} );";
			$success =Mysql_inc_execute_bool($link,$query);
		break;
		}
		case "son_module_list":{
			$query = 'select * from son_module';
			$success =Mysql_inc_select_return_array($link,$query);
		break;
		}
		case 'son_module_add':{

		break;
		}
	}
	

	//var_dump($success);
	//var_dump(json_encode($success) );
	echo json_encode($success);
?>