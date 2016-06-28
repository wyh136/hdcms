<extend file="resource/view/site"/>
<link rel="stylesheet" href="ucenter/css/ucenter.css">
<link rel="stylesheet" href="{{__TEMPLATE__}}/ucenter/css.css">
<block name="content">
	<form action="" method="post" id="form" class="ng-cloak form-horizontal" ng-cloak ng-submit="submit()" ng-controller="commonCtrl">
		<ul class="nav nav-tabs" role="tablist">
			<li class="active"><a href="javascript:;">微站会员中心</a></li>
			<li><a href="{{site_url('quickmenu/post')}}">微站快捷导航</a></li>
		</ul>
		<div class="app clearfix">
			<div id="mobile" class="col-sm-4 ucenter">
				<div class="mobile-header text-center">
					<img src="resource/images/mobile_head_t.png">
				</div>
				<div class="member-center">
					<!--顶部会员信息-->
					<div ng-repeat="m in modules.all" ng-if="m['id']=='UCheader'" ng-init="tpl='widget-'+(m.id.toLowerCase())+'-display.html'"
					     ng-include="tpl">
					</div>
					<ul class="list-group">
						<a href="#" class="list-group-item"><i class="fa fa-suitcase"></i> 余额充值 <i class="fa fa-angle-right pull-right"></i></a>
						<a href="#" class="list-group-item"><i class="fa fa-pie-chart"></i> 我的折扣券 <i class="fa fa-angle-right pull-right"></i></a>
						<a href="#" class="list-group-item"><i class="fa fa-gift"></i> 我的代金券 <i class="fa fa-angle-right pull-right"></i></a>
					</ul>
					<!--菜单列表-->
					<div class="list-group" ng-controller="UCheader">
						<a href="@{{v.url}}" class="list-group-item" ng-repeat="v in menus">
							<i ng-class="v.css.icon"></i> @{{v.name}} <i class="fa fa-angle-right pull-right"></i>
						</a>
					</div>
					<div class="list-group">
						<a href="#" class="list-group-item"><i class="fa fa-mobile-phone"></i> 修改手机号 <i class="fa fa-angle-right pull-right"></i></a>
						<a href="#" class="list-group-item"><i class="fa fa-external-link"></i> 退出系统 <i class="fa fa-angle-right pull-right"></i></a>
						<a href="#" class="list-group-item"><i class="fa fa-film"></i> 地址管理 <i class="fa fa-angle-right pull-right"></i></a>
					</div>
					<!--组件列表-->
					<div id="module-lists" style="position: relative" dnd-list="modules.all">
						<div ng-repeat="m in modules.all" index="@{{m.index}}" ng-if="m['id'] && m['id']!='UCheader'"
						     dnd-draggable="m"
						     dnd-moved="modules.all.splice($index, 1)"
						     ng-class="{'module_item':true,module_active:m.index==modules.active.index}"
						     ng-init="displayTpl=('widget-'+(m.id.toLowerCase())+'-display.html')" ng-include="displayTpl">
						</div>
					</div>
				</div>
				<!--添加组件按钮-->
				<div class="app-module-list clearfix">
					<div class="arrow-top"></div>
					<ul ng-controller="moduleManage">
						<li ng-repeat="v in modules.config" ng-if="!v.issystem && v.id !='UCheader'" ng-click="addWidget(v['id'])">
							<a href="javascript:;" class="btn btn-default" ng-bind="v.name"></a>
						</li>
					</ul>
				</div>
				<!--添加组件按钮 end-->
			</div>
			<!--编辑区域-->
			<div class="slide col-sm-6" ng-repeat="m in modules.config" ng-show="m['id']==modules.active.id" id="@{{m.id}}"
			     ng-init="tpl='widget-'+(m.id.toLowerCase())+'-editor.html'">
				<div class="panel panel-default clearfix">
					<div class="panel-body">
						<div class="arrow-left"></div>
						<div ng-include="tpl"></div>
					</div>
				</div>
			</div>
			<!--编辑区域 end-->
		</div>
		<div style="margin-top: 20px;">
			<button type="submit" class="btn btn-primary">保存</button>
		</div>
	</form>
</block>

<script>
	require(['wapeditor'], function () {
		modules = <?php echo $modules ?: '[{"id":"UCheader","name":"会员主页","params":{"title":"会员中心","bgImage":"","description":"","thumb":""},"issystem":1,"index":0,"displayorder":0}]';?>;
		//动态菜单
		menus = <?php echo json_encode( $menusData );?>;
		$(function () {
			angular.bootstrap(document.getElementById('form'), ['app']);
		});
	});
</script>
