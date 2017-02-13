<html>
<head>
    <meta charset="utf-8">
    <title>小论坛</title>
    <link href="${request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="navbar navbar-inverse" role="navigation">
    <div class="row">
        <div class="col-md-10">
            <img class="img-responsive" style="float: left" src="${request.contextPath}/images/csdn.png"/>
            <h3 style="float: left; color: white; margin-top: 10px; margin-left: 10px; margin-bottom: 10px;">论坛</h3>
        </div>
        <@userLogin>
        <#if loginuser??>

            <div class="col-md-2">
                <ul class="nav navbar-nav">
                    <li><a href="">
                        <#if loginuser.username??>${loginuser.username},欢迎您！</#if>
                    </a></li>
                    <li><a href="${request.contextPath}/loginOut.do">退出</a></li>
                </ul>
            </div>
            <#else>
                <div class="col-md-2">
                    <ul class="nav navbar-nav">
                        <li><a href="${request.contextPath}/register/registryUser.do">注册</a></li>
                        <li><a href="${request.contextPath}/login.do">登录</a></li>
                    </ul>
                </div>
        </#if>
    </@userLogin>
</div>
</div>
<div class="navbar navbar-default" role="navigation" style="margin-top: -20px;padding: 0px;background-color: white">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6">
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

<div style="background-color: whitesmoke;margin-top: -20px;">
    <div class="container">
        <div class="row">
            <div class="container">
                <div class="col-md-2"></div>
                <img class="img-responsive col-md-9" src="${request.contextPath}/images/4.jpg"/>
            </div>
        </div>
        <div class="row" style="margin-top: 15px">
            <div class="container">
                <div class="col-md-2"></div>
                <div class="col-md-7">
                    <div class="panel panel-info">
                        <div class="panel-heading">论坛焦点</div>
                        <div class="panel-body" style="border:0px solid white">
                            <div class="row">
                                    <ul class="list-unstyled">
                                        <#list lifeAdv as life>
                                        <li class="col-md-6">
                                            <#if life_index==0>
                                                <h4 style="color:red;font-weight:bold;">
                                                    <#if life.title?length lt 14>
                                                            <a href="${request.contextPath}/user/boardDetail.do?id="+${life.id}> ${life.title}</a>
                                                        <#else>
                                                            <a href="${request.contextPath}/user/boardDetail.do?id="+${life.id}> ${life.title[0..12]}..</a>
                                                    </#if>
                                                </h4>
                                            <#elseif life_index==1>
                                                <h4 style="color:blue;font-weight:bold;"><a href="">${life.title}</a></h4>
                                            <#else>
                                                <h5 ><a href="">${life.title}</a></h5>
                                            </#if>
                                        </li>
                                        </#list>
                                    </ul>
                            </div>
                            <div style="margin-top: -15px;margin-bottom: -15px;">
                                <hr style="border-bottom-style: dotted; border-left-style: dotted; border-right-style: dotted; border-top-style: dotted"
                                    color=#111111 size=1>
                            </div>
                            <div class="row">
                                <ul class="list-unstyled">
                                    <#list jishuAdv as jishu>
                                    <li class="col-md-6">
                                        <#if jishu_index==0>
                                            <h4 style="color:red;font-weight:bold;">
                                                <#if jishu.title?length lt 14>
                                                    ${jishu.title}
                                                <#else>
                                                    ${jishu.title[0..12]}..
                                                </#if>
                                            </h4>
                                        <#elseif jishu_index==1>
                                            <h4 style="color:blue;font-weight:bold;">
                                                <#if jishu.title?length lt 14>
                                                     ${jishu.title}
                                                <#else>
                                                    ${jishu.title[0..12]}..
                                                </#if>
                                            </h4>
                                        <#else>
                                            <h5 >
                                                <#if jishu.title?length lt 20>
                                                    ${jishu.title}
                                                <#else>
                                                    ${jishu.title[0..18]}..
                                                </#if>
                                            </h5>
                                        </#if>
                                    </li>
                                    </#list>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="row">
                        <div class="panel panel-info">
                            <div class="panel-heading">论坛公告</div>
                            <div class="panel-body" style="margin-left: -30px">
                                <ul style="font-size: 14px">
                                    <#list notices as notice>
                                        <li style="font-size: 12px;color:black"><a href="${notice.url}" style="color:black">${notice.noticeName}</a></li>
                                    </#list>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="btn btn-warning col-md-12"
                             style="height: 50px;margin-top: -10px;text-align: center;line-height:35px;font-size: 20px"
                             type="button"  id="boardButton">我要发帖
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="container">
                <div class="col-md-2"></div>
                <div class="col-md-7">
                    <div class="panel panel-info">
                        <div class="panel-heading">版主推荐-技术区</div>
                        <div class="panel-body">
                            <#list boardJishu as board>
                                    <div>
                                        <div class="row" style="font-size: 13px">
                                            <div class="col-md-3">[VisualEleven推荐]</div>
                                            <div class="col-md-5" style="margin-left: -40px;color: dodgerblue">${board.title}
                                            </div>
                                            <div class="col-md-3" style="margin-left: -35px">${board.label}</div>
                                            <div class="col-md-1">
                                                <#if board.username?length lt 9>
                                                        ${board.username}
                                                    <#else>
                                                        ${board.username[0..9]}..
                                                </#if>
                                            </div>
                                        </div>
                                        <div style="margin-top: -15px;margin-bottom: -15px;">
                                            <hr style="border-bottom-style: dotted; border-left-style: dotted; border-right-style: dotted; border-top-style: dotted"
                                                color=#111111 size=1>
                                        </div>
                                    </div>
                            </#list>
                        </div>

                    </div>
                </div>
                <div class="col-md-2">
                    <div class="row">
                        <div class="panel panel-info">
                            <div class="panel-heading">论坛标兵</div>
                            <div class="panel-body" style="margin-left: -30px" style="font-size: 12px;width: 150px">
                                <ul class="nav nav-tabs"  style="margin-left: 20px">
                                    <li  class="active" style="font-size: 12px;width: auto"><a
                                            href="#jishu" role="tab" data-toggle="tab" aria-controls="jishu">技术区</a>
                                    </li>
                                    <li><a href="#feijishu"
                                           style="font-size: 12px;width: auto" role="tab" aria-controls="feijishu" data-toggle="tab">非技术区</a></li>
                                </ul>
                                <div class="row" style="margin-left: 20px;margin-top: -20px">
                                    <hr>
                                </div>
                                <div  class="tab-content" >
                                    <div  style="margin-left: 20px;"  id="jishu"  class="tab-pane fade in active" >
                                        <div class="row" style="margin-top: 10px;">
                                            <div class="col-md-6"
                                                 style="margin-left: 10px;margin-right: 10px;margin-top: 10px">
                                                <h6 class="media-heading" style="font-size: 12px">我是大漠</h6>
                                                <div style="font-size: 12px">昨日得分:200</div>
                                            </div>
                                            <div class="col-md-6" style="margin-left: -30px;margin-right: 10px">
                                                <img class="media-object"
                                                     src="${request.contextPath}/images/c1.jpg.png"
                                                     alt="...">
                                            </div>
                                        </div>
                                        <div class="row" style="margin-top: 10px;">
                                            <div class="col-md-6"
                                                 style="margin-left: 10px;margin-right: 10px;margin-top: 10px">
                                                <h6 class="media-heading" style="font-size: 12px">我是大漠</h6>
                                                <div style="font-size: 12px">昨日得分:200</div>
                                            </div>
                                            <div class="col-md-6" style="margin-left: -30px;margin-right: 10px">
                                                <img class="media-object"
                                                     src="${request.contextPath}/images/c2.jpg.png"
                                                     alt="...">
                                            </div>
                                        </div>
                                        <div class="row" style="margin-top: 10px;">
                                            <div class="col-md-6"
                                                 style="margin-left: 10px;margin-right: 10px;margin-top: 10px">
                                                <h6 class="media-heading" style="font-size: 12px">我是大漠</h6>
                                                <div style="font-size: 12px">昨日得分:200</div>
                                            </div>
                                            <div class="col-md-6" style="margin-left: -30px;margin-right: 10px">
                                                <img class="media-object"
                                                     src="${request.contextPath}/images/c3.jpg.png"
                                                     alt="...">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="tab-pane fade"  style="margin-left: 20px;"   id="feijishu">
                                        <div class="row" style="margin-top: 10px;">
                                            <div class="col-md-6"
                                                 style="margin-left: 10px;margin-right: 10px;margin-top: 10px">
                                                <h6 class="media-heading" style="font-size: 12px">我是小莫</h6>
                                                <div style="font-size: 12px">昨日得分:200</div>
                                            </div>
                                            <div class="col-md-6" style="margin-left: -30px;margin-right: 10px">
                                                <img class="media-object"
                                                     src="${request.contextPath}/images/c1.jpg.png"
                                                     alt="...">
                                            </div>
                                        </div>
                                        <div class="row" style="margin-top: 10px;">
                                            <div class="col-md-6"
                                                 style="margin-left: 10px;margin-right: 10px;margin-top: 10px">
                                                <h6 class="media-heading" style="font-size: 12px">我是大漠</h6>
                                                <div style="font-size: 12px">昨日得分:200</div>
                                            </div>
                                            <div class="col-md-6" style="margin-left: -30px;margin-right: 10px">
                                                <img class="media-object"
                                                     src="${request.contextPath}/images/c2.jpg.png"
                                                     alt="...">
                                            </div>
                                        </div>
                                        <div class="row" style="margin-top: 10px;">
                                            <div class="col-md-6"
                                                 style="margin-left: 10px;margin-right: 10px;margin-top: 10px">
                                                <h6 class="media-heading" style="font-size: 12px">我是大漠</h6>
                                                <div style="font-size: 12px">昨日得分:200</div>
                                            </div>
                                            <div class="col-md-6" style="margin-left: -30px;margin-right: 10px">
                                                <img class="media-object"
                                                     src="${request.contextPath}/images/c3.jpg.png"
                                                     alt="...">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="container">
                <div class="col-md-2"></div>
                <div class="col-md-7">
                    <div class="panel panel-info">
                        <div class="panel-heading">版主推荐-生活区</div>
                        <div class="panel-body">
                            <#list boardLife as life>
                                <div>
                                    <div class="row" style="font-size: 13px">
                                        <div class="col-md-3">[caozhy推荐]</div>
                                        <div class="col-md-5" style="margin-left: -40px;color: dodgerblue">${life.title}
                                        </div>
                                        <div class="col-md-3" style="margin-left: -35px">${life.label}</div>
                                        <div class="col-md-1">
                                            <#if life.username?length lt 9>
                                                ${life.username}
                                                <#else>
                                                    ${life.username[0..9]}..
                                            </#if>
                                        </div>
                                    </div>
                                    <div style="margin-top: -15px;margin-bottom: -15px;">
                                        <hr style="border-bottom-style: dotted; border-left-style: dotted; border-right-style: dotted; border-top-style: dotted"
                                            color=#111111 size=1>
                                    </div>
                                </div>
                            </#list>

                        </div>
                    </div>
                </div>

                <div class="col-md-2" style="border:1px solid cadetblue">
                    <div class="row">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                            </ol>

                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img src="${request.contextPath}/images/c5.png" style="width: 100%">
                                    <div class="carousel-caption">
                                        <!--放文字-->
                                    </div>
                                </div>
                                <div class="item">
                                    <img src="${request.contextPath}/images/c6.png" style="width: 100%">
                                </div>
                                <div class="item">
                                    <img src="${request.contextPath}/images/c7.png" style="width: 100%">
                                </div>
                                <div class="item">
                                    <img src="${request.contextPath}/images/c8.png" style="width: 100%">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
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
<div class="row">
    <div class="col-md-2"></div>
    <div class="col-md-8" style="margin-top: -40px;">
        <hr>
    </div>
</div>
<div class="row">
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
<div class="row">
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
<script>
    $('#boardButton').on('click', function () {
        //var $btn = $(this).button('loading');
        window.location.href = "${request.contextPath}/user/postBoard.do";
    })

    function getJishu(){
        $("#jishu").attr("style","display:none");
        $("#feijishu").attr("style","display:block");
    }
</script>
</body>
</html>
