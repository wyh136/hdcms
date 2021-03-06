<extend file="resource/view/site"/>
<block name="content">
    <ul class="nav nav-tabs">
        <li role="presentation" class="active"><a href="#">会员中心参数</a></li>
    </ul>
    <form action="" method="post" class="form-horizontal" onsubmit="post(event)">
        <div class="alert alert-success">
            系统会根据移动端或桌面端响应不同页面，会员中心登录模板在 ucenter 目录中,二次开发人员可参考系统默认登录风格，开发出符合自己网站风格的登录/注册界面。
            <br/><a href="{{url('entry.login',[],'ucenter')}}" target="_blank">会员登录</a>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                会员注册选项
            </div>
            <div class="panel-body">
                <div class="form-group">
                    <label class="col-sm-2 control-label">注册方式</label>
                    <div class="col-sm-10">
                        <label class="radio-inline">
                            <input type="radio" name="register" value="1" {{v('site.setting.register')==1?'checked="checked"':""}}>
                            手机注册
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="register" value="2" {{v('site.setting.register')==2?'checked="checked"':""}}>
                            邮箱注册
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="register" value="3" {{v('site.setting.register')==3?'checked="checked"':""}}>
                            手机或邮箱注册
                        </label>
                        <span class="help-block">
                              该项设置用户注册时用户名的格式,如果设置为:"邮箱注册",系统会判断用户的注册名是否是邮箱格式,不选时没有注册表单项
                          </span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">验证</label>
                    <div class="col-sm-10">
                        <label class="checkbox-inline">
                            <input type="checkbox" name="register_option[valid_code]" value="1" {{v('site.setting.register_option.valid_code')==1?'checked="checked"':""}}>
                            开启验证
                        </label>
                        <span class="help-block">
                            开启验证将向用户发送验证码，验证通过后才可以完成注册。<br/>
                            用户填写的是邮箱将发送邮件，如果是手机号将向用户手机发送验证码<br/>
                            <br/>邮箱验证需要先进行 <a href="{{site_url('site/setting/mail')}}">邮件通知设置</a>
                            短信验证需要先进行 <a href="{{site_url('site/setting/mobile')}}">短信通知设置</a>
                        </span>
                    </div>
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                会员登录选项
            </div>
            <div class="panel-body">
                <div class="form-group">
                    <label class="col-sm-2 control-label">帐号密码登录</label>
                    <div class="col-sm-10">
                        <label class="checkbox-inline">
                            <input type="checkbox" name="username_login" value="1" {{v('site.setting.username_login')==1?'checked="checked"':""}}>
                            开启
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">第三方登录</label>
                    <div class="col-sm-10">
                        <label class="checkbox-inline">
                            <input type="checkbox" name="oauth_login[wechat]" value="1" {{v('site.setting.oauth_login.wechat')==1?'checked="checked"':""}}">
                            微信登录
                        </label>
                        <span class="help-block">
                            当设置为"微信登录"时需要站点的微信号已经认证。
                        </span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">微信客户端设置</label>
                    <div class="col-sm-10">
                        <label class="radio-inline">
                            <input type="radio" name="wechat_login" value="button" {{v('site.setting.wechat_login')=='button'?'checked="checked"':""}}>
                            登录按钮
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="wechat_login" value="auto" {{v('site.setting.wechat_login')=='auto'?'checked="checked"':""}}>
                            自动登录
                        </label>
                        <span class="help-block">
                              微信APP登录的处理方式,如果选择 "自动登录" 时系统自动使用微信号登录<br/>
                            需要站点的微信号是认证服务号。<br/>
                            需要将登录方式选择为 "微信登录" 才有效。
                          </span>
                    </div>
                </div>
            </div>
        </div>
        <button class="btn btn-primary col-lg-1">保存设置</button>
    </form>
</block>
<script>
    function post(event) {
        event.preventDefault();
        require(['util'], function (util) {
            util.submit({successUrl: 'refresh'});
        })
    }
</script>