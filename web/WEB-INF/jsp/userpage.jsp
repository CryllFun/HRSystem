<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/9/9
  Time: 22:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>人力资源系统-游客主页</title>
    <style>
        body{
            margin: 0px;
        }
        .container{
            overflow: auto;
            width: 100%;
            height: 100%;

        }
        .container>div{
            float: left;
        }
        #left{
            background: sandybrown;
            width: 15%;
            height: 100%;
            text-align: center;
        }
        #right{
            background: aqua;
            width: 85%;
            height: 100%;
            text-align: center;
        }
        #left>div{
            margin-bottom: 10px;
            font-size: 1.5em;
            font-weight: bold;
        }
        #mulu{
            background: lawngreen;
            margin-top: 0px;
            color: darkgrey;
        }
        .top{
            width: 100%;
            margin: 0px;
            background-image: url("/imgs/userpagetop.gif");
            background-repeat: no-repeat;
            background-size: cover;
            height: 120px;
        }
        h1{
            width: 100%;
            text-align: center;
            color: darkgrey;
        }
        #welcome{
            margin-left: 100px;
        }
        #jltb{
            height: 92%;

            text-align: center;
        }
        textarea{
            width: 100%;
            height: 100px;
        }
        #jltb>td>input{
            width: 100%;
        }
        #sub,#btn{
            width:100px;
        }
        #right>div{
            margin: auto;
        }
    </style>
    <script type="text/javascript" src="/js/jquery-1.11.2.js"></script>
    <script>
        $(function () {
            $("#xx").hide();
            $("#zpxx").hide();
            $("#gsjj").hide();
            $("#jltb").find("td>span").show();
            $("#jltb").find("td>input").hide();
            $("#jltb").find("td>textarea").hide();
            $("#jltb").on("click","td",function () {
                $(this).children("span").hide();
                $(this).children("input").show();
                $(this).children("textarea").show();
            });
            $("#exit").click(function () {
                window.location.href="logout.action";
            })
            $("#new").click(function () {
                if($(this).val()=="新建"){

                    $("#resId").val("0");
                    $("#rsub").val("0");
                    $("#jltb").find("td>span").hide();
                    $("#jltb").find("td>input").show();
                    $("td>textarea").show();
                    $(this).val("取消");
                }else{
                    $("#resId").val($("#change").val());
                    $("#rsub").val($("#csub").val());
                    $("#jltb").find("td>span").show();
                    $("#jltb").find("td>input").hide();
                    $("td>textarea").hide();
                    $(this).val("新建");
                }
            });
            $("#btn").click(function () {
                var resId=$("#resId").val();
                window.location.href="deleteRes.action?resId="+resId;
            })
            $("#company_msg").click(function () {
                $("#gsjj").show();
                $("#xx").hide();
                $("#zpxx").hide();
                $("#grjl").hide();
            })
            $("#recruit_msg").click(function () {
                $("#jltb").find("td>input").show();
                $("#gsjj").hide();
                $("#xx").hide();
                $("#zpxx").show();
                $("#grjl").hide();
            })
            $("#resume").click(function () {
                $("td>textarea").hide();
                $("#jltb").find("td>span").show();
                $("#jltb").find("td>input").hide();
                $("#gsjj").hide();
                $("#xx").hide();
                $("#zpxx").hide();
                $("#grjl").show();
            })
            $("#my_msg").click(function () {
                $("#gsjj").hide();
                $("#xx").show();
                $("#zpxx").hide();
                $("#grjl").hide();
            })
            $("input[value='投递']").click(function () {
                if(!confirm("简历投递后将不可修改,是否继续?")){
                    return;
                }
                var a=$(this);
                $.ajax({
                    url: "sendRes.action",
                    type:"post",
                    data:{
                        uId:$("#uId").val(),
                        deptId:a.next().val(),
                        resId:$("#selectresId").val(),
                        pstId:a.prev().val(),
                        infoId:a.prev().prev().val(),

                    },
                    dataType:"text",
                    success:function (data) {
                        if(data=="true"){
                            alert("你已成功投递该岗位,请耐心等待面试通知!")
                        }else{
                            alert("抱歉,投递失败!")

                        }
                    }
                })
            });
            //接受面试邀请
            $("#mstb").on("click",".accpt",function () {
                var a=$(this);
                var id=a.next().val();
                $.ajax({
                    url:"accptItview.action",
                    type:"post",
                    data:{
                        resId:id,
                    },
                    dataTypr:"text",
                    success:function (data) {
                        if(data=="true"){
                            a.val("已接受");
                            a.next().next().val("取消")
                        }
                    }
                })
            });
            //拒绝面试邀请
            $("#mstb").on("click",".no_accpt",function () {
                var a=$(this);
                var id=a.next().val();
                $.ajax({
                    url:"noaccptItview.action",
                    type:"post",
                    data:{
                        resId:id,
                    },
                    dataTypr:"text",
                    success:function (data) {
                        if(data=="true"){
                            a.val("接受");
                            a.next().next().val("拒绝")
                        }
                    }
                })
            });
            // $("#sub").click(function () {
            //     if($("#rsub").val()=="1"){
            //         alert("该简历已提交,暂不可修改!");
            //         return;
            //
            //     }else{
            //         alert($("#rsub").val())
            //         $("#xxx").submit();
            //     }
            // });
        });
    </script>
</head>
<body>
    <div class="top">
        <h1>主页</h1>
        <div id="welcome"><input type="hidden" value="${user.userId}" id="uId" name="uId">${user.name},欢迎来到召唤师峡谷!</div>
    </div>
    <div class="container">
        <div id="left">
            <div id="mulu">目录</div>
            <div id="company_msg" class="m">公司简介</div>
            <div id="recruit_msg" class="m">招聘信息</div>
            <div id="resume" class="m">简历</div>
            <div id="my_msg" class="m">消息</div>
            <div id="exit" class="m">退出</div>

        </div>
        <div id="right">
            <div id="gsjj" style="width: 1003px">
                <h3>${com.comName}</h3>
                <div>${com.comMsg}</div>
            </div>
            <div id="zpxx" style="width:100%">
                <h3>招聘信息</h3>
                <div style="margin-left: 150px">
                    <form>
                    <table id="zptb" border="1" style="text-align: center">
                        <tr style="height: 30px">
                            <td style="width: 100px">部门</td>
                            <td style="width: 100px">职位</td>
                            <td style="width: 300px">岗位职责</td>
                            <td style="width: 300px">应聘要求</td>
                            <td style="width: 100px">薪资</td>
                            <td style="width: 200px">选择简历</td>
                            <td style="width: 100px">点击投递</td>
                        </tr>
                        <c:forEach items="${infos}" var="info">
                            <tr style="height: 40px">
                                <td><input type="hidden" value="${info.deptId}" name="deptId">${info.deptName}</td>
                                <td>${info.pstName}</td>
                                <td>${info.functions}</td>
                                <td>${info.requests}</td>
                                <td>${info.salary}</td>
                                <td><select id="selectresId">
                                    <option>----请选择----</option>
                                    <c:forEach items="${resumes}" var="res">
                                        <option value="${res.resId}">${res.resName}</option>
                                    </c:forEach>
                                </select>
                                </td>
                                <td><input type="hidden" value="${info.infoId}" name="infoId"><input type="hidden" value="${info.pstId}" name="pstId"><input type="button" value="投递" id="tdbtn"><input type="hidden" value="${info.deptId}"></td>
                            </tr>
                        </c:forEach>
                    </table>
                    </form>
                </div>
            </div>
            <div id="grjl" style="width: 1003px">
                <form action="addOrUpdateRes.action" method="post" id="xxx">
                <table border="1" class="grjl" id="jltb">
                    <tr>
                        <td colspan="7" id="title"><span>${resume.resName}</span><input type="text" id="resName" name="resName" value="${resume.resName}"></td>
                    </tr>
                    <tr>
                        <td rowspan="4" style="width: 100px"><input type="image" value=""></td>
                        <td style="width: 50px">姓名</td>
                        <td style="width: 200px"><span>${resume.name}</span><input type="text" id="name" name="name" value="${resume.name}"></td>
                        <td style="width: 50px">性别</td>
                        <td style="width: 200px"><span>${resume.sex}</span><input type="text" id="sex" name="sex" value="${resume.sex}"></td>
                        <td style="width: 50px">出生日期</td>
                        <td style="width: 200px"><span><fmt:formatDate value="${resume.birth}" pattern="yyyy-MM-dd"/></span> <input type="date" id="birth" name="birth" value="${resume.sbirth}" ></td>
                    </tr>
                    <tr>
                        <td>政治面貌</td>
                        <td><span>${resume.poliStatus}</span><input type="text" id="poliStatus" name="poliStatus" value="${resume.poliStatus}"></td>
                        <td>学历</td>
                        <td><span>${resume.record}</span><input type="text" id="record" name="record" value="${resume.record}"></td>
                        <td>毕业院校</td>
                        <td><span>${resume.school}</span><input type="text" id="school" name="school" value="${resume.school}"></td>

                    </tr>
                    <tr>
                        <td>就读专业</td>
                        <td><span>${resume.major}</span><input type="text" id="major" name="major" value="${resume.major}"></td>
                        <td>毕业时间</td>
                        <td><span><fmt:formatDate value="${resume.graduDate}" pattern="yyyy-MM-dd"/></span><input type="date" id="graduDate" name="graduDate" value="${resume.sgraduDate}"></td>
                        <td>联系方式</td>
                        <td><span>${resume.phone}</span><input type="text" id="phone" name="phone" value="${resume.phone}"></td>

                    </tr>
                    <tr>
                        <td>邮箱</td>
                        <td><span>${resume.email}</span><input type="text" id="email" name="email" value="${resume.email}"></td>
                        <td>应聘岗位</td>
                        <td><span>${resume.wantPst}</span><input type="text" id="wantPst" name="wantPst" value="${resume.wantPst}"></td>
                        <td>期望薪资</td>
                        <td><span>${resume.wantSal}</span><input type="number" name="wantSal" value="${resume.wantSal}"></td>

                    </tr>
                    <tr>
                        <td>籍贯</td>
                        <td colspan="6"><span>${resume.nativePlace}</span><input type="text" id="nativePlace" name="nativePlace" value="${resume.nativePlace}"></td>
                    </tr>
                    <tr>
                        <td colspan="7">工作经验</td>

                    </tr>
                    <tr>
                        <td colspan="7"><span>${resume.workExp}</span><textarea id="workExp" name="workExp">${resume.workExp}</textarea></td>
                    </tr>
                    <tr>
                        <td colspan="7">个人技能</td>
                    </tr>
                    <tr>
                        <td colspan="7"><span>${resume.ability}</span><textarea id="ability" name="ability">${resume.ability}</textarea></td>
                    </tr>
                    <tr>
                        <td colspan="7">兴趣爱好</td>
                    </tr>
                    <tr>
                        <td colspan="7"><span>${resume.hobbies}</span><textarea id="hobbies" name="hobbies">${resume.hobbies}</textarea></td>
                    </tr>
                    <tr>
                        <td colspan="7">自我评价</td>
                    </tr>
                    <tr>
                        <td colspan="7"><span>${resume.selfAsst}</span><textarea id="selfAsst" name="selfAsst">${resume.selfAsst}</textarea></td>
                    </tr>
                </table>
                    <input type="hidden" value="${resume.submit}" id="csub">
                    <input type="hidden" value="${resume.submit}" id="rsub" name="submit">
                    <input type="hidden" value="${user.userId}" name="uId">
                    <input type="hidden" value="${resume.resId}" id="resId" name="resId">
                    <input type="hidden" value="${resume.resId}" id="change">
                    <input type=submit value="保存" id="sub"><input type="button" value="新建" id="new"><input type="button" value="删除" id="btn">
                </form>
                <div>
                    <c:if test="${page.firstPage}">
                        首页 上一页
                    </c:if>
                    <c:if test="${!page.firstPage}">
                        <a href="page.action?currPage=1">首页</a>
                        <a href="page.action?currPage=${page.currPage-1}">上一页</a>
                    </c:if>
                    <c:forEach begin="1" end="${page.totalPage}" step="1" var="num">
                        <c:if test="${page.currPage==num}">
                            ${num}
                        </c:if>
                        <c:if test="${page.currPage!=num}">
                            <a href="page.action?currPage=${num}">${num}</a>
                        </c:if>
                    </c:forEach>
                    <c:if test="${page.lastPage}">
                        下一页 末页
                    </c:if>
                    <c:if test="${!page.lastPage}">
                        <a href="page.action?currPage=${page.currPage+1}">下一页</a>
                        <a href="page.action?currPage=${page.totalPage}">末页</a>
                    </c:if>
                </div>
            </div>
            <div id="xx" style="width: 1003px">
                <h2>面试邀请</h2>
                <div>
                    <table id="mstb" border="1">
                        <tr>
                            <td>简历</td>
                            <td>职位</td>
                            <td>面试时间</td>
                            <td>操作</td>
                        </tr>
                        <c:forEach items="${ress}" var="res">
                            <c:if test="${res.invited==1}">
                                <tr>
                                    <td>${res.resName}</td>
                                    <td>${res.deptName}:${res.pstName}</td>
                                    <td><fmt:formatDate value="${res.itviewTime}" pattern="yyyy-MM-dd HH:mm"/> </td>
                                    <c:if test="${res.accpet==0}">
                                        <td><input type="button" value="接受" class="accpt"><input type="hidden" value="${res.resId}"><input type="button" value="拒绝" class="no_accpt"></td>
                                    </c:if>
                                    <c:if test="${res.accpet==1}">
                                        <td><input type="button" value="已接受"><input type="hidden" value="${res.resId}"><input type="button" value="取消" class="no_accpt"></td>
                                    </c:if>
                                </tr>
                            </c:if>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
