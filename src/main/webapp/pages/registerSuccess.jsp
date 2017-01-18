
<html>
<head>
    <%
        String contextPath = request.getContextPath();
    %>
    <title>注册成功</title>
</head>
<body>
<h1>恭喜您，注册成功！！请点击<a href="<%=contextPath%>/index.do">回到主页</a></h1>
<p>
    <div id="timeCount" style="font-size: 20px"></div>
</p>

<script type="text/javascript">
    //设定倒数秒数
    var t = 10;
    //显示倒数秒数
    function showTime(){
        t -= 1;
        document.getElementById('timeCount').innerHTML= t+"秒后跳到主页";
        if(t==0){
            location.href="<%=contextPath%>/index.do";
        }
        //每秒执行一次,showTime()
        setTimeout("showTime()",1000);
    }
    //执行showTime()
    showTime();
</script>
</body>
</html>
