<extend file="resource/view/system"/>
<block name="content">
	<ol class="breadcrumb">
		<li><i class="fa fa-home"></i></li>
		<li><a href="?s=system/manage/menu">系统</a></li>
		<li class="active">已经安装模块</li>
	</ol>
	<ul class="nav nav-tabs">
		<li role="presentation" class="active"><a href="#">站点操作员列表</a></li>
	</ul>
	<h5 class="page-header">设置可操作用户</h5>
	<div class="alert alert-info" role="alert">
		<span class="fa fa-info-circle"></span>
		操作员不允许删除公众号和编辑公众号资料，管理员无此限制
	</div>
	<div class="panel panel-default">
		<div class="panel-body table-responsive">
			<table class="table table-hover">
				<thead>
				<tr>
					<th width="60">选择</th>
					<th width="120">用户编号</th>
					<th width="200">用户名</th>
					<th width="250">角色</th>
					<th>操作</th>
				</tr>
				</thead>
				<tbody>
				<if value="$owner">
					<tr>
						<td><input type="checkbox" disabled="disabled" value="{{$owner['uid']}}" checked="checked"></td>
						<td>{{$owner['uid']}}</td>
						<td>{{$owner['username']}}</td>
						<td>站长</td>
						<td>
							站长拥有所有权限，并且网站的权限（模块、模板）根据站长来获取
						</td>
					</tr>
				</if>
				<foreach from="$users" value="$u">
					<tr>
						<td>
							<input type="checkbox" name="uid[]" value="{{$u['uid']}}">
						</td>
						<td>{{$u['uid']}}</td>
						<td>{{$u['username']}}</td>
						<td>
							<label class="radio-inline">
								<if value="$u['role']=='operate'">
									<input type="radio" name="role[{{$u['uid']}}]" value="operate" checked="checked">操作员
									<else/>
									<input type="radio" name="role[{{$u['uid']}}]" value="operate">操作员
								</if>
							</label>
							<label class="radio-inline">
								<if value="$u['role']=='manage'">
									<input type="radio" name="role[{{$u['uid']}}]" value="manage" checked="checked">管理员
									<else/>
									<input type="radio" name="role[{{$u['uid']}}]" value="manage">管理员
								</if>
							</label>
						</td>
						<td>
							<?php if ( \User::isSuperUser() ): ?>
								<a href="?s=system/user/edit&uid={{$u['uid']}}">编辑用户</a>&nbsp;|&nbsp;
							<?php endif; ?>
							<?php if ( \User::isManage() ) : ?>
							<a href="?s=system/permission/menu&siteid={{$_GET['siteid']}}&fromuid={{$u['uid']}}">设置权限</a>&nbsp;&nbsp;
							<?php endif; ?>
							<?php if ( \User::isSuperUser() ): ?>
								| <a href="?s=system/user/permission&uid={{$u['uid']}}">查看操作权限</a>
							<?php endif; ?>
						</td>
					</tr>
				</foreach>
				</tbody>
			</table>
			<br/>
			<button class="btn btn-default" onclick="getUsers()">选择帐号操作员</button>
			<button class="btn btn-default" onclick="deleteUser()">删除选中帐号</button>
		</div>
	</div>
</block>

<script>
	//更改角色
    require(['jquery'], function ($) {
        $(function () {
            $(":radio").change(function () {
                var role = $(this).val();
                var uid = $(this).parents('td').eq(0).prev().prev().text();
                $.post("?s=system/permission/changeRole&siteid={{$_GET['siteid']}}", {
                    role: role,
                    uid: uid
                }, function (response) {
                    if (response.valid) {
                        util.message(response.message, '', 'success');
                    } else {
                        util.message(response.message, '', 'error');
                    }
                }, 'json');
            });
        });
    });
	//选择帐号操作员
	function getUsers() {
		require(['hdcms', 'jquery', 'util'], function (hdcms, $, util) {
			//当前站点的管理员过滤掉不显示
			var filterUid = '<?php echo implode( ',', array_keys( User::getSiteRole( [
				'owner',
				'manage',
				'operate'
			] ) ) );?>';
			hdcms.getUsers(function (uid) {
				if (uid.length > 0) {
					$.post("?s=system/permission/addOperator&siteid={{SITEID}}", {uid: uid}, function (json) {
						if (json.valid == 1) {
							util.message(json.message, 'refresh', 'success');
						} else {
							util.message(json.message, '', 'error');
						}
					}, 'json')
				}
			}, filterUid);
		})
	}

	//删除帐号
	function deleteUser() {
		require(['util', 'jquery'], function (util, $) {
			util.modal({
				title: '系统提示',
				content: '确定从站点中删除选中的帐号吗?',
				footer: '<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>\
                <button type="button" class="btn btn-primary confirm" >确定</button>',
				events: {
					confirm: function () {
						var uids = [];
						$("[name='uid[]']:checked").each(function (i) {
							uids.push($(this).val());
						});
						$.post("?s=system/permission/removeSiteUser&siteid={{SITEID}}", {uids: uids}, function (json) {
							if (json.valid == 1) {
								util.message(json.message, 'refresh', 'success');
							} else {
								util.message(json.message, '', 'error');
							}
						}, 'json');
					}
				}
			})
		});
	}
</script>
