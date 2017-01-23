<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <title>登陆信息</title>

    <link href="${request.contextPath}/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<div style="background-color: whitesmoke;height: 650px">
    <div class="container" style="border:1px solid whitesmoke;background-color: white;height: 85%">
        <div class="row" style="margin-top: 80px;">
            <div class="col-sm-6"></div>
            <div class="col-sm-6" style="margin-left: -24px;"><h3 style="color: cornflowerblue">欢迎登陆</h3></div>
        </div>
        <div class="row"  style="margin-top: 40px;">
                <div class="col-sm-3"></div>
                <form class="form-horizontal col-sm-9" role="form" action="${request.contextPath}/register/doLogin.do">
                    <div class="form-group">
                        <label for="email" class="col-sm-2 control-label">邮箱</label>
                        <div class="col-sm-5">
                            <input type="email" name="email" class="form-control" id="email" placeholder="请输入您的邮箱地址">
                        </div>
                    </div>
                    <div class="form-group" style="margin-top: 30px;">
                        <label for="password" class="col-sm-2 control-label">密码</label>
                        <div class="col-sm-5">
                            <input type="password" class="form-control" name="password" id="password" placeholder="请输入您的邮箱密码">
                        </div>
                    </div>
                    <div class="form-group" style="margin-top: 30px;">
                        <label for="username" class="col-sm-2 control-label">用户名</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control" name="username" id="username" placeholder="请输入您的用户名">
                        </div>
                    </div>

                    <div class="form-group" style="margin-top: 30px;">
                        <div class="col-sm-2"></div>
                        <div class="col-sm-5">
                            <button type="submit" class="btn btn-default col-sm-12" style="background-color: cornflowerblue">立即注册</button>
                        </div>
                    </div>
                </form>
        </div>
    </div>
</div>
<div class="row" style="margin-left: 20px;">
    <div class="col-md-2"></div>
    <div class="col-md-8" style="margin-top: 10px;">
        <ol class="breadcrumb" style="background-color: white;">
            <li><a href="#" style="color:black">公司简介</a></li>
            <li><a href="#" style="color: black">招贤纳士</a></li>
            <li><a href="#" style="color: black">广告服务</a></li>
            <li><a href="#" style="color: black">联系方式</a></li>
            <li><a href="#" style="color: black">版权声明</a></li>
            <li><a href="#" style="color: black">法律顾问</a></li>
            <li><a href="#" style="color: black">问题报告</a></li>
            <li><a href="#" style="color: black">合作伙伴</a></li>
            <li><a href="#" style="color: black">论坛反馈</a></li>
        </ol>
    </div>
</div>
<div class="row" >
    <div class="col-md-2"></div>
    <div class="col-md-8" style="margin-top: -40px;">
        <hr>
    </div>
</div>
<div class="row" style="margin-left: 20px;">
    <div class="col-md-2"></div>
    <div class="col-md-8" style="font-size: 12px;margin-top: -10px;">
        <div class="col-md-1" style="width: 60px;padding-right: 0px;padding-left: 0px; margin-left: 15px;">网站客服</div>
        <div class="col-md-1" style="width: 60px;padding-right: 0px;padding-left: 0px;">杂志客服</div>
        <div class="col-md-1" style="width: 60px; padding-right: 0px;padding-left: 0px;">微博客服</div>
        <div class="col-md-1" style="width: 135px;padding-right: 0px;padding-left: 0px;">webmaster@csdn.net</div>
        <div class="col-md-1" style="width: 90px;padding-right: 0px;padding-left: 0px;">400-600-2320</div>
        <div class="col-md-1" style="width: 230px;padding-right: 0px;padding-left: 0px;">|&nbsp;北京创新乐知信息技术有限公司 版权所有
        </div>
        <div class="col-md-1" style="width: 160px;padding-right: 0px;padding-left: 0px;">|&nbsp;江苏知之为计算机有限公司</div>
        <div class="col-md-1" style="width: 160px;padding-right: 0px;padding-left: 0px;">|&nbsp;江苏乐知网络技术有限公司</div>
    </div>
</div>
<div class="row" style="margin-left: 20px;">
    <div class="col-md-2"></div>
    <div class="col-md-8" style="font-size: 12px;margin-top: 8px">
        <div class="col-md-1" style="width: 130px;padding-right: 0px;padding-left: 0px; margin-left: 15px;">京 ICP 证
            09002463 号
        </div>
        <div class="col-md-1" style="width: 330px;padding-right: 0px;padding-left: 0px;">|&nbsp;Copyright © 1999-2016,
            CSDN.NET, All Rights Reserved
        </div>
    </div>
</div>
    <script src="${request.contextPath}/js/jquery.min.js"></script>
    <script src="${request.contextPath}/js/bootstrap.min.js"></script>
</body>
</html>
