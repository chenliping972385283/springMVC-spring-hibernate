<html>
<head>
    <title>${board.title}</title>
    <link href="${request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="navbar navbar-inverse" role="navigation">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <img class="img-responsive" style="float: left;" src="${request.contextPath}/images/csdn.png"/>
                <h3 style="float: left; color: white; margin-top: 10px; margin-left: 5px;">论坛</h3>
            </div>
            <div class="col-md-4"></div>
            <@userLogin>
            <#if loginuser??>
                <div class="col-md-4">
                    <ul class="nav navbar-nav">
                        <li><a href="">
                            <#if loginuser.username??>
                                ${loginuser.username},欢迎您！
                                <input type="hidden" name="username" value="${loginuser.username}" id="username"/>
                            </#if>
                        </a></li>
                        <li><a href="${request.contextPath}/loginOut.do">退出</a></li>
                    </ul>
                </div>
                <#else>
                    <div class="col-md-4">
                        <ul class="nav navbar-nav">
                            <li><a href="${request.contextPath}/register/registryUser.do">注册</a></li>
                            <li><a href="${request.contextPath}/login.do">登录</a></li>
                        </ul>
                    </div>
            </#if>
        </@userLogin>
    </div>
</div>
</div>
<div class="navbar navbar-default" role="navigation" style="margin-top: -20px;">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="##">首页</a></li>
                    <li><a href="##">聚焦</a></li>
                    <li><a href="##">部落</a></li>
                    <li><a href="##">问答</a></li>
                    <li><a href="##">文学</a></li>
                    <li><a href="##">打赏</a></li>
                    <li class="dropdown"><a href="##" data-toggle="dropdown" class="dropdown-toggle">更多<span
                            class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="##">游戏</a></li>
                            <li><a href="##">社区服务</a></li>
                            <li><a href="##">品牌</a></li>
                            <li><a href="##">充值中心</a></li>
                        </ul>
                    </li>
                </ul>
                <form action="##" class="navbar-form navbar-left " rol="search">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="请输入关键词"/>
                    </div>
                    <button type="submit" class="btn btn-default">搜索</button>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <ol class="breadcrumb">
            <li><a href="#">CSDN</a></li>
            <li><a href="#">CSDN论坛</a></li>
        </ol>
    </div>

    <div class="row">
        <div class="btn-group col-md-2">
            <button class="btn btn-primary dropdown-toggle" data-toggle="dropdown" type="button">按钮下拉菜单<span class="caret"></span></button>
            <ul class="dropdown-menu">
                <li><a href="##">置顶</a></li>
                <li><a href="##">编辑</a></li>
                <li><a href="##">删除</a></li>
                <li><a href="##">取消推荐</a></li>
            </ul>
        </div>
        <div class="btn-group col-md-1" style="margin-left: -60px;">
            <button class="btn btn-primary" type="button">结贴</button>
        </div>
        <div class="btn-group col-md-1" style="margin-left: -30px;">
            <button class="btn btn-primary" type="button">发帖</button>
        </div>
        <div class="btn-group col-md-1" style="margin-left: -30px;">
            <button class="btn btn-primary" type="button">回复</button>
        </div>
        <div class="btn-group col-md-1" style="margin-left: -30px;">
            <button class="btn btn-primary" type="button">关注</button>
        </div>
    </div>

    <div class="row">
        <div style="width: auto;height:30px;background-color: #2a6496">
            <h1 style="font-size: medium;line-height:30px;margin-left: 10px;">
                <span class="red" style="color:red"> [推荐] </span>
                <span class="title text_overflow" style="color:white">${board.title}</span>
                <span style="color:white"> [问题点数：${board.score}分] </span>
            </h1>
        </div>
    </div>

    <div class="row">
        <table>
            <colgroup>
                <col width="180">
                <col>
            </colgroup>
            <tbody>
                <tr>
                    <td>

                    </td>
                </tr>
                <tr>
                    <td>

                    </td>
                </tr>
                <tr>
                    <td>

                    </td>
                </tr>
            </tbody>
        </table>
    </div>


</div>
<script src="${request.contextPath}/js/jquery.min.js"></script>
<script src="${request.contextPath}/js/bootstrap.min.js"></script>
</body>
</html>
