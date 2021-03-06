<?php namespace app\system\controller;

use system\model\User;
use system\model\UserPermission;

/**
 * 站点权限设置
 * Class Permission
 * @package app\system\controller
 * @author 向军 <2300071698@qq.com>
 * @site www.houdunwang.com
 */
class Permission {
	public function __construct() {
		\User::loginAuth();
	}

	//站点管理员设置
	public function users() {
		if ( ! \User::isManage() ) {
			message( '你没有功能的操作权限', 'back', 'error' );
		}
		//获取除站长外的站点操作员
		$users = \User::getSiteRole( [ 'manage', 'operate' ] );
		//移除当前用户,不允许给自己设置权限
		$uid = v( 'user.info.uid' );
		if ( isset( $users[ $uid ] ) ) {
			unset( $users[ $uid ] );
		}
		//站长数据
		$owner = \User::getSiteOwner( SITEID );

		return view()->with( [ 'users' => $users, 'owner' => $owner ] );
	}

	/**
	 * 添加站点操作员
	 * 只有系统管理员或站长可以执行这个功能
	 */
	public function addOperator() {
		if ( \User::isManage() ) {
			foreach ( q( 'post.uid', [] ) as $uid ) {
				if ( ! Db::table( "site_user" )->where( "uid", $uid )->where( "siteid", SITEID )->get() ) {
					Db::table( 'site_user' )->insert( [
						'siteid' => SITEID,
						'uid'    => $uid,
						'role'   => 'operate'
					] );
				}
			}
			record( '添加站点操作员' );
			message( '站点操作员添加成功', '', 'success' );
		}
		message( '你没有操作站点的权限', '', 'error' );
	}

	/**
	 * 更改会员的站点角色
	 * 需要站长或系统管理员才可以操作
	 */
	public function changeRole() {
		if ( \User::isManage() ) {
			$uid = \Request::post( 'uid' );
			Db::table( 'site_user' )->where( 'uid', $uid )
			  ->where( 'siteid', SITEID )->update( [ 'role' => $_POST['role'] ] );
			record( '更改了站点管理员角色类型' );
			message( '管理员角色更新成功', '', 'success' );
		} else {
			message( '你没有操作站点的权限', '', 'error' );
		}
	}

	//删除站点用户
	public function removeSiteUser() {
		if ( \User::isManage() ) {
			Db::table( 'site_user' )->where( 'siteid', SITEID )->whereIn( 'uid', Request::post( 'uids' ) )->delete();
			message( '站点管理员删除成功' );
		} else {
			message( '你没有操作站点的权限', '', 'error' );
		}
	}

	//设置菜单权限
	public function menu() {
		if ( ! \User::isManage() ) {
			message( '你没有操作权限', '', 'warning' );
		}
		//设置权限的用户
		$uid = Request::get( 'fromuid' );
		if ( IS_POST ) {
			//删除所有旧的权限
			UserPermission::where( 'siteid', SITEID )->where( 'uid', $uid )->delete();
			//系统权限
			if ( $system = Request::post( 'system' ) ) {
				$model               = new UserPermission();
				$model['siteid']     = SITEID;
				$model['uid']        = $uid;
				$model['type']       = 'system';
				$model['permission'] = implode( '|', $system );
				$model->save();
			}
			//模块权限
			if ( $modules = Request::post( 'modules' ) ) {
				foreach ( $modules as $module => $actions ) {
					$model               = new UserPermission();
					$model['siteid']     = SITEID;
					$model['uid']        = $uid;
					$model['type']       = $module;
					$model['permission'] = implode( '|', $actions );;
					$model->save();
				}
			}
			message( '权限设置成功', 'refresh', 'success' );
		}
		//系统菜单权限
		$menus       = \Menu::getUserMenuAccess( siteid(), $uid );
		$menusAccess = \Arr::channelLevel( $menus, 0, '', 'id', 'pid' );
		//模块权限
		$moduleAccess = \Module::getExtModuleByUserPermission( $uid );
		//模块权限
		return view()->with( compact( 'menusAccess', 'moduleAccess' ) );
	}
}