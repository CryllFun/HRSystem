<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/9/9
  Time: 21:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        span{
            color: red;
        }
        #errMsg{
            color: red;
        }
        body{
            background-image: url("/imgs/loginbak.jpg");
            background-repeat: no-repeat;
            background-size: cover;
        }
        .container{
            width: 500px;
            margin-left: 200px;
            margin-top: 200px;
        }
        #code2{
            background-image: url("/imgs/code.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            width: 80px;
        }
        #code1{
            width: 100px;
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
            margin-left: 40px;
        }

    </style>
    <title>人力资源系统-登录</title>
    <script type="text/javascript" src="/js/jquery-1.11.2.js"></script>
    <script type="text/javascript">
        $(function(){
            var check=false;
            $(".hide").hide();
            $("#msg").hide();
            $("#uName").blur(function () {
                if($(this).val()==null||$(this).val()==""){
                    $("#l1").show();
                    check=false;
                }else{
                    $("#l1").hide();
                    check=true;
                }
            });
            $("#uPsw").blur(function () {
                if($(this).val()==null||$(this).val()==""){
                    $("#l2").show();
                    check=false;
                }else{
                    $("#l2").hide();
                    check=true;
                }
            });
            $("#code1").blur(function () {
               var  code1= $("#code1").val().toLowerCase();
               var code2=$("#code2").text().toLowerCase();
                if(code1==null||code1==""){
                    $("#l3").text("请输入验证码!");
                    check=false;
                }else{
                    if(code1!=code2){
                        $("#l3").text("验证码不一致!");
                        check=false;
                    }else{
                        $("#l3").text("");
                        check=true;
                    }
                }
            });
            $("#btn").click(function () {
                if(check){
                    ff.submit();
                }else{
                    $("#errMsg").text("登录信息填写有误!");
                }
            });
            $("#cbtn").click(function () {
                window.location="goRegist.action";
            })
            $("#code2").click(function () {
                $.ajax({
                    url:"takeCode.action",
                    type:"post",
                    dataType:"text",
                    success:function (data) {
                        $("#code2").text(data);
                    }
                })
            })
        });
    </script>
</head>
<body>
    <div class="container">
        <form action="login.action" method="post" name="ff">
            <h2>登录</h2>
            <div id="errMsg">${errMsg}</div>
            <div>用户名:<input type="text" id="uName" name="name" placeholder="请输入用户名"> <span class="hide" id="l1">用户名不能为空!</span></div>
            <div>密&nbsp;&nbsp;码:<input type="password" id="uPsw" name="psw" placeholder="请输入密码"> <span class="hide" id="l2">密码不能为空!</span></div>
            <div>验证码:<input type="text" placeholder="请输入验证码" id="code1" name="code1">&nbsp;&nbsp;<span id="code2" name="code2">${code}</span>&nbsp;&nbsp;&nbsp;&nbsp;<span id="l3"></span></div>
            <div><input type="button" value="登录" id="btn"><input type="button" value="前往注册" id="cbtn"></div>
        </form>
    </div>
</body>
</html>
