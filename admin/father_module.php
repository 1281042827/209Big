<?php 
	//本文件的功能:

	// config_inc.php 是所有php文件都要导入的基本配置文件
	// mysql_inc.php 是实现写好的数据库操作文件，里面有封装好的函数
	include_once '../inc/config_inc.php';
	include_once '../inc/mysql_inc.php';

		
?>


<?php include_once 'inc/header_inc.php'; 
//导入这个写好的网页，可以看到网页的上面和左面。admin/inc目录下的每个.php版块都要导入这两个文件，因为
//它们的这两块部分是一致的
?>
<?php include_once 'inc/footer_inc.php'; ?>
