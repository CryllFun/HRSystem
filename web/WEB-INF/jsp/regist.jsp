
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <style>
        body{
            background-image: url("/imgs/registbak.jpg");
            background-repeat: no-repeat;
            background-size: cover;
        }
        form>div{
            margin-bottom: 10px;
        }
        h2{
            width: 250px;
            text-align: center;
        }
        form>div{
            margin-bottom: 10px;
        }
        #btn{
            margin-right: 30px;
            margin-left: 4px;
        }
        #rebtn{
            margin-right: 30px;
        }
        span{
            color:red;
        }
        .container{
            margin-left: 500px;
            margin-top: 100px;
        }
    </style>
    <title>人力资源系统-注册</title>
    <script type="text/javascript" src="/js/jquery-1.11.2.js"></script>
    <script type="text/javascript">
        $(function () {
            var b=false;
            // 验证用户名
            $("#uName").blur(function () {
                var name=$(this).val();
                if(name==null||name==""){
                    $("#un").text("账户名不能为空!");
                    b=false;
                    return;
                }
                var reg=/^[\w_\u4e00-\u9fa5][\w_.\u4e00-\u9fa5]{0,7}$/;
                if(!reg.test(name)){
                    $("#un").text("输入格式有误!");
                    b=false;
                    return;
                }
                $.ajax({
                    url:"checkName.action",
                    type:"post",
                    data:{
                        uName:$(this).val()
                    },
                    dataType:"text",
                    success:function (data) {
                        if(data=="true"){
                            $("#un").text("该用户名已存在!");
                            b=false;
                            return;
                        }else{
                        }
                    }
                })
                $("#un").text("");
                b=true;
            });
            // 验证密码
            $("#uPsw").blur(function () {
                //清空密码2
                $("#uPsw2").val("");
                var uPsw=$(this).val();
                if(uPsw==null||uPsw==""){
                    b=false;
                    $("#up1").text("密码不能为空!");
                    return;
                }
                var reg=/^[\w_]{6,15}$/;
                if(!reg.test(uPsw)){
                    b=false;
                    $("#up1").text("输入格式有误!");
                    return;
                }
                $("#up1").text("");
                b=true;
            });
            //验证密码一致性
            $("#uPsw2").blur(function () {
                var uPsw2=$(this).val();
                var uPsw=$("#uPsw").val();
                if(uPsw2!=uPsw){
                    $("#up2").text("密码不一致");
                    b=false;
                    return;
                }
                $("#up2").text("");
                b=true;
            });
            //验证手机号
            $("#uPhone").blur(function () {
                var phone=$(this).val();
               if(phone==null||phone==""){
                   $("#ph").text("");
                   return;
               }
               var reg=	/^1\d{10}$/;
               if(!reg.test(phone)){
                   $("#ph").text("手机号位数有误!");
                   b=false;
                   return;
               }
                $("#ph").text("");
                b=false;
            });
            //验证邮箱
            $("#uEmail").blur(function () {
                var email=$(this).val();
                if(email==null||email==""){
                    $("#em").text("");
                    return;
                }
                var reg=/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
                if(!reg.test(email)){
                    $("#em").text("输入格式有误!");
                    b=false;
                    return;
                }
                $("#em").text("");
                b=true;
            })
            $("#btn").click(function () {
                if(b){
                    form.submit();
                }else{
                    $("#msg").text("注册信息有误!");
                }
            });
            $("#back").click(function () {
                window.location="/";
            })
        })
    </script>
</head>
<body>
<div class="container">
    <h2>注册</h2>
    <form action="regist.action" method="post" name="form">
        <div>用 户 名:<input type="text" id="uName" name="name" placeholder="数字,字母,下划线,中文,点不能开头,最多8位"> <span id="un" class="msg"></span></div>
        <div>密&nbsp;&nbsp;&nbsp;&nbsp;码:<input type="password" id="uPsw" name="psw" placeholder="字母,数字,_组成，必须6-10位"> <span id="up1" class="msg"></span></div>
        <div>密&nbsp;&nbsp;&nbsp;&nbsp;码:<input type="password" id="uPsw2" name="psw2" placeholder="请确认密码"> <span id="up2" class="msg"></span></div>
        <div>手机号码:<input type="text" id="uPhone" name="phone" placeholder="11位数手机号码"> <span id="ph" class="msg"></span></div>
        <div>个人邮箱:<input type="text" id="uEmail" name="email" placeholder="例:123@qq.com"> <span id="em" class="msg"></span></div>
        <div id="msg" style="color: red" class="msg"></div>
        <div><input type="button" value="确认注册"id="btn"><input type="reset" value="重置" id="rebtn"><input type="button" value="返回登录" id="back"></div>
    </form>
</div>
</body>
</html>
