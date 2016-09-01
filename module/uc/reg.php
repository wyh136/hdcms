<?php
/** .-------------------------------------------------------------------
 * |  Software: [HDCMS framework]
 * |      Site: www.hdcms.com
 * |-------------------------------------------------------------------
 * |    Author: 向军 <2300071698@qq.com>
 * |    WeChat: aihoudun
 * | Copyright (c) 2012-2019, www.houdunwang.com. All Rights Reserved.
 * '-------------------------------------------------------------------*/
namespace module\uc;

use module\hdSite;
use system\model\Member;

class reg extends hdSite {
	protected $member;

	public function __construct() {
		parent::__construct();
		$this->member = new Member();
	}

	//注册页面
	public function doWebRegister() {

		if ( IS_POST ) {
			$res = Util::instance( 'member' )->register( $_POST );
			if ( ! $res['valid'] ) {
				message( $res['message'], 'back', 'error' );
			}
			message( '恭喜你,注册成功!系统将跳转到登录页面', web_url( 'login' ), 'success', 3 );
		}

		View::with( 'placeholder', v( 'setting.register.item' ) == 1 ? '手机号' : ( v( 'setting.register.item' ) == 2 ? '邮箱' : '手机号/邮箱' ) );
		View::make( $this->ucenter_template . '/register.html' );
	}

	//登录
	public function doWebLogin() {
		if ( IS_POST ) {
			$res = Util::instance( 'member' )->login( $_POST );
			if ( ! $res['valid'] ) {
				message( $res['message'], 'back', 'error' );
			}
			$backurl = q( 'get.backurl', web_url( 'entry/home', [ 'siteid' => SITEID ] ), 'htmlentities' );
			message( '登录成功', $backurl, 'success' );
		}
		//微信自动登录
		if ( IS_WEIXIN && v( 'wechat.level' ) >= 3 && v( 'setting.register.focusreg' ) == 1 ) {
			if ( $this->member->loginByOpenid() ) {
				$url = q( 'get.backurl', web_url( 'entry/home', [ 'siteid' => SITEID ] ) );
				go( $url );
			}
		}
		View::make( $this->ucenter_template . '/login.html' );
	}

	//使用微信openid登录
	public function doWEbOpenidLogin() {
		//微信自动登录
		if ( Util::instance( 'member' )->weixinLogin() ) {
			$url = q( 'get.backurl', web_url( 'entry/home', [ 'siteid' => SITEID ] ) );
			go( $url );
		}
		message( '微信登录失败,请检查微信公众号是否验证', 'back', 'error' );
	}

	//退出
	public function doWEbOut() {
		Session::flush();
		message( '退出成功', web_url( 'login' ), 'success', 1 );
	}

	//找回密码
	public function doWEbRetrieve() {

	}
}