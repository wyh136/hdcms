<?php namespace system\middleware;

use houdunwang\request\Request;
use system\model\Modules;

/**
 * CMS系统初始中间件
 * Class Initialize
 * @package system\middleware
 * @author 向军 <2300071698@qq.com>
 * @site www.houdunwang.com
 */
class Initialize {

	public function run() {
//		p(Session::all());
		//安装检测
		if ( is_file( 'install.php' ) ) {
			go( __ROOT__ . '/install.php' );
		}
		//异步时隐藏父模板
		IS_AJAX and c( 'view.blade', false );
		//初始站点数据
		\Site::siteInitialize();
		//初始模块数据
		\Module::moduleInitialize();
		//加载系统配置项,是系统配置不是站点配置
		$this->loadConfig();
		//后台用户
		\User::initUserInfo();
		//前台用户
		\Member::initMemberInfo();
	}

	/**
	 * 加载系统配置项
	 * 只加载系统配置不加载网站配置
	 */
	protected function loadConfig() {
		$config             = Db::table( 'config' )->field( 'site,register' )->first();
		$config['site']     = json_decode( $config['site'], true );
		$config['register'] = json_decode( $config['register'], true );
		v( 'config', $config );
		//上传配置
		c( 'upload', array_merge( c( 'upload' ), v( 'config.site.upload' ) ) );
		c( 'app', array_merge( c( 'app' ), v( 'config.site.app' ) ) );
	}
}