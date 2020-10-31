<?php 

	include_once 'inc/config_inc.php';
	include_once 'inc/mysql_inc.php';
	
	$link = Mysql_inc_connect();//首先建立好与数据库的连接
	$error=null;//默认无错误
	$success=null;//返回的数组
    
    {
        $table_name=array("father_module","son_module","content","reply","member","admin");
        foreach($table_name as $i=>$tn){
            $query ="select count(*) from $tn";
            $result =Mysql_inc_execute($link,$query);

            $count =mysqli_num_rows($result);//获取行数

            $success[$tn."_count"]=$count;//添加行数到数组里

            //array_push($success,$tn."_count",$count);//添加行数到数组里
        }

    }
	
	//var_dump($success);
	//var_dump(json_encode($success) );
	echo json_encode($success);
?>