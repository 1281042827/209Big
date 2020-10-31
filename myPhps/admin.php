<?php 

	include_once 'inc/config_inc.php';
	include_once 'inc/mysql_inc.php';
	
	$link = Mysql_inc_connect();//首先建立好与数据库的连接
	$error=null;//默认无错误
	$success=null;//返回的数组
	
	
	
	switch ($_POST['request_name']){//根据访问模块的名字执行操作

		case 'system':{
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
			
			//module_name是字符串，必须加单引号括起来！
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
			/*
			father_module_id	是	int	父版块id
			father_module_name	是	string	父版块名字
			module_name	是	string	版块名称
			info	是	string	版块简介
			member_id	是	int	版主id
			member_name
			sort	是	int	排序号*/
			
			//字符串的必须加单引号括起来！
			$query = "insert into son_module (father_module_id, father_module_name, module_name, info, member_id, member_name, sort) 
			VALUES ( '{$_POST["father_module_id"]}', '{$_POST["father_module_name"]}', '{$_POST["module_name"]}', '{$_POST["info"]}', '{$_POST["member_id"]}', '{$_POST["member_name"]}', '{$_POST["sort"]}' );";
			$success =Mysql_inc_execute_bool($link,$query);
		break;
		}
		case 'son_module_open':{
			$query = 'select * from father_module';
			$arr1=Mysql_inc_select_return_array($link,$query);
			$query = 'select * from member';
			$arr2=Mysql_inc_select_return_array($link,$query);

			$success=array("father_module"=>$arr1,"member"=>$arr2);
		break;
		}
	}
	

	//var_dump($success);
	//var_dump(json_encode($success) );
	echo json_encode($success);
?>