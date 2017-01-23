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
        <div class="col-md-2">
            <ul class="nav navbar-nav">
                <shiro:guest>
                    <li><a href="<c:url value="${request.contextPath}/register/registryUser.do"/>">注册</a></li>
                    <%--
                                        <li><a href="<c:url value="${request.contextPath}/index/login.do"/>">登录</a></li>
                    --%>
                </shiro:guest>

                <shiro:user>
                    <li><a href="<c:url value="${request.contextPath}/index.do"/>"><shiro:principal/></a></li>
                    <%--
                                        <li><a href="<c:url value="${request.contextPath}/index/logout.do"/>">退出</a></li>
                    --%>
                </shiro:user>

            </ul>
        </div>
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
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <h5>
                                        C-TechAwards2016最具价值奖开启
                                    </h5>
                                    <ul class="list-unstyled">
                                        <li>程序员比比谁更老，年底家人逼你结婚没</li>
                                        <li>和码农谈恋爱，给女程序员的信</li>
                                    </ul>
                                </div>
                                <div class="col-md-6">
                                    <h6>
                                        C-TechAwards2016最具价值奖开启
                                    </h6>
                                    <ul class="list-unstyled">
                                        <li>程序员比比谁更老，年底家人逼你结婚没</li>
                                        <li>和码农谈恋爱，给女程序员的信</li>
                                    </ul>
                                </div>
                            </div>
                            <div style="margin-top: -15px;margin-bottom: -15px;">
                                <hr style="border-bottom-style: dotted; border-left-style: dotted; border-right-style: dotted; border-top-style: dotted"
                                    color=#111111 size=1>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <h5>
                                        C-TechAwards2016最具价值奖开启
                                    </h5>
                                    <ul class="list-unstyled">
                                        <li>程序员比比谁更老，年底家人逼你结婚没</li>
                                        <li>和码农谈恋爱，给女程序员的信</li>
                                    </ul>
                                </div>
                                <div class="col-md-6">
                                    <h6>
                                        C-TechAwards2016最具价值奖开启
                                    </h6>
                                    <ul class="list-unstyled">
                                        <li>程序员比比谁更老，年底家人逼你结婚没</li>
                                        <li>和码农谈恋爱，给女程序员的信</li>
                                    </ul>
                                </div>
                            </div>
                            <div style="margin-top: -15px;margin-bottom: -15px;">
                                <hr style="border-bottom-style: dotted; border-left-style: dotted; border-right-style: dotted; border-top-style: dotted"
                                    color=#111111 size=1>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <h5>
                                        C-TechAwards2016最具价值奖开启
                                    </h5>
                                    <ul class="list-unstyled">
                                        <li>程序员比比谁更老，年底家人逼你结婚没</li>
                                        <li>和码农谈恋爱，给女程序员的信</li>
                                    </ul>
                                </div>
                                <div class="col-md-6">
                                    <h6>
                                        C-TechAwards2016最具价值奖开启
                                    </h6>
                                    <ul class="list-unstyled">
                                        <li>程序员比比谁更老，年底家人逼你结婚没</li>
                                        <li>和码农谈恋爱，给女程序员的信</li>
                                    </ul>
                                </div>
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
                                    <li>IT知识节，元旦惠不停</li>
                                    <li>IT知识节，元旦惠不停</li>
                                    <li>IT知识节，元旦惠不停</li>
                                    <li>IT知识节，元旦惠不停</li>
                                    <li>IT知识节，元旦惠不停</li>
                                    <li>IT知识节，元旦惠不停</li>
                                    <li>IT知识节，元旦惠不停</li>
                                    <li>IT知识节，元旦惠不停</li>
                                    <li>40岁，你还会继续写代码吗？</li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="btn btn-warning col-md-12"
                             style="height: 50px;margin-top: -10px;text-align: center;line-height:35px;font-size: 20px"
                             type="button">我要发帖
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
                            <div>
                                <div class="row" style="font-size: 13px">
                                    <div class="col-md-3">[VisualEleven推荐]</div>
                                    <div class="col-md-5" style="margin-left: -40px;color: #5bc0de">Vc CString 和 string
                                        类型转换集合
                                    </div>
                                    <div class="col-md-2" style="margin-left: -40px">[基础类]</div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-1">C_dm22</div>
                                </div>
                                <div style="margin-top: -15px;margin-bottom: -15px;">
                                    <hr style="border-bottom-style: dotted; border-left-style: dotted; border-right-style: dotted; border-top-style: dotted"
                                        color=#111111 size=1>
                                </div>
                            </div>
                            <div>
                                <div class="row" style="font-size: 13px">
                                    <div class="col-md-3">[VisualEleven推荐]</div>
                                    <div class="col-md-5" style="margin-left: -40px;color: #5bc0de">Vc CString 和 string
                                        类型转换集合
                                    </div>
                                    <div class="col-md-2" style="margin-left: -40px">[基础类]</div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-1">C_dm22</div>
                                </div>
                                <div style="margin-top: -15px;margin-bottom: -15px;">
                                    <hr style="border-bottom-style: dotted; border-left-style: dotted; border-right-style: dotted; border-top-style: dotted"
                                        color=#111111 size=1>
                                </div>
                            </div>
                            <div>
                                <div class="row" style="font-size: 13px">
                                    <div class="col-md-3">[VisualEleven推荐]</div>
                                    <div class="col-md-5" style="margin-left: -40px;color: #5bc0de">Vc CString 和 string
                                        类型转换集合
                                    </div>
                                    <div class="col-md-2" style="margin-left: -40px">[基础类]</div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-1">C_dm22</div>
                                </div>
                                <div style="margin-top: -15px;margin-bottom: -15px;">
                                    <hr style="border-bottom-style: dotted; border-left-style: dotted; border-right-style: dotted; border-top-style: dotted"
                                        color=#111111 size=1>
                                </div>
                            </div>
                            <div>
                                <div class="row" style="font-size: 13px">
                                    <div class="col-md-3">[VisualEleven推荐]</div>
                                    <div class="col-md-5" style="margin-left: -40px;color: #5bc0de">Vc CString 和 string
                                        类型转换集合
                                    </div>
                                    <div class="col-md-2" style="margin-left: -40px">[基础类]</div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-1">C_dm22</div>
                                </div>
                                <div style="margin-top: -15px;margin-bottom: -15px;">
                                    <hr style="border-bottom-style: dotted; border-left-style: dotted; border-right-style: dotted; border-top-style: dotted"
                                        color=#111111 size=1>
                                </div>
                            </div>
                            <div>
                                <div class="row" style="font-size: 13px">
                                    <div class="col-md-3">[VisualEleven推荐]</div>
                                    <div class="col-md-5" style="margin-left: -40px;color: #5bc0de">Vc CString 和 string
                                        类型转换集合
                                    </div>
                                    <div class="col-md-2" style="margin-left: -40px">[基础类]</div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-1">C_dm22</div>
                                </div>
                                <div style="margin-top: -15px;margin-bottom: -15px;">
                                    <hr style="border-bottom-style: dotted; border-left-style: dotted; border-right-style: dotted; border-top-style: dotted"
                                        color=#111111 size=1>
                                </div>
                            </div>
                            <div>
                                <div class="row" style="font-size: 13px">
                                    <div class="col-md-3">[VisualEleven推荐]</div>
                                    <div class="col-md-5" style="margin-left: -40px;color: #5bc0de">Vc CString 和 string
                                        类型转换集合
                                    </div>
                                    <div class="col-md-2" style="margin-left: -40px">[基础类]</div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-1">C_dm22</div>
                                </div>
                                <div style="margin-top: -15px;margin-bottom: -15px;">
                                    <hr style="border-bottom-style: dotted; border-left-style: dotted; border-right-style: dotted; border-top-style: dotted"
                                        color=#111111 size=1>
                                </div>
                            </div>
                            <div>
                                <div class="row" style="font-size: 13px">
                                    <div class="col-md-3">[VisualEleven推荐]</div>
                                    <div class="col-md-5" style="margin-left: -40px;color: #5bc0de">Vc CString 和 string
                                        类型转换集合
                                    </div>
                                    <div class="col-md-2" style="margin-left: -40px">[基础类]</div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-1">C_dm22</div>
                                </div>
                                <div style="margin-top: -15px;margin-bottom: -15px;">
                                    <hr style="border-bottom-style: dotted; border-left-style: dotted; border-right-style: dotted; border-top-style: dotted"
                                        color=#111111 size=1>
                                </div>
                            </div>
                            <div>
                                <div class="row" style="font-size: 13px">
                                    <div class="col-md-3">[VisualEleven推荐]</div>
                                    <div class="col-md-5" style="margin-left: -40px;color: #5bc0de">Vc CString 和 string
                                        类型转换集合
                                    </div>
                                    <div class="col-md-2" style="margin-left: -40px">[基础类]</div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-1">C_dm22</div>
                                </div>
                                <div style="margin-top: -15px;margin-bottom: -15px;">
                                    <hr style="border-bottom-style: dotted; border-left-style: dotted; border-right-style: dotted; border-top-style: dotted"
                                        color=#111111 size=1>
                                </div>
                            </div>
                            <div>
                                <div class="row" style="font-size: 13px">
                                    <div class="col-md-3">[VisualEleven推荐]</div>
                                    <div class="col-md-5" style="margin-left: -40px;color: #5bc0de">Vc CString 和 string
                                        类型转换集合
                                    </div>
                                    <div class="col-md-2" style="margin-left: -40px">[基础类]</div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-1">C_dm22</div>
                                </div>
                                <div style="margin-top: -15px;margin-bottom: -15px;">
                                    <hr style="border-bottom-style: dotted; border-left-style: dotted; border-right-style: dotted; border-top-style: dotted"
                                        color=#111111 size=1>
                                </div>
                            </div>
                            <div>
                                <div class="row" style="font-size: 13px">
                                    <div class="col-md-3">[VisualEleven推荐]</div>
                                    <div class="col-md-5" style="margin-left: -40px;color: #5bc0de">Vc CString 和 string
                                        类型转换集合
                                    </div>
                                    <div class="col-md-2" style="margin-left: -40px">[基础类]</div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-1">C_dm22</div>
                                </div>
                                <div style="margin-top: -15px;margin-bottom: -15px;">
                                    <hr style="border-bottom-style: dotted; border-left-style: dotted; border-right-style: dotted; border-top-style: dotted"
                                        color=#111111 size=1>
                                </div>
                            </div>
                            <div>
                                <div class="row" style="font-size: 13px">
                                    <div class="col-md-3">[VisualEleven推荐]</div>
                                    <div class="col-md-5" style="margin-left: -40px;color: #5bc0de">Vc CString 和 string
                                        类型转换集合
                                    </div>
                                    <div class="col-md-2" style="margin-left: -40px">[基础类]</div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-1">C_dm22</div>
                                </div>
                                <div style="margin-top: -15px;margin-bottom: -15px;">
                                    <hr style="border-bottom-style: dotted; border-left-style: dotted; border-right-style: dotted; border-top-style: dotted"
                                        color=#111111 size=1>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="row">
                        <div class="panel panel-info">
                            <div class="panel-heading">论坛标兵</div>
                            <div class="panel-body" style="margin-left: -30px" style="font-size: 12px;width: 150px">
                                <ul class="nav nav-tabs" role="tablist" style="margin-left: 20px">
                                    <li role="presentation" class="active" style="font-size: 12px;width: auto"><a
                                            href="#jishu">技术区</a>
                                    </li>
                                    <li role="presentation"><a href="#feijishu"
                                                               style="font-size: 12px;width: auto">非技术区</a></li>
                                </ul>
                                <div class="row" style="margin-left: 20px;margin-top: -20px">
                                    <hr>
                                </div>
                                <div class="row" style="margin-left: 20px;" id="jishu">
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
                                <div class="row" style="margin-left: 20px;display: none" id="feijishu">
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
                            <div>
                                <div class="row" style="font-size: 13px">
                                    <div class="col-md-3">[caozhy推荐]</div>
                                    <div class="col-md-5" style="margin-left: -40px;color: #5bc0de">新年分享 - Visual C++
                                        6.0
                                        标准版（...
                                    </div>
                                    <div class="col-md-2" style="margin-left: -40px">[非技术区]</div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-1">caozhy</div>
                                </div>
                                <div style="margin-top: -15px;margin-bottom: -15px;">
                                    <hr style="border-bottom-style: dotted; border-left-style: dotted; border-right-style: dotted; border-top-style: dotted"
                                        color=#111111 size=1>
                                </div>
                            </div>

                            <div>
                                <div class="row" style="font-size: 13px">
                                    <div class="col-md-3">[VisualEleven推荐]</div>
                                    <div class="col-md-5" style="margin-left: -40px;color: #5bc0de">新年分享 - Visual C++
                                        6.0
                                        标准版（...
                                    </div>
                                    <div class="col-md-2" style="margin-left: -40px">[非技术区]</div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-1">C_dm22</div>
                                </div>
                                <div style="margin-top: -15px;margin-bottom: -15px;">
                                    <hr style="border-bottom-style: dotted; border-left-style: dotted; border-right-style: dotted; border-top-style: dotted"
                                        color=#111111 size=1>
                                </div>
                            </div>

                            <div>
                                <div class="row" style="font-size: 13px">
                                    <div class="col-md-3">[VisualEleven推荐]</div>
                                    <div class="col-md-5" style="margin-left: -40px;color: #5bc0de">新年分享 - Visual C++
                                        6.0
                                        标准版（...
                                    </div>
                                    <div class="col-md-2" style="margin-left: -40px">[非技术区]</div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-1">C_dm22</div>
                                </div>
                                <div style="margin-top: -15px;margin-bottom: -15px;">
                                    <hr style="border-bottom-style: dotted; border-left-style: dotted; border-right-style: dotted; border-top-style: dotted"
                                        color=#111111 size=1>
                                </div>
                            </div>

                            <div>
                                <div class="row" style="font-size: 13px">
                                    <div class="col-md-3">[VisualEleven推荐]</div>
                                    <div class="col-md-5" style="margin-left: -40px;color: #5bc0de">新年分享 - Visual C++
                                        6.0
                                        标准版（...
                                    </div>
                                    <div class="col-md-2" style="margin-left: -40px">[非技术区]</div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-1">C_dm22</div>
                                </div>
                                <div style="margin-top: -15px;margin-bottom: -15px;">
                                    <hr style="border-bottom-style: dotted; border-left-style: dotted; border-right-style: dotted; border-top-style: dotted"
                                        color=#111111 size=1>
                                </div>
                            </div>

                            <div>
                                <div class="row" style="font-size: 13px">
                                    <div class="col-md-3">[VisualEleven推荐]</div>
                                    <div class="col-md-5" style="margin-left: -40px;color: #5bc0de">新年分享 - Visual C++
                                        6.0
                                        标准版（...
                                    </div>
                                    <div class="col-md-2" style="margin-left: -40px">[非技术区]</div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-1">C_dm22</div>
                                </div>
                                <div style="margin-top: -15px;margin-bottom: -15px;">
                                    <hr style="border-bottom-style: dotted; border-left-style: dotted; border-right-style: dotted; border-top-style: dotted"
                                        color=#111111 size=1>
                                </div>
                            </div>

                            <div>
                                <div class="row" style="font-size: 13px">
                                    <div class="col-md-3">[VisualEleven推荐]</div>
                                    <div class="col-md-5" style="margin-left: -40px;color: #5bc0de">新年分享 - Visual C++
                                        6.0
                                        标准版（...
                                    </div>
                                    <div class="col-md-2" style="margin-left: -40px">[非技术区]</div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-1">C_dm22</div>
                                </div>
                                <div style="margin-top: -15px;margin-bottom: -15px;">
                                    <hr style="border-bottom-style: dotted; border-left-style: dotted; border-right-style: dotted; border-top-style: dotted"
                                        color=#111111 size=1>
                                </div>
                            </div>

                            <div>
                                <div class="row" style="font-size: 13px">
                                    <div class="col-md-3">[VisualEleven推荐]</div>
                                    <div class="col-md-5" style="margin-left: -40px;color: #5bc0de">新年分享 - Visual C++
                                        6.0
                                        标准版（...
                                    </div>
                                    <div class="col-md-2" style="margin-left: -40px">[非技术区]</div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-1">C_dm22</div>
                                </div>
                                <div style="margin-top: -15px;margin-bottom: -15px;">
                                    <hr style="border-bottom-style: dotted; border-left-style: dotted; border-right-style: dotted; border-top-style: dotted"
                                        color=#111111 size=1>
                                </div>
                            </div>

                            <div>
                                <div class="row" style="font-size: 13px">
                                    <div class="col-md-3">[VisualEleven推荐]</div>
                                    <div class="col-md-5" style="margin-left: -40px;color: #5bc0de">新年分享 - Visual C++
                                        6.0
                                        标准版（...
                                    </div>
                                    <div class="col-md-2" style="margin-left: -40px">[非技术区]</div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-1">C_dm22</div>
                                </div>
                                <div style="margin-top: -15px;margin-bottom: -15px;">
                                    <hr style="border-bottom-style: dotted; border-left-style: dotted; border-right-style: dotted; border-top-style: dotted"
                                        color=#111111 size=1>
                                </div>
                            </div>

                            <div>
                                <div class="row" style="font-size: 13px">
                                    <div class="col-md-3">[VisualEleven推荐]</div>
                                    <div class="col-md-5" style="margin-left: -40px;color: #5bc0de">新年分享 - Visual C++
                                        6.0
                                        标准版（...
                                    </div>
                                    <div class="col-md-2" style="margin-left: -40px">[非技术区]</div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-1">C_dm22</div>
                                </div>
                                <div style="margin-top: -15px;margin-bottom: -15px;">
                                    <hr style="border-bottom-style: dotted; border-left-style: dotted; border-right-style: dotted; border-top-style: dotted"
                                        color=#111111 size=1>
                                </div>
                            </div>

                            <div>
                                <div class="row" style="font-size: 13px">
                                    <div class="col-md-3">[VisualEleven推荐]</div>
                                    <div class="col-md-5" style="margin-left: -40px;color: #5bc0de">新年分享 - Visual C++
                                        6.0
                                        标准版（...
                                    </div>
                                    <div class="col-md-2" style="margin-left: -40px">[非技术区]</div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-1">C_dm22</div>
                                </div>
                                <div style="margin-top: -15px;margin-bottom: -15px;">
                                    <hr style="border-bottom-style: dotted; border-left-style: dotted; border-right-style: dotted; border-top-style: dotted"
                                        color=#111111 size=1>
                                </div>
                            </div>

                            <div>
                                <div class="row" style="font-size: 13px">
                                    <div class="col-md-3">[VisualEleven推荐]</div>
                                    <div class="col-md-5" style="margin-left: -40px;color: #5bc0de">新年分享 - Visual C++
                                        6.0
                                        标准版（...
                                    </div>
                                    <div class="col-md-2" style="margin-left: -40px">[非技术区]</div>
                                    <div class="col-md-1"></div>
                                    <div class="col-md-1">C_dm22</div>
                                </div>
                                <div style="margin-top: -15px;margin-bottom: -15px;">
                                    <hr style="border-bottom-style: dotted; border-left-style: dotted; border-right-style: dotted; border-top-style: dotted"
                                        color=#111111 size=1>
                                </div>
                            </div>
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
                                    <img src="${request.contextPath}/images/c5.png" style="width: 100%;height: 100%">
                                    <div class="carousel-caption">
                                        <%--放文字--%>
                                    </div>
                                </div>
                                <div class="item">
                                    <img src="${request.contextPath}/images/c6.png" style="width: 100%;height: 100%">
                                </div>
                                <div class="item">
                                    <img src="${request.contextPath}/images/c7.png" style="width: 100%;height: 100%">
                                </div>
                                <div class="item">
                                    <img src="${request.contextPath}/images/c8.png" style="width: 100%;height: 100%">
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
<script type="javascript">
</script>
</body>
</html>
