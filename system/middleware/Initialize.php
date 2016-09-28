<?php namespace system\middleware;
use system\model\Site;

class Initialize {
	//执行中间件
	public function run() {
		//异步时隐藏父模板
		IS_AJAX and c( 'view.blade', FALSE );
		//前台访问
		Session::set( 'is_member', isset( $_GET['t'] ) && $_GET['t'] == 'web' );
		//加载系统配置项,对是系统配置不是站点配置
		$this->loadConfig();
		//域名检测
		$this->checkDomain();
		$this->moduleInitialize();
		$this->siteInitialize();
	}

	//加载系统配置项
	protected function loadConfig() {
		$config = Db::table( 'config' )->find( 1 );
		$site   = json_decode( $config['site'], TRUE );
		//设置上传配置
		c( 'upload', array_merge( c( 'upload' ), $site['upload'] ) );
	}

	//域名检测
	protected function checkDomain() {
//		if ( empty( $_SERVER['QUERY_STRING'] ) ) {
//			$domain = 'http://' . trim( $_SERVER['HTTP_HOST'], '/' );
//			if ( $web = Db::table( 'web' )->where( 'domain', $domain )->first() ) {
//				$_GET['siteid'] = $web['siteid'];
//				$_GET['webid']  = $web['id'];
//				$_GET['a']      = 'entry/home';
//				$_GET['m']      = 'article';
//				$_GET['t']      = 'web';
//			}
//		}
	}

	//模块初始化
	protected function moduleInitialize() {
		if ( $name = q( 'get.m' ) ) {
			v( 'module', Db::table( 'modules' )->where( 'name', $name )->first() );
		}
		//扩展模块访问
		if ( ! empty( $_GET['a'] ) ) {
			$_GET['s'] = 'site/module/entry';
		}
	}

	//站点初始化
	protected function siteInitialize() {
		$siteModel = new Site();
		//缓存站点数据
		$siteid = q( 'get.siteid', Session::get( 'siteid' ), 'intval' );
		if ( $siteid ) {
			Session::set( 'siteid', $siteid );
			if ( $siteModel->find( $siteid ) ) {
				define( 'SITEID', $siteid );
				//加载站点缓存
				$siteModel->loadSite();
				//设置配置
				Config::set( 'mail', v( 'setting.smtp' ) );
			} else {
				Session::del( 'siteid' );
				message( '你访问的站点不存在', 'back', 'error' );
			}
			//微官网首页
			define( '__HOME__', web_url( 'entry/home', [ ], 'article' ) );
		}
	}
}