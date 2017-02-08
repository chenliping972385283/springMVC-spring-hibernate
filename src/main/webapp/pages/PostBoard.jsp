<html>
<head>
    <meta charset="utf-8">
    <title>我要发帖</title>
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
                                <#if loginuser.email??>${loginuser.email},欢迎您！</#if>
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
<div style="background-color:whitesmoke;margin-top: -20px;color:white;height:680px;">
    <div class="container">
        <div class="row">
            <ol class="breadcrumb">
                <li><a href="#">CSDN</a></li>
                <li><a href="#">CSDN论坛</a></li>
                <li class="active">发帖</li>
            </ol>
        </div>

        <div class="row" >
            <div style="width:100%;height: 36px;background-color: #2a6496;margin-top: -20px;">
                <div class="col-md-2">
                    <h1 style="font-size: 16px;color:white; margin-top: 10px;">发表新话题</h1>
                </div>
                <div class="col-md-6" style="margin-left: -85px;margin-top: 8px;">
                    <a href="#" target="_blank" style="color:red;">移动客户端发帖立返50%可用分，下载体验！</a>
                </div>
            </div>
        </div>
        <div class="row" style="margin-top: 10px">
            <table width="100%" cellspacing="0" cellpadding="0" border="1px solid blue" >
                <colgroup>
                    <col width="140" style="background-color: pink;">
                    <col>
                </colgroup>
                <tbody>
                <tr>
                    <th style="text-align: center;">文章标题</th>
                    <td>
                        <label>
                            <input id="topic_title"  autocomplete="off" maxlength="80"  size="60" type="text" style="margin-top: 10px; margin-left: 15px;">
                            <span id="title_count_notice" style="color:red;font-size: 14px;">你还可以输入80个字符</span>
                        </label>
                    </td>
                </tr>
                <tr>
                    <th style="text-align: center;">文章内容</th>
                    <td>
                        <form role="form" style="margin-top: 10px; margin-left: 15px; width: 90%">
                            <div class="form-group">
                                <textarea class="form-control" rows="8"></textarea>
                            </div>
                        </form>
                    </td>
                </tr>
                <tr>
                    <th style="text-align: center;">文章标签</th>
                    <td>
                        <label>
                            <input   autocomplete="off" maxlength="80"  size="60" type="text" style="margin-top: 10px; margin-left: 15px;">
                            <span style="color:red;font-size: 14px;">最多添加5个标签</span>
                        </label>
                    </td>
                </tr>
                <tr>
                    <th style="text-align: center;">选择板块</th>
                    <td>
                        <form role="form" style="margin-top: 10px; margin-left: 15px; width: 90%">
                            <div class="form-group col-md-4">
                                <select class="form-control" style="margin-left: -14px;">
                                    <option>--选择大板块--</option>
                                    <option>技术区</option>
                                    <option>生活区</option>
                                </select>
                            </div>
                            <div class="form-group col-md-4">
                                <select class="form-control col-md-6" style="float:left">
                                    <option>--选择小板块板块--</option>
                                    <option>技术区</option>
                                    <option>生活区</option>
                                </select>
                            </div>
                            <div  class="col-md-4" style="margin-top: 6px;">
                                <span style="color:red;font-size: 14px;margin-left: -30px">请选择要发帖的板块</span>
                            </div>
                        </form>
                    </td>
                </tr>
                <tr>
                    <th style="text-align: center;">帖子分数</th>
                    <td>
                        <label>
                            <span  style="font-size: 14px; margin-left: 15px;">给分</span>
                            <input   autocomplete="off" maxlength="80"  size="60" type="text" style="margin-top: 10px;width: 60px"  >
                            <span  style="font-size: 14px; margin-left: 6px;">(1~100)</span>
                        </label>
                    </td>
                </tr>

                <tr>
                    <th ></th>
                    <td>
                        <div class="btn btn-primary "
                             style="height: 30px; margin-left: 15px;margin-top:10px;text-align: center;line-height:20px;width: 150px;"
                             type="button"  id="boardButton">发表帖子
                        </div>
                        <div style="border:1px solid powderblue;width: 50%;margin-left: 15px;margin-top: 10px;margin-bottom: 10px;">
                            <ol style="font-size: 12px;margin-left: -15px;">
                                <li>这里发言，表示您接受了CSDN论坛的用户行为准则。</li>
                                <li>请对您的言行负责，并遵守中华人民共和国有关法律法规,尊重网上道德。</li>
                                <li>转载文章请注明出自“CSDN（www.csdn.net）”。如是商业用途请联系原作者。</li>
                            </ol>
                        </div>
                    </td>
                </tr>

                </tbody>
            </table>
        </div>
    </div>
</div>
<div class="container" >
    <div class="row" >
        <ol class="breadcrumb" style="background-color: white;margin-left: -12px;">
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

    <div class="row">
        <div  style="margin-top: -35px;">
            <hr>
        </div>
    </div>

    <div class="row" style="font-size: 12px;margin-top: -10px">
        <div class="col-md-1" style="width: 60px;padding-right: 0px;padding-left: 0px;">网站客服</div>
        <div class="col-md-1" style="width: 60px;padding-right: 0px;padding-left: 0px;">杂志客服</div>
        <div class="col-md-1" style="width: 60px;padding-right: 0px;padding-left: 0px;">微博客服</div>
        <div class="col-md-1" style="width: 135px;padding-right: 0px;padding-left: 0px;">webmaster@csdn.net</div>
        <div class="col-md-1" style="width: 90px;padding-right: 0px;padding-left: 0px;">400-600-2320</div>
        <div class="col-md-3" style="width: 270px;padding-right: 0px;padding-left: 0px;">|&nbsp;北京创新乐知信息技术有限公司 版权所有
        </div>
        <div class="col-md-2" style="width: 180px;padding-right: 0px;padding-left: 0px;">|&nbsp;江苏知之为计算机有限公司</div>
        <div class="col-md-2" style="width: 180px;padding-right: 0px;padding-left: 0px;">|&nbsp;江苏乐知网络技术有限公司</div>
    </div>
    <div class="row">
        <div  style="font-size: 12px;margin-top: 8px">
            <div class="col-md-4" style="width: 220px;padding-right: 0px;padding-left: 0px;">京 ICP 证
                09002463 号
            </div>
            <div class="col-md-4" style="padding-right: 0px;padding-left: 0px;margin-left: -80px">|&nbsp;Copyright © 1999-2016,
                CSDN.NET, All Rights Reserved
            </div>
        </div>
    </div>
</div>
</body>
</html>
