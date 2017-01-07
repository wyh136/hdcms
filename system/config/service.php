<?php
return [
	/*
	|--------------------------------------------------------------------------
	| 提供者
	|--------------------------------------------------------------------------
	| 服务提供者是用于生产服务实例的指令
	| 生成的服务实例会保存的系统的IOC窗口中便于全局调用
	*/
	'providers' => [
		'system\service\user\UserProvider'
	],

	/*
	|--------------------------------------------------------------------------
	| 外观
	|--------------------------------------------------------------------------
	| 定义了服务外观后可以不用实例化对象调用服务
	| 比如我们常用的View::with()指令
	| 就是因为定义了视图服务的View外观所以我们不用实例化对象就可以使用
	*/
	'facades'   => [
		'User' => 'system\service\user\UserFacade'
	]
];