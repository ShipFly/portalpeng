<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <@std.head><title>登录</title></@std.head>
    </head>
    <body>
        <div class="login-panel">
            <@s.form action="login-auth">
            <div class="errors">
                <@s.actionerror />
                <@s.fielderror />
            </div>
            <ul class="form">
                <li>
                    <span>用户名：</span>
                    <span> <@s.textfield name="username" size="20" /> </span>
                </li>
                <li>
                    <span>密　码：</span>
                    <span> <@s.password name="password" size="20" /> </span>
                </li>
                <#if authCounter.isOver()>
                <li>
                    <span>验证码：</span>
                    <span> <@s.textfield name="captcha.code" size="5" /> </span>
                    <span><a href="javascript:reloadCaptchaCode()" title="点击换一张图片"><img id="captchaCodeImage" src="<@s.url action="captcha-code-image" />" /></a></span>
                </li>
                </#if>
                <li class="login_btn">
                    <@s.submit value="登录" />
                </li>
            </ul>
            </@s.form>
        </div>
    </body>
    <#if authCounter.isOver()>
    <script>
function reloadCaptchaCode() {
var now = new Date().getTime();
$("#captchaCodeImage").attr("src", "<@s.url action="captcha-code-image" />?" + now);
}
    </script>
    </#if>
</html>