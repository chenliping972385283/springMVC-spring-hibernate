<html>
<head>
    <title>我的CSDN</title>
    <link href="${request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${request.contextPath}/css/jquery.Jcrop.css" rel="stylesheet">
    <style type="text/css">

        .jcrop-holder #preview-pane {
            display: block;
            position: absolute;
            z-index: 2000;
            top: 10px;
            right: -280px;
            padding: 6px;
            border: 1px rgba(0, 0, 0, .4) solid;
            background-color: white;
        }

        #preview-pane .preview-container {
            width: 250px;
            height: 170px;
            overflow: hidden;
        }
        /*  预览图片的样式 */
        /* 企業LOGO和選擇圖片顯示的邊框樣式---開始  */
        img.double-border {
            border: 2px solid #ddd;
            padding:2px;
            background: #fff;
            width: 300px;
            height:300px;
        }
        /* 企業LOGO和選擇圖片顯示的邊框樣式---结束  */


    </style>
</head>
<body>
<div class="navbar navbar-inverse" role="navigation">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <img class="img-responsive" style="float: left;" src="${request.contextPath}/images/csdn.png"/>
                <h3 style="float: left; color: white; margin-top: 10px; margin-left: 5px;">论坛</h3>
                <span>我的CSDN</span>
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
 <div style="background-color:whitesmoke;margin-top: -20px;color:white;height:auto;">
     <div class="container">

        <div class="row" style="margin-top: 20px;background-color: white;border:1px solid whitesmoke;">
            <div class="col-md-3">
                <img src="${request.contextPath}/loadImage.do" style="margin-top: 10px;margin-bottom: 10px;width:250px;height:170px;" onclick="changeImage()"/>
            </div>
            <div class="col-md-9" style="color:black;">
                <div class="row">
                    <span>${user.username}</span>
                </div>
                <div class="row">
                    互联网·电子商务<span>|</span>软件开发工程师<span>|</span>陈丽平<span>|</span>中国-湖南省-长沙市<span>|</span>女<span>|</span>1991-2-14
                </div>
                <div class="row">
                    要会解决问题
                </div>
            </div>
        </div>

         <div class="row" style="border:1px solid whitesmoke; margin-top: 20px;height:200px;">
             <div class="col-md-9">
                 <ul class="nav nav-tabs"  style="margin-left: 20px;">
                     <li  class="active" >
                         <a href="#jishu" role="tab" data-toggle="tab" aria-controls="jishu">技术区</a>
                     </li>
                     <li><a href="#feijishu"
                             role="tab" aria-controls="feijishu" data-toggle="tab">非技术区</a>
                     </li>
                     <li><a href="#dongtai"
                             role="tab" aria-controls="dongtai" data-toggle="tab">我的动态</a>
                     </li>
                 </ul>

                 <div  class="tab-content" >
                     <div  style="height:300px;border:1px solid whitesmoke;background-color: white"  id="jishu"  class="tab-pane fade in active" >
                     </div>
                     <div   style="height:400px;border:1px solid whitesmoke;background-color: white"  id="feijishu"  class="tab-pane fade" >
                     </div>
                     <div   style="height:500px;border:1px solid whitesmoke;background-color: white"  id="dongtai"  class="tab-pane fade" >
                     </div>
                 </div>
             </div>
         </div>
     </div>
</div>

<!--模态框 -->
<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" id="myModal" >
    <div class="modal-dialog modal-lg" role="document" >
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">修改图像</h4>
            </div>
            <div class="modal-body">
                <form enctype="multipart/form-data" method="post" action="${request.contextPath}/uploadImage.do" id="imageForm">
                    <div >
                        <input type="file"  id="imgFile" name="imgFile" onchange="readURL(this);" style="border:none;">
                        <br /> <br />
                        <div id="result" style="width:300px;height:300px;"></div>
                    </div>

                    <div id="preview-pane" >
                        <div  class="preview-container">
                            <img id="cutimgPreview" src="" class="jcrop-preview" />
                            <input type="hidden" id="x" name="x" />
                            <input type="hidden" id="y" name="y" />
                            <input type="hidden" id="w" name="w" />
                            <input type="hidden" id="h" name="h" />
                            <input type="hidden" id="originalW" name="originalW" />
                            <input type="hidden" id="originalH" name="originalH" />
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default">取消</button>
                <button type="button" class="btn btn-primary" onclick="uploadImage()">上传图片</button>
            </div>

        </div>
    </div>
</div>
<script src="${request.contextPath}/js/jquery.min.js"></script>
<script src="${request.contextPath}/js/bootstrap.min.js"></script>
<script src="${request.contextPath}/js/jquery.Jcrop.js"></script>
<script src="${request.contextPath}/js/jquery.color.js"></script>
<script>
    function changeImage() {
        $('#myModal').modal('show');
    }
</script>

<script type="text/javascript">
    //定义一个全局api，这样操作起来比较灵活
    var jcrop_api, boundx, boundy;
    function readURL(input) {
        $preview = $('#preview-pane'),
        $pcnt = $('#preview-pane .preview-container'),
        $pimg = $('#preview-pane .preview-container img'),
        xsize = $pcnt.width(), ysize = $pcnt.height();

        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.readAsDataURL(input.files[0]);

            reader.onload = function(e) {
                result.innerHTML = '<img id="bigImage"  class="double-border" src="'+e.target.result+'" />';
                $('#cutimgPreview').removeAttr('src');
                $('#cutimgPreview').attr('src', e.target.result);
               $('#cutimgPreview').attr('style', 'width:250px;height:170px;padding:2px;');
                $('#result').Jcrop({
                    onChange : updatePreview,
                    onSelect : updatePreview,
                }, function() {
                    var bounds = this.getBounds();
                    boundx = bounds[0];
                    boundy = bounds[1];
                    console.info(boundx + "," + boundy);
                    jcropApi = this;
                    $preview.appendTo(jcropApi.ui.holder);
                });
            }
        }
        function updatePreview(c) {
            $("#x").val(c.x);
            $("#y").val(c.y);
            $("#w").val(c.w);
            $("#h").val(c.h);
            $("#originalW").val(boundx);
            $("#originalH").val(boundy);

            console.info($("#x").val()+","+$("#y").val()+","+$("#w").val()+","+$("#h").val());
            if (parseInt(c.w) > 0) {
                var rx = xsize / c.w;
                var ry = ysize / c.h;
                $pimg.css({
                    width : Math.round(rx * boundx) + 'px',
                    height : Math.round(ry * boundy) + 'px',
                    marginLeft : '-' + Math.round(rx * c.x) + 'px',
                    marginTop : '-' + Math.round(ry * c.y) + 'px'
                });
            }

        }
    }
    function uploadImage(){
        $("#imageForm").submit();
    }

</script>
</body>
</html>
