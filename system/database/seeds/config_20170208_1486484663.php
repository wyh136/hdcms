<?php namespace system\database\seeds;

use houdunwang\database\build\Seeder;

class config extends Seeder {
	//执行
	public function up() {
		$sql = <<<str
INSERT INTO `hd_config` (`id`, `site`, `register`)
VALUES
	(1,'{\"is_open\":\"1\",\"close_message\":\"网站维护中,请稍候访问\",\"enable_code\":\"0\",\"upload\":{\"mold\":\"local\",\"path\":\"attachment\",\"type\":\"jpg,jpeg,gif,png,zip,rar,doc,txt,pem,json\",\"size\":\"2000\"},\"app\":{\"debug\":\"1\"},\"http\":{\"rewrite\":\"0\"}}','{\"is_open\":\"1\",\"audit\":\"0\",\"enable_code\":\"0\",\"groupid\":\"1\"}');
str;
		Db::execute( $sql );
	}

	//回滚
	public function down() {

	}
}