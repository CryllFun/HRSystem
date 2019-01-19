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
    <title>人力资源系统-管理员主页</title>
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="/css/bootstrap-theme.css">
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
        table{
            text-align: center;
        }
        textarea{
            width: 100%;
            height: 100px;
        }

        #right>div{
            margin: auto;
        }

    </style>
    <script type="text/javascript" src="/js/jquery-1.11.2.js"></script>
    <script type="text/javascript" src="/js/bootstrap.js"></script>

    <script>

        $(function () {

            $("#xx").hide();
            $("#zpxx").hide();
            $("#grjl").hide();
            $("#gulibumen").hide();
            $("#glyg").hide();
            $("#glzw").hide();
            $("#glpx").hide();
            $("#moneydiv").hide();
            $("#queryattd").hide();
            $("#saldiv").hide();
            $("#sal_mang").click(function(){
                $("#gsjj").hide();
                $("#xx").hide();
                $("#zpxx").hide();
                $("#grjl").hide();
                $("#gulibumen").hide();
                $("#glyg").hide();
                $("#glzw").hide();
                $("#glpx").hide();
                $("#moneydiv").hide();
                $("#queryattd").hide();
                $("#saldiv").show();
            })
            $("#attd_mang").click(function () {
                $("#gsjj").hide();
                $("#xx").hide();
                $("#zpxx").hide();
                $("#grjl").hide();
                $("#gulibumen").hide();
                $("#glyg").hide();
                $("#glzw").hide();
                $("#glpx").hide();
                $("#moneydiv").hide();
                $("#queryattd").show();
                $("#saldiv").hide();
            });
            $("#money").click(function () {
                $("#gsjj").hide();
                $("#xx").hide();
                $("#zpxx").hide();
                $("#grjl").hide();
                $("#gulibumen").hide();
                $("#glyg").hide();
                $("#glzw").hide();
                $("#glpx").hide();
                $("#moneydiv").show();
                $("#queryattd").hide();
                $("#saldiv").hide();

            })
            $("#company_msg").click(function () {
                $("#gsjj").show();
                $("#xx").hide();
                $("#zpxx").hide();
                $("#grjl").hide();
                $("#gulibumen").hide();
                $("#glyg").hide();
                $("#glzw").hide();
                $("#glpx").hide();
                $("#moneydiv").hide();
                $("#queryattd").hide();
                $("#saldiv").hide();


            });
            $("#recruit_msg").click(function () {
                $("#gsjj").hide();
                $("#xx").hide();
                $("#zpxx").show();
                $("#grjl").hide();
                $("#gulibumen").hide();
                $("#glyg").hide();
                $("#glzw").hide();
                $("#glpx").hide();
                $("#moneydiv").hide();
                $("#queryattd").hide();
                $("#saldiv").hide();


            });
            $("#resume").click(function () {
                $("#gsjj").hide();
                $("#xx").hide();
                $("#zpxx").hide();
                $("#grjl").show();
                $("#gulibumen").hide();
                $("#glyg").hide();
                $("#glzw").hide();
                $("#glpx").hide();
                $("#moneydiv").hide();
                $("#queryattd").hide();
                $("#saldiv").hide();


            })
            $("#my_msg").click(function () {
                $("#gsjj").hide();
                $("#xx").show();
                $("#zpxx").hide();
                $("#grjl").hide();
                $("#gulibumen").hide();
                $("#glyg").hide();
                $("#glzw").hide();
                $("#glpx").hide();
                $("#moneydiv").hide();
                $("#queryattd").hide();
                $("#saldiv").hide();


            });
            $("#dept_mang").click(function(){
                $("#gsjj").hide();
                $("#xx").hide();
                $("#zpxx").hide();
                $("#grjl").hide();
                $("#gulibumen").show();
                $("#glyg").hide();
                $("#glzw").hide();
                $("#glpx").hide();
                $("#moneydiv").hide();
                $("#queryattd").hide();
                $("#saldiv").hide();


            });
            $("#pst_mang").click(function(){
                $("#gsjj").hide();
                $("#xx").hide();
                $("#zpxx").hide();
                $("#grjl").hide();
                $("#gulibumen").hide();
                $("#glyg").hide();
                $("#glzw").show();
                $("#glpx").hide();
                $("#moneydiv").hide();
                $("#queryattd").hide();
                $("#saldiv").hide();


            });
            $("#emp_mang").click(function(){
                $("#gsjj").hide();
                $("#xx").hide();
                $("#zpxx").hide();
                $("#grjl").hide();
                $("#gulibumen").hide();
                $("#glyg").show();
                $("#glzw").hide();
                $("#glpx").hide();
                $("#moneydiv").hide();
                $("#queryattd").hide();
                $("#saldiv").hide();

            });
            $("#glpx_msg").click(function(){
                $("#gsjj").hide();
                $("#xx").hide();
                $("#zpxx").hide();
                $("#grjl").hide();
                $("#gulibumen").hide();
                $("#glyg").hide();
                $("#glzw").hide();
                $("#glpx").show();
                $("#moneydiv").hide();
                $("#queryattd").hide();
                $("#saldiv").hide();

            });
            $("#exit").click(function () {
                window.location.href="logout.action";
            })

            //二级联动
            $("select[name='aaa']").change(function () {
                var x=$(this);
                x.parent().parent().parent().find("select[name='bbb'] option:gt(0)").remove();
                var id=$(this).val();
                $.ajax({
                    url:"queryPst.action",
                    type:"post",
                    data:{
                        deptId: id,
                    },
                    dataType:"json",
                    success:function(data){
                        $.each(data,function(idx,item){
                            var opt = $("<option value='" + item.pstId + "'>" + item.pstName + "</option>")
                            x.parent().parent().parent().find("select[name='bbb']").append(opt);
                        });
                    }
                });
            });
            //部门职位员工三级联动
            $(".ccc").change(function () {
               $("select[class='ddd'] option:gt(0)").remove();
               $("select[class='eee'] option:gt(0)").remove();
                var id=$(this).val();
                $.ajax({
                    url:"queryPst.action",
                    type:"post",
                    data:{
                        deptId: id,
                    },
                    dataType:"json",
                    success:function(data){
                        $.each(data,function(idx,item){
                            var opt = $("<option value='" + item.pstId + "'>" + item.pstName + "</option>")
                            $(".ddd").append(opt);
                        });
                    }
                });
            });
            $(".ddd").change(function(){
                $("select[class='eee'] option:gt(0)").remove();
                var id=$(this).val();
                $.ajax({
                    url:"queryPstUser.action",
                    type:"post",
                    data:{
                        pstId: id,
                    },
                    dataType:"json",
                    success:function(data){
                        $.each(data,function(idx,item){
                            var opt = $("<option value='" + item.userId + "'>" + item.name + "</option>")
                            $(".eee").append(opt);
                        });
                    }
                });
            });
            //招聘信息td点击事件
            $("#zptb").on("click","td",function () {
                $(this).children("span:eq(0)").hide();
                $(this).children("span:eq(1)").show();
                $(this).parent().children("td:eq(5)").children("span").show();
                $(this).parent().find(".qxxgzp").show();
            });

            //取消修改招聘
            $("#zptb").on("click",".qxxgzp",function () {
                $(this).hide();
                $(this).parent().hide();
                $(this).parent().parent().parent().find("span[class='bf']").show();
                $(this).parent().parent().parent().find("span[class='at']").hide();
            });
            //部门表td点击事件
            $("#depttb").on("click","td",function(){
                $(this).children("span").hide();
                $(this).children("input").show();
                $(this).children("textarea").show();
                $(this).parent().find("input[name='qx']").show();
            });
            $("#zwtb").on("click","td",function(){
                $(this).children("span").hide();
                $(this).children("input").show();
                $(this).children("textarea").show();
                $(this).parent().find("input[name='qx']").show();
            });
            //取消修改部门
            $("input[name='qx']").click(function () {
               $(this).parent().prev().children("span").show();
               $(this).parent().prev().children("textarea").hide();
               $(this).parent().prev().prev().children("span").show();
               $(this).parent().prev().prev().children("input").hide();
               $(this).hide();
            });
            //修改部门
            $("#depttb").on("click",".updtdept",function () {
                var a=$(this);
                var name=a.parent().prev().prev().find("input");
                var desc=a.parent().parent().find("textarea");
                var id=a.prev().val();
                alert(id+","+name.val()+","+desc.val());
                if(!confirm("确认修改?")){
                    return;
                }
                $.ajax({
                    url:"updtDept.action",
                    type:"post",
                    data:{
                        deptId:id,
                        deptName:name.val(),
                        deptDesc:desc.val(),
                    },
                    dataType:"text",
                    success:function (data) {
                        if(data=="true"){
                            a.next().hide();
                            a.parent().parent().find("span").show();
                            a.parent().prev().prev().find("input").hide();
                            a.parent().parent().find("textarea").hide();
                            name.prev().text(name.val());
                            desc.prev().text(desc.val());
                            alert("修改成功!");
                        }else{
                            alert("修改失败!")
                        }
                    }
                })
            });
            $("#qxdept").click(function () {
                $("#hidetr").hide();
            });
            $("#adddept").click(function () {
                $("#hidetr").show();
            });
            $("#qxpst").click(function () {
                $("#zwtr").hide();
            });
            $("#addpst").click(function () {
                $("#zwtr").show();
            });
            $("#addzpbtn").click(function () {
                $("#tjzp").show();
            });
            $("#qxbtn").click(function () {
                $("#tjzp").hide();
            });

            //新增部门
            $("#savedept").click(function () {
                $.ajax({
                    url:"addDept.action",
                    type:"post",
                    data:{
                        deptName:$("#hidetr").find("input[name='deptName']").val(),
                        deptDesc:$("#deptDesc").val(),
                    },
                    dataType:"json",
                    success:function (data) {
                        if(data!=null){
                            var tr=$("<tr>" +
                                "                            <td><span>"+data.deptName+"</span><input hidden type='text' name='deptName' value='"+dept.deptName+"'></td>" +
                                "                            <td><span>"+data.deptDesc+"</span><textarea hidden name='deptDesc'>"+data.deptDesc+"</textarea></td>" +
                                "                            <td><input type=\"hidden\" value='"+data.deptId+"'><input type=\"button\" value=\"修改\" class=\"updtdept\"><input hidden type=\"button\" value=\"取消\" name=\"qx\"></td>" +
                                "                            <td><input type=\"hidden\" value='"+data.deptId+"'><input type=\"button\" value=\"删除之\" class=\"dltdept\"></td>" +
                                "                        </tr>");
                            $("#depttb").append(tr);
                            alert("添加成功!")
                        }else{
                            alert("添加失败!")
                        }

                    }
                })
                $("#hidetr").hide();
            });
            //删除部门
            $("#depttb").on("click",".dltdept",function () {
                if(!confirm("确认删除?")){
                    return;
                }
                var a=$(this);
                var id= a.prev().val();
                $.ajax({
                    url:"deleteDept.action",
                    type:"post",
                    data:{
                        deptId:id,
                    },
                    dataType:"text",
                    success:function (data) {
                        if(data=="true"){
                            a.parent().parent().remove();
                            alert("删除成功!")
                        }else{
                            alert("该部门关联了相关职位,删除失败")
                        }
                    }
                })
            });
            //展示职位
            $("#selDept").change(function () {
                $("#zwtb").find("tr:gt(0)").remove();
                var id=$(this).val();
                $.ajax({
                    url:"queryPst.action",
                    type:"post",
                    data:{
                        deptId: id,
                    },
                    dataType:"json",
                    success:function(data){
                        $.each(data,function(idx,item){
                            var opt = $("<tr name='zwtrs'>\n" +
                                "                        <td style=\"width: 100px\"><span>"+item.pstName+"</span><input hidden type=\"text\" value='"+item.pstName+"'></td>\n" +
                                "                        <td style=\"width: 300px\"><span>"+item.pstDesc+"</span><textarea hidden>"+item.pstDesc+"</textarea></td>\n" +
                                "                        <td style=\"width: 100px\"><input type=\"hidden\" value='"+item.pstId+"'><input type=\"button\" value=\"修改\" class=\"updtpst\"><input hidden type=\"button\" value=\"取消\" name=\"qx\"></td>\n" +
                                "                        <td style=\"width: 100px\"><input type=\"hidden\" value='"+item.pstId+"'><input type=\"button\" value=\"删除之\" class=\"dltdpst\"></td>\n" +
                                "                    </tr>");
                            $("#zwtb").append(opt);
                        });
                    }
                });
            });
            //修改职位
            $("#zwtb").on("click",".updtpst",function () {
                var a=$(this);
                var name=a.parent().prev().prev().find("input");
                var desc=a.parent().parent().find("textarea");
                var id=a.prev().val();
                alert(id+","+name.val()+","+desc.val());
                if(!confirm("确认修改?")){
                    return;
                }
                $.ajax({
                    url:"updtPst.action",
                    type:"post",
                    data:{
                        deptId:$("#selDept option:selected").val(),
                        pstId:id,
                        pstName:name.val(),
                        pstDesc:desc.val(),
                    },
                    dataType:"text",
                    success:function (data) {
                        if(data=="true"){
                            a.next().hide();
                            a.parent().parent().find("span").show();
                            a.parent().prev().prev().find("input").hide();
                            a.parent().parent().find("textarea").hide();
                            name.prev().text(name.val());
                            desc.prev().text(desc.val());
                            alert("修改成功!");
                        }else{
                            alert("修改失败!")
                        }
                    }
                })
            });
            //删除职位
            $("#zwtb").on("click",".dltdpst",function () {
                if(!confirm("确认删除?")){
                    return;
                }
                var a=$(this);
                var id= a.prev().val();
                $.ajax({
                    url:"deletePst.action",
                    type:"post",
                    data:{
                        pstId:id,
                    },
                    dataType:"text",
                    success:function (data) {
                        if(data=="true"){
                            a.parent().parent().remove();
                            alert("删除成功!")
                        }else{
                            alert("该职位关联了相关员工或招聘信息,删除失败")
                        }
                    }
                })
            });
            //添加职位
            $("#savepst").click(function () {
                if(!confirm("确认添加!")){
                    return;
                }
                $.ajax({
                    url:"addPst.action",
                    type:"post",
                    data:{
                        deptId:$("#selDept option:selected").val(),
                        pstName:$("#zwtr").find("input[type='text']").val(),
                        pstDesc:$("#zwtr").find("textarea").val(),
                    },
                    dataType:"json",
                    success:function (data) {
                        if(data!=null){
                            var opt = $("<tr name='zwtrs'>\n" +
                                "                        <td style=\"width: 100px\"><span>"+data.pstName+"</span><input hidden type=\"text\" value='"+data.pstName+"'></td>\n" +
                                "                        <td style=\"width: 300px\"><span>"+data.pstDesc+"</span><textarea hidden>"+data.pstDesc+"</textarea></td>\n" +
                                "                        <td style=\"width: 100px\"><input type=\"hidden\" value='"+data.pstId+"'><input type=\"button\" value=\"修改\" class=\"updtpst\"><input hidden type=\"button\" value=\"取消\" name=\"qx\"></td>\n" +
                                "                        <td style=\"width: 100px\"><input type=\"hidden\" value='"+data.pstId+"'><input type=\"button\" value=\"删除之\" class=\"dltdpst\"></td>\n" +
                                "                    </tr>");
                            $("#zwtb").append(opt);
                            alert("添加成功!")
                        }else{
                            alert("添加失败!")
                        }
                    }
                })
                $("#zwtr").hide();
            });
            //添加员工
            $("#addemp").click(function () {
                var name=$("#addempname").val();
                var sex=$("#addempsex").val();
                var age=$("#addempage").val();
                var recd=$("#addemprec").val();
                var deptId=$("#addempdept option:selected").val();
                var pstId=$("#addemppst option:selected").val();
                var school=$("#addempsc").val();
                var major=$("#addempmj").val();
                var eduDate=$("#addempby").val();
                var inTime=$("#addemprz").val();
                var phone=$("#addempph").val();
                var email=$("#addempem").val();
                var status=$("#addStatus").val();
                var basicSal=$("#addSalary").val();
                if(name==""||name==null){
                    alert("请输入姓名");
                    return;
                }
                if(deptId==""||deptId==0){
                    alert("请选择部门");
                    return;
                }
                if(pstId==""||pstId==0){
                    alert("请选择职位");
                    return;
                }
                if(eduDate==""){
                    eduDate="2018-00-00";
                }
                if(inTime==""){
                    inTime="2018-00-00";
                }
                $.ajax({
                    url:"addUser.action",
                    type:"post",
                    data:{
                        name:name,
                        sex:sex,
                        age:age,
                        record:recd,
                        deptId:deptId,
                        pstId:pstId,
                        school:school,
                        major:major,
                        edutTime:eduDate,
                        inTime:inTime,
                        phone:phone,
                        email:email,
                        status:status,
                        basicSal:basicSal,
                    },
                    dataType:"json",
                    success:function (data) {
                        if(data!=null){
                            $(".removetr").remove();
                            $.each(data , function (index,item) {
                                var tr=$("<tr class='removetr'>\n" +
                                    "                                        <td>"+item.name+"</td>\n" +
                                        "                                    <td>"+item.status+"</td>\n"+
                                    "                                        <td>"+item.pstName+"</td>\n" +
                                    "                                        <td>"+item.phone+"</td>\n" +
                                    "                                        <td>"+item.email+"</td>\n" +
                                    "                                        <td><input type=\"hidden\" value='"+item.userId+"'>\n" +
                                    "                                            <button type=\"button\"  data-toggle=\"modal\" data-target=\"#usermsg\" name=\"showuser\" class='showuser'>\n" +
                                    "                                                详细信息\n" +
                                    "                                            </button>\n" +
                                    "                                        </td>\n" +
                                    "                                        <td><input type=\"hidden\" value='"+item.userId+"'><button type=\"button\"  data-toggle=\"modal\" data-target=\"#lzModal\" class=\"txlz\">\n" +
                                    "                                                办理离职\n" +
                                    "                                            </button></td>\n" +
                                    "                                    </tr>");
                                $("#emptb").append(tr);
                            });
                            alert("添加成功!");
                        }else{
                            alert("添加失败!");
                        }
                    }
                })
            });
            //查看员工
            $("#emptb").on("click",".showuser",function () {
                var id=$(this).prev().val();
                alert(id);
                $.ajax({
                   url:"showUser.action",
                    type:"post",
                    data:{
                       userId:id,

                    },
                    success:function (data) {
                        alert(data.name);
                       $("#uid").val(id);
                        $("#upempby").val(data.sedutTime);
                        $("#upempage").val(data.age);
                        $("#upempsex").val(data.sex);
                        $("#upempem").val(data.email);
                        $("#upempmj").val(data.major);
                        $("#upempph").val(data.phone);
                        $("#upemprz").val(data.sinTime);
                        $("#upmpname").val(data.name);
                        $("#upemprec").val(data.record);
                        $("#upempsc").val(data.school);
                        $("#stardept").val(data.deptId);
                        $("#stardept").text(data.deptName);
                        $("#starpst").val(data.pstId);
                        $("#starpst").text(data.pstName);
                        $("#upStatus").val(data.status);
                        $("#upSalary").val(data.basicSal);
                        $("#upNote").val(data.note);
                    }
                });
            });
            //填写离职
            $("#emptb").on("click",".txlz",function () {
                var id=$(this).prev().val();
                $("#lzid").val(id);
            });
            //删除员工
            $("#delemp").click(function () {
                $.ajax({
                    url:"lizhiemp.action",
                    tepe:"post",
                    data:{
                        userId:$("#lzid").val(),
                        note:$("#note").val(),
                    },
                    dataType:"text",
                    success:function (data) {
                        if(data=="true"){
                            alert("办理成功！");
                        }else{
                            alert("办理失败！")
                        }
                    }
                })
            })
            //修改用户
            $("#upemp").click(function () {
                var id=$("#uid").val();
                var name=$("#upmpname").val();
                var sex=$("#upempsex").val();
                var age=$("#upempage").val();
                var recd=$("#upemprec").val();
                var deptId=$("#upempdept option:selected").val();
                var pstId=$("#upemppst option:selected").val();
                var school=$("#upempsc").val();
                var major=$("#upempmj").val();
                var eduDate=$("#upempby").val();
                var inTime=$("#upemprz").val();
                var phone=$("#upempph").val();
                var email=$("#upempem").val();
                var status=$("#upStatus").val();
                var basicSal=$("#upSalary").val()
                var note=$("#upNote").val();
                if(eduDate==""||eduDate==null){
                    eduDate="2018-00-00";
                }
                if(inTime==""||inTime==null){
                    inTime="2018-00-00";
                }

                $.ajax({
                    url:"updateUser.action",
                    type:"post",
                    data:{
                        userId:id,
                        name:name,
                        sex:sex,
                        age:age,
                        record:recd,
                        deptId:deptId,
                        pstId:pstId,
                        school:school,
                        major:major,
                        edutTime:eduDate,
                        inTime:inTime,
                        phone:phone,
                        email:email,
                        status:status,
                        basicSal:basicSal,
                        note:note,
                    },
                    dataType:"json",
                    success:function (data) {
                        if(data!=null){
                            alert("修改成功!")
                            $(".removetr").remove();
                            $.each(data , function (index,item) {
                                var tr=$("<tr class='removetr'>\n" +
                                    "                                        <td>"+item.name+"</td>\n" +
                                        "                            <td>"+item.status+"</td>\n"+
                                    "                                        <td>"+item.pstName+"</td>\n" +
                                    "                                        <td>"+item.phone+"</td>\n" +
                                    "                                        <td>"+item.email+"</td>\n" +
                                    "                                        <td><input type=\"hidden\" value='"+item.userId+"'>\n" +
                                    "                                            <button type=\"button\"  data-toggle=\"modal\" data-target=\"#usermsg\" name=\"showuser\" class='showuser'>\n" +
                                    "                                                详细信息\n" +
                                    "                                            </button>\n" +
                                    "                                        </td>\n" +
                                    "                                        <td><input type=\"hidden\" value='"+item.userId+"'><button type=\"button\"  data-toggle=\"modal\" data-target=\"#lzModal\" class=\"txlz\">\n" +
                                    "                                                办理离职\n" +
                                    "                                            </button></td>\n" +
                                    "                                    </tr>");
                                $("#emptb").append(tr);
                            });
                        }else{
                            alert("修改失败!")
                        }
                    }
                })
            });
            //查看对应部门下的员工
            $("#empdept").change(function () {
                $(".removetr").remove();
                var deptId=$(this).val();
                alert(deptId)
                $.ajax({
                    url:"showAllUser.action",
                    type:"post",
                    data:{
                        deptId:deptId,
                    },
                    success:function (data) {
                        if(data!=null){
                            $(".removetr").remove();
                            $.each(data , function (index,item) {
                                var tr=$("<tr class='removetr'>\n" +
                                    "                                        <td>"+item.name+"</td>\n" +
                                    "                            <td>"+item.status+"</td>\n"+
                                    "                                        <td>"+item.pstName+"</td>\n" +
                                    "                                        <td>"+item.phone+"</td>\n" +
                                    "                                        <td>"+item.email+"</td>\n" +
                                    "                                        <td><input type=\"hidden\" value='"+item.userId+"'>\n" +
                                    "                                            <button type=\"button\"  data-toggle=\"modal\" data-target=\"#usermsg\" name=\"showuser\" class='showuser'>\n" +
                                    "                                                详细信息\n" +
                                    "                                            </button>\n" +
                                    "                                        </td>\n" +
                                    "                                        <td><input type=\"hidden\" value='"+item.userId+"'><input type=\"button\" value=\"删除\" class=\"delemp\"></td>\n" +
                                    "                                    </tr>");
                                $("#emptb").append(tr);
                            })
                        }
                    }
                })
            });
            //添加培训项目
            $("#addTrain").click(function () {
               var trName=$("#trName").val();
               var trContent=$("#trContent").val();
               var starTime=$("#starTime").val();
               var endTime=$("#endTime").val();
               if(trName==null||trName==""){
                   alert("请输入项目名!");
                   return;

               }
               if(trContent==null||trContent==""){
                    alert("请输入项目内容!");
                    return;
                }
                if(starTime==null||starTime==""){
                   alert("请输入开始时间");
                    return;

                }
                if(endTime==null||endTime==""){
                    alert("请输入结束时间");
                    return;

                }
                $.ajax({
                    url:"addTrain.action",
                    type:"post",
                    data:{
                        trName:trName,
                        trContent:trContent,
                        starTime:starTime,
                        endTime:endTime,
                    },
                    dataType:"json",
                    success:function (data) {
                        $(".removeTrain").remove();
                        if(data!=null){
                            $.each(data,function (index,item) {
                                var tr=$("<tr class=\"removeTrain\">\n" +
                                    "                        <td style=\"width: 100px\">"+item.trName+"</td>\n" +
                                    "                        <td style=\"width: 100px\"><input type=\"hidden\" value='"+item.trId+"'>\n" +
                                    "                            <button type=\"button\"  data-toggle=\"modal\" data-target=\"#showTrainModal\" class='showTrain'>\n" +
                                    "                                查看详情\n" +
                                    "                            </button>\n" +
                                    "                        </td>\n" +
                                    "                        <td style=\"width: 100px\"><input type=\"hidden\" value='"+item.trId+"'>\n" +
                                    "                           <input type=\"button\" value=\"删除\" class='deletTrain'> \n" +
                                    "                        </td>\n" +
                                    "                    </tr>");
                                $("#traintb").append(tr);
                            });
                            alert("添加成功!");
                        }else{
                            alert("添加失败!");
                        }
                    }
                });
            });
            //删除培训项目
            $("#traintb").on("click",".deletTrain",function () {
                if(!confirm("删除该项目后,参加该培训的的员工将无法参加培训,确认删除?")){
                    return;
                }
                var a=$(this);
                var id=a.prev().val();

                alert(id);
                $.ajax({
                    url:"deletTrain.action",
                    type:"post",
                    data:{
                        trId:id,
                    },
                    dataType:"text",
                    success:function (data) {
                        if(data=="true"){
                            a.parent().parent().remove();
                            alert("删除成功!")
                        }else{
                            alert("删除失败!")
                        }
                    }
                })
            });
            //查看培训项目信息
            $("#traintb").on("click",".showTrain",function () {
                var id=$(this).prev().val();
                alert(id);
                $.ajax({
                    url:"showTrain.action",
                    type:"post",
                    data:{
                        trId:id,
                    },
                    success:function (data) {
                        alert(data.trName);
                        $("#trId").val(id);
                        $("#uptrName").val(data.trName);
                        $("#uptrContent").val(data.trContent);
                        $("#upstarTime").val(data.sstarTime);
                        $("#upendTime").val(data.sendTime);
                        var tr="";
                        $.each(data.userList,function (index, item) {
                            tr=tr+item.name;
                        });

                        if(tr!=""){
                            $("#showUser").val(tr);
                        }
                    }
                });
            });
            //修改培训信息
            $("#updateTrain").click(function () {
                $.ajax({
                    url:"updateTrain.action",
                    type:"post",
                    data:{
                        trId:$("#trId").val(),
                        trName:$("#uptrName").val(),
                        trContent:$("#uptrContent").val(),
                        starTime:$("#upstarTime").val(),
                        endTime:$("#upendTime").val(),
                    },
                    dataType:"json",
                    success:function (data) {
                        $(".removeTrain").remove();
                        if(data!=null){
                            $.each(data,function (index,item) {
                                var tr=$("<tr class=\"removeTrain\">\n" +
                                    "                        <td style=\"width: 100px\">"+item.trName+"</td>\n" +
                                    "                        <td style=\"width: 100px\"><input type=\"hidden\" value='"+item.trId+"'>\n" +
                                    "                            <button type=\"button\"  data-toggle=\"modal\" data-target=\"#showTrainModal\" class='showTrain'>\n" +
                                    "                                查看详情\n" +
                                    "                            </button>\n" +
                                    "                        </td>\n" +
                                    "                        <td style=\"width: 100px\"><input type=\"hidden\" value='"+item.trId+"'>\n" +
                                    "                           <input type=\"button\" value=\"删除\" class='deletTrain'> \n" +
                                    "                        </td>\n" +
                                    "                    </tr>");
                                $("#traintb").append(tr);
                            });
                            alert("修改成功!");
                        }else{
                            alert("修改失败!");
                        }
                    }
                })
            });

            //部门员工二级联动
            $("#addTrain_Dept").change(function () {
                var deptId=$(this).val();
                alert(deptId)
                $.ajax({
                    url:"showAllUser.action",
                    type:"post",
                    data:{
                        deptId:deptId,
                    },
                    success:function (data) {
                        if(data!=null){
                            $("addTrain_User option:gt(0)").remove();
                            $.each(data , function (index,item) {
                                var opt=$("<option value='" + item.userId + "'>" + item.name + "</option>")
                                $("#addTrain_User").append(opt);
                            })
                        }
                    }
                })
            });
            //添加员工培训
            $("#addTrainLi").click(function () {
                $.ajax({
                    url:"addTrainLi.action",
                    type:"post",
                    data:{
                        trId:$("#addTrain_Train").val(),
                        deptId:$("#addTrain_Dept").val(),
                        userId:$("#addTrain_User").val(),
                    },
                    dataType:"text",
                    success:function (data) {
                        if(data=="true"){
                            alert("添加成功!")
                        }else{
                            alert("添加失败!")
                        }
                    }
                })
            });
            // 删除员工培训
            $("#deletTrainLi").click(function () {
                $.ajax({
                    url:"deletTrainLi.action",
                    type:"post",
                    data:{
                        trId:$("#addTrain_Train").val(),
                        userId:$("#addTrain_User").val(),
                    },
                    dataType:"text",
                    success:function (data) {
                        if(data=="true"){
                            alert("取消成功!")
                        }else{
                            alert("取消失败!")
                        }
                    }
                })
            });
            // 培训员工二级联动
            $("#deletTrain_Train").change(function () {
                var id=$(this).val();
                $.ajax({
                    url:"showTrain.action",
                    type:"post",
                    data:{
                        trId:id,
                    },
                    success:function (data) {
                        $("#deletTrain_User option:gt(0)").remove();
                        if(data.userList.size==0){
                            var opt = $("<option value='-1'>暂无</option>");
                            $("#deletTrain_User").append(opt);
                            return;
                        }
                        $.each(data.userList,function (index, item) {
                            var opt = $("<option value='" + item.userId + "'>" + item.name + "</option>")
                            $("#deletTrain_User").append(opt);
                        });

                    }
                });
            });
            //修改招聘信息
            $("#zptb").on("click",".bcxg",function () {
                var btn=$(this);
                var a1=$(this).prev();
                var a2=$(this).parent().parent().find("select[name='aaa']");
                var deptId=a2.val();
                var a3=$(this).parent().parent().find("select[name='bbb']");
                var pstId=a3.val();
                var a4=$(this).parent().parent().find("textarea[name='functions']");
                var a5=$(this).parent().parent().find("textarea[name='requests']");
                var a6=$(this).parent().parent().find("input[name='salary']");
                if(deptId==0){
                    deptId=a1.prev().val();
                }
                if(pstId==0){
                    pstId=a1.prev().prev().val();
                }
                alert(a1.val()+","+deptId+","+pstId+","+a4.val()+","+a5.val()+","+a6.val());
                $.ajax({
                    url:"updateInfo.action",
                    type:"post",
                    data:{
                        infoId:a1.val(),
                        deptId:deptId,
                        pstId:pstId,
                        functions:a4.val(),
                        requests:a5.val(),
                        salary:a6.val(),
                    },
                    dataType:"json",
                    success:function (dat) {
                        if (dat!=null){
                            alert(dat.pstName)
                            btn.parent().find(".qxxgzp").hide();
                            a2.parent().prev().text(dat.deptName);
                            a3.parent().prev().text(dat.pstName);
                            a4.parent().prev().text(dat.functions);
                            a5.parent().prev().text(dat.requests);
                            a6.parent().prev().text(dat.salary);
                            btn.parent().parent().find("span[class='bf']").show();
                            btn.parent().parent().find("span[class='at']").hide();
                            alert("修改成功!");
                        }else{
                            alert("修改失败!")
                        }
                    }
                });
            });
            //删除招聘信息
            $("#zptb").on("click",".deleteInfobtn",function () {
                if(!confirm("确认删除?")){
                    return;
                }
                var a=$(this);
                var id= a.prev().val();
                $.ajax({
                    url:"deleteInfo.action",
                    type:"post",
                    data:{
                        infoId:id,
                    },
                    dataType:"text",
                    success:function (data) {
                        if(data=="true"){
                            a.parent().parent().remove();
                            alert("删除成功!")
                        }else{
                            alert("删除失败")
                        }
                    }
                })
            });

            //二级联动
            $("#bmsel").change(function () {
                $("#zwsel option:gt(0)").remove();
                var id=$(this).val();
                $.ajax({
                    url:"queryPst.action",
                    type:"post",
                    data:{
                        deptId: id,
                    },
                    dataType:"json",
                    success:function(data){
                        $.each(data,function(idx,item){
                            var opt = $("<option value='" + item.pstId + "'>" + item.pstName + "</option>")
                            $("#zwsel").append(opt);
                        });
                    }
                });
            });
            //添加招聘信息
            $("#addzp").click(function () {
                $.ajax({
                    url:"addInfo.action",
                    type:"post",
                    data:{
                        deptId:$("#bmsel>option:selected").val(),
                        pstId:$("#zwsel>option:selected").val(),
                        functions:$("#funcs").val(),
                        requests:$("#reqs").val(),
                        salary:$("#sal").val(),
                    },
                    dataType:"json",
                    success:function (data) {
                        if(data!=null){
                            var tr=$("<tr style='height: 40px\'>" +
                                "<td><span class='bf'>"+data.deptName+"</span><span hidden='hidden' class='at'></span></td>" +
                                "<td><span class='bf'>"+data.pstName+"</span>" +
                                "<span hidden='hidden' class='at'><select name='bbb'>" +
                                "<option value='0'>---职位---</option>" +
                                "</select></span>" +
                                "</td>" +
                                "<td><span class='bf'>"+data.functions+"</span><span hidden='hidden' class='at'><textarea name='functions'>"+data.functions+"</textarea></span></td>" +
                                "<td><span class='bf'>"+data.requests+"</span><span hidden='hidden' class='at'><textarea name='requests'>"+data.requests+"</textarea></span></td>" +
                                "<td><span class='bf'>"+data.salary+"</span><span hidden='hidden' class='at'><input type='text' name='salary' value='"+data.salary+"'></span></td>" +
                                "<td><input type='hidden' value='"+data.pstId+"'><input type='hidden' value='"+data.deptId+"'><input type='hidden' value='"+data.infoId+"' name='infoId'><input type='button' value='保存' name='bcxg' class=\"bcxg\"><span hidden='hidden'><input type='button' value='取消修改' class='qxxgzp'></span></td>" +
                                "<td><input type='hidden' value='"+data.infoId+"' name='infoId'><input type='button' value='删除' id='deltbtn' class='deleteInfobtn'></td>" +
                                "</tr>");
                            $("#zptb").append(tr);
                            alert("添加成功!")
                        }else{
                            alert("添加失败!")
                        }

                    }
                })
                $(this).parent().parent().hide();
            })
            $("#new").click(function () {
                if($(this).val()=="新建"){
                    $("#resId").val("0");
                    $("td>span").hide();
                    $("td>input").show();
                    $("td>textarea").show();
                    $(this).val("取消");
                }else{
                    $("#resId").val($("#change").val());
                    $("td>span").show();
                    $("td>input").hide();
                    $("td>textarea").hide();
                    $(this).val("新建");
                }
            });
            $("#btn").click(function () {
                var resId=$("#resId").val();
                window.location.href="deleteRes.action?resId="+resId;
            });

            $("#lookRes").on("click",".showresume",function () {
                var a=$(this);
                a.text("已查看");
                $.ajax({
                    url:"lookRes.action",
                    type:"post",
                    data:{
                        resId:a.prev().val(),
                    },
                    dataType:"json",
                    success:function (data) {
                        $("#showUserName").text(data.name);
                        $("#showSex").text(data.sex);
                        $("#showBirth").text(data.sbirth);
                        $("#showStatus").text(data.poliStatus);
                        $("#showRecord").text(data.record);
                        $("#showSchool").text(data.school);
                        $("#showPhone").text(data.phone);
                        $("#showGraduDate").text(data.sgraduDate);
                        $("#showMajor").text(data.major);
                        $("#showNativePlace").text(data.nativePlace);
                        $("#showWorkExp").text(data.workExp);
                        $("#showAbility").text(data.ability);
                        $("#showHobbies").text(data.hobbies);
                        $("#showSelfAsst").text(data.selfAsst);
                        $("#resId").text(a.prev().val());
                    }
                })
            });
            $("#lookRes").on("click",".invitUser",function () {
                var id=$(this).prev().val()
                $("#invitresId").val(id);
                $(this).text("已邀请");
            });
            $("#invite").click(function () {
                var id = $(this).prev().val();
                if ($("#invitresId").val() == "") {
                    alert("已邀请")
                    return;
                }
                $.ajax({
                    url: "mianshi.action",
                    type: "post",
                    data: {
                        resId: id,
                        itviewTime: $("#intviewTime").val(),
                    },
                    dataType: "text",
                    success: function (data) {
                        if (data == "true") {
                            $("#invitresId").val("");
                            alert("已发出邀请!")
                        } else {
                            alert("邀请失败!")
                        }
                    }
                });
            });
            //添加奖惩
            $("#addRP").click(function(){
                var userId=$("#jcyg").val();
                var rewardPuni=$("input[name='rwOrPu']").val();
                var reson=$("#reson").val();
                var time=$("#time").val();
                var jcmoney=$("#jcmoney").val();
                $.ajax({
                    url:"addReOrPu.action",
                    type:"post",
                    data:{
                        userId:userId,
                        rewardPuni:rewardPuni,
                        reson:reson,
                        time:time,
                        money:jcmoney,
                    },
                    dataType:"json",
                    success:function(data){
                        $("#reputb").find("tr:gt(0)").remove();
                        $.each(data,function (index, item) {
                            var tr=$("<tr>\n" +
                                "                        <td>"+item.userId+"</td>" +
                                "                        <td><span>"+item.rewardPuni+"</span><input hidden type=\"text\" value='"+item.rewardPuni+"' class=\"rewardpuni\"></td>\n" +
                                "                        <td><span>"+item.reson+"</span><textarea hidden class=\"reson\">"+item.reson+"</textarea></td>\n" +
                                "                        <td><span>"+item.stime+"</span><input hidden type=\"date\" value='"+item.stime+"' class=\"time\"></td>\n" +
                                "                        <td><span>"+item.money+"</span><input hidden type=\"number\" value='"+item.money+"' class=\"money\"></td>\n" +
                                "                        <td><input type=\"button\" value=\"修改\" class='xgrp'><input type=\"hidden\" value='"+item.repuId+"'><input type=\"button\" value=\"删除\" class='scrp'></td>\n" +
                                "                    </tr>");
                            $("#reputb").append(tr);
                        });
                    }
                })
            });
            $("#reputb").on("click","td",function(){
               $(this).children("span").hide();
               $(this).children("span").next().show();
               $("#qxxgrp").show();
            });
            $("#qxxgrp").click(function () {
                $(this).hide();
                $("#reputb").find("span").show();
                $("#reputb").find("span").next().hide();
            })
            //修改奖惩
            $("#reputb").on("click",".xgrp",function () {
                var x=$(this);
                var a=x.parent().parent().find(".rewardpuni");
                var b=x.parent().parent().find(".reson");
                var c=x.parent().parent().find(".time");
                var d=x.parent().parent().find(".money");
                var e=x.parent().parent().children("td:eq(0)");
                alert(x.next().val()+"-"+e.text()+"-"+a.val()+"-"+b.val()+"-"+c.val()+"-"+d.val())
                if(!confirm("确认修改?")){
                    return;
                }
                $.ajax({
                    url:"updateRePu.action",
                    type:"post",
                    data:{
                        repuId:x.next().val(),
                        userId:e.text(),
                        rewardPuni:a.val(),
                        reson:b.val(),
                        time:c.val(),
                        money:d.val(),
                    },
                    dataType:"json",
                    success:function(data){
                        $("#reputb").find("tr:gt(0)").remove();
                        $.each(data,function (index, item) {
                            var tr=$("<tr>\n" +
                                "                        <td>"+item.userId+"</td>" +
                                "                        <td><span>"+item.rewardPuni+"</span><input hidden type=\"text\" value='"+item.rewardPuni+"' class=\"rewardpuni\"></td>\n" +
                                "                        <td><span>"+item.reson+"</span><textarea hidden class=\"reson\">"+item.reson+"</textarea></td>\n" +
                                "                        <td><span>"+item.stime+"</span><input hidden type=\"date\" value='"+item.stime+"' class=\"time\"></td>\n" +
                                "                        <td><span>"+item.money+"</span><input hidden type=\"number\" value='"+item.money+"' class=\"money\"></td>\n" +
                                "                        <td><input type=\"button\" value=\"修改\" class='xgrp'><input type=\"hidden\" value='"+item.repuId+"'><input type=\"button\" value=\"删除\" class='scrp'></td>\n" +
                                "                    </tr>");
                            $("#reputb").append(tr);
                        });
                    }
                })
            });
            //删除奖惩
            $("#reputb").on("click",".scrp",function () {
                if(!confirm("确认删除?")){
                    return;
                }
                var a=$(this);
                $.ajax({
                    url:"deleteRePu.action",
                    type:"post",
                    data:{
                        repuId:a.prev().val(),
                    },
                    dataType:"text",
                    success:function(data){
                        if(data=="true"){
                            a.parent().parent().remove();
                            alert("删除成功!")
                        }else{
                            alert("删除失败!")
                        }
                    }
                })
            });
            //查看当月考勤
            $("#queryAttd_month").click(function () {
                $("#attdtb").find("tr:gt(0)").remove();
                $.ajax({
                    url:"queryAttdByMonth.action",
                    type:"post",
                    data:{
                        sdate:$("#queryAttd_date").val(),
                        userId:$("#attyg").val(),
                    },
                    dataType:"json",
                    success:function (data) {
                        $.each(data,function (index, item) {
                            var tr=$("<tr>\n" +
                                "                    <td>"+item.sstarTime+"</td>\n" +
                                "                    <td>"+item.sendTime+"</td>\n" +
                                "                    <td>"+item.isLate+"</td>\n" +
                                "                    <td>"+item.isLeave+"</td>\n" +
                                "                    <td>"+item.isNowork+"</td>\n" +
                                "                </tr>");
                            $("#attdtb").append(tr);
                        })
                    }
                })
            });
            //查看当日考勤
            $("#queryAttd_day").click(function () {
                $("#attdtb").find("tr:gt(0)").remove();
                var a=$(this);
                $.ajax({
                    url: "queryAttdByDay.action",
                    type: "post",
                    data: {
                        sdate: $("#queryAttd_date").val(),
                        userId:$("#attyg").val(),

            },
                    dataType: "json",
                    success: function (item) {
                        var tr = $("<tr>\n" +
                            "                    <td>" + item.sstarTime + "</td>\n" +
                            "                    <td>" + item.sendTime + "</td>\n" +
                            "                    <td>" + item.isLate + "</td>\n" +
                            "                    <td>" + item.isLeave + "</td>\n" +
                            "                    <td>" + item.isNowork + "</td>\n" +
                            "                </tr>");
                        $("#attdtb").append(tr);
                    }
                })
            });
            var c=0;
            //结算薪资
            $("#jssal").click(function () {
                var id=$("#salyg").val();
                var time1=$("#jsdate1").val();
                var time2=$("#jsdate2").val();
                if(id==""||id==0||id===null){
                    alert("请选择员工！");
                    return;
                }
                if(time1==""||time1==null){
                    alert("请选择起始时间！");
                    return;

                }
                if(time2==""||time2==null){
                    alert("请选择结束时间！");
                    return;
                }
                $("#saltb").find("tr:gt(0)").remove();
                $.ajax({
                    url:"endSal.action",
                    type:"post",
                    data:{
                        userId:id,
                        time1:time1,
                        time2:time2,
                    },
                    dataType:"json",
                    success:function (data) {
                        var tr=$("<tr>\n" +
                            "                    <td id='sal_userId'>"+id+"</td>\n" +
                            "                    <td id='sal_basicSal'>"+data.basicSal+"</td>\n" +
                            "                    <td id='sal_overPay'>暂无</td>\n" +
                            "                    <td id='sal_rpCost'>"+data.rpCost+"</td>\n" +
                            "                    <td id='sal_socialCost'>"+data.socialCost+"</td>\n" +
                            "                    <td><input type='number' id='bonus'></td>\n" +
                            "                    <td id='sal_realSal'>"+data.realSal+"</td>\n" +
                            "    <td><input type='button' value='确定' id='add_sal'/></td>"+
                            "                </tr>");
                        $("#saltb").append(tr);
                        c=$("#sal_realSal").text();
                    }
                })
            });
            //自动加绩效
            $("#saltb").on("blur","#bonus",function () {
                var a=parseInt(c)+parseInt($(this).val());
                $("#sal_realSal").text(a);
            })
            //确定
            $("#saltb").on("click","#add_sal",function () {
                if(!confirm("确认发放？")){
                    return;
                }
                var id=$("#salyg").val();
                var basicSal=$("#sal_basicSal").text();
                var rpCost=$("#sal_rpCost").text();
                var socialCost=$("#sal_socialCost").text();
                var bonus=$("#bonus").val();
                var realSal=$("#sal_realSal").text();
                var time1=$("#jsdate1").val();
                var time2=$("#jsdate2").val();
                $("#bonus").hide();
                $("#bonus").parent().text(bonus);
                $.ajax({
                    url:"addSal.action",
                    type:"post",
                    data:{
                        userId:id,
                        basicSal:basicSal,
                        rpCost:rpCost,
                        socialCost:socialCost,
                        bonus:bonus,
                        realSal:realSal,
                        starTime:time1,
                        endTime:time2,
                    },
                    dataType:"text",
                    success:function (data) {
                        if(data=="true"){
                            alert("结算成功")
                        }
                    }
                });
            });
            //查看某年工资
            $("#sal_year").click(function () {
                if($("#salyg").val()=="0"){
                    alert("请选择要查看的员工");
                    return;
                }
               $.ajax({
                   url:"querySaly.action",
                   type:"post",
                   data:{
                       userId:$("#salyg").val(),
                       time:$("#sal_time").val(),
                   },
                   dataType:"json",
                   success:function (data) {
                       if(data==null){
                           alert("未找到该年工资记录！");
                           return;
                       }
                       $("#qsaltb").find("tr:gt(0)").remove();
                       $.each(data,function (idx, item) {
                           var tr=$("<tr>\n" +
                               "                    <td>"+item.month+"</td>\n" +
                               "                    <td>"+item.basicSal+"</td>\n" +
                               "                    <td>暂无</td>\n" +
                               "                    <td>"+item.rpCost+"</td>\n" +
                               "                    <td>"+item.socialCost+"</td>\n" +
                               "                    <td>"+item.bonus+"</td>\n" +
                               "                    <td>"+item.realSal+"</td>\n" +
                               "                </tr>");
                           $("#qsaltb").append(tr);
                       })
                   }
               })
            });
            //查看某月工资
            $("#sal_month").click(function () {
                if($("#salyg").val()==0){
                    alert("请选择要查看的员工");
                    return;
                }
                $.ajax({
                    url: "querySalm.action",
                    type: "post",
                    data: {
                        userId: $("#salyg").val(),
                        time: $("#sal_time").val(),
                    },
                    dataType: "json",
                    success: function (item) {
                        if(item==null){
                            alert("未找到该月工资记录！");
                            return;
                        }
                        $("#qsaltb").find("tr:gt(0)").remove();
                        var tr = $("<tr>\n" +
                            "                    <td>" + item.month + "</td>\n" +
                            "                    <td>" + item.basicSal + "</td>\n" +
                            "                    <td>暂无</td>\n" +
                            "                    <td>" + item.rpCost + "</td>\n" +
                            "                    <td>" + item.socialCost + "</td>\n" +
                            "                    <td>" + item.bonus + "</td>\n" +
                            "                    <td>" + item.realSal + "</td>\n" +
                            "                </tr>");
                        $("#qsaltb").append(tr);
                    }
                })
            });
            $(".ok").click(function () {
                var a=$(this);
                var id=a.next().val();
                $.ajax({
                    url:"salFy.action",
                    type:"post",
                    data:{
                        uslId:id,
                        note:"管理员已受理，将会添加一条奖惩信息，于下月薪资中结算！",
                    },
                    dataType:"text",
                    success:function (data) {
                        if(data=="true"){
                            a.val("已受理");
                        }else{
                            alert("操作失败！")
                        }
                    }
                })
            });
            $(".no").click(function () {
                var a=$(this);
                var id=a.prev().val();
                $.ajax({
                    url:"salFy.action",
                    type:"post",
                    data:{
                        uslId:id,
                        note:"该复议被驳回！",
                    },
                    dataType:"text",
                    success:function (data) {
                        if(data=="true"){
                            a.val("已驳回");
                        }else{
                            alert("操作失败！")
                        }
                    }
                })
            })
        });
    </script>
</head>
<body>
<div class="top">
    <h1>主页</h1>
    <div id="welcome"><input type="hidden" value="${user.userId}" id="serId" name="userId">尊敬的管理员,欢迎来到召唤师峡谷!</div>
</div>
<div class="container">
    <div id="left">
        <div id="mulu">目录</div>
        <div id="company_msg" class="m">公司简介</div>
        <div id="dept_mang" class="m">管理部门</div>
        <div id="pst_mang" class="m">管理职位</div>
        <div id="emp_mang" class="m">管理员工</div>
        <div id="glpx_msg" class="m">管理培训</div>
        <div id="attd_mang" class="m">查看考勤 </div>
        <div id="recruit_msg" class="m">招聘信息</div>
        <div id="resume" class="m">收到的简历</div>
        <div id="money">奖惩</div>
        <div id="sal_mang">薪资</div>
        <div id="my_msg" class="m">消息</div>
        <div id="exit">退出</div>
    </div>
    <div id="right">
        <div id="gsjj" style="width: 1003px">
            <h3>${com.comName}</h3>
            <div>${com.comMsg}</div>
        </div>
        <div id="zpxx" style="width:100%">
            <h3>招聘</h3>
            <div style="margin-left: 150px">
                <form>
                    <input type="button" value="添加招聘信息" id="addzpbtn">
                    <div></div>
                    <table id="zptb" border="1" style="text-align: center">
                        <tr style="height: 30px">
                            <td style="width: 100px">部门</td>
                            <td style="width: 100px">职位</td>
                            <td style="width: 300px">岗位职责</td>
                            <td style="width: 300px">应聘要求</td>
                            <td style="width: 100px">薪资</td>
                            <td style="width: 200px">修改</td>
                            <td style="width: 100px">删除</td>
                        </tr>
                        <tr style="height: 30px" hidden="hidden" id="tjzp">
                            <td>
                               <select name="deptId" id="bmsel">
                                    <option value="0">---部门---</option>
                                   <c:forEach items="${com.depts}" var="dept">
                                       <option value="${dept.deptId}">${dept.deptName}</option>
                                   </c:forEach>
                               </select>
                            </td>
                            <td>
                                <select id="zwsel" name="pstId">
                                    <option value="pstId">---职位---</option>
                                </select>
                            </td>
                            <td><textarea name="functions" id="funcs"></textarea></td>
                            <td><textarea name="requests" id="reqs"></textarea></td>
                            <td><input type="text" name="salary" id="sal"></td>
                            <td><input type="button" value="保存" id="addzp"></td>
                            <td><input type="button" value="取消" id="qxbtn"></td>
                        </tr>
                        <c:forEach items="${infos}" var="info">
                            <tr style="height: 40px">
                                <td><span class="bf">${info.deptName}</span><span hidden="hidden" class="at"><select name="aaa">
                                    <option value="0">---部门---</option>
                                    <c:forEach items="${com.depts}" var="dept">
                                        <option value="${dept.deptId}">${dept.deptName}</option>
                                    </c:forEach>
                                </select></span></td>
                                <td><span class="bf">${info.pstName}</span>
                                    <span hidden="hidden" class="at"><select name="bbb">
                                        <option value="0">---职位---</option>
                                    </select></span>
                                </td>
                                <td><span class="bf">${info.functions}</span><span hidden="hidden" class="at"><textarea name="functions">${info.functions}</textarea></span></td>
                                <td><span class="bf">${info.requests}</span><span hidden="hidden" class="at"><textarea name="requests">${info.requests}</textarea></span></td>
                                <td><span class="bf">${info.salary}</span><span hidden="hidden" class="at"><input type="text" name="salary" value="${info.salary}"></span></td>
                                <td><input type="hidden" value="${info.pstId}"><input type="hidden" value="${info.deptId}"><input type="hidden" value="${info.infoId}" name="infoId"><input type="button" value="保存" name="bcxg" class="bcxg"><span hidden="hidden"><input type="button" value="取消修改" class="qxxgzp"></span></td>
                                <td><input type="hidden" value="${info.infoId}" name="infoId"><input type="button" value="删除" id="deltbtn" class="deleteInfobtn"></td>
                            </tr>
                        </c:forEach>
                    </table>
                </form>
            </div>
        </div>
        <div id="grjl" style="width: 1003px">
            <h2>收到的简历</h2>
            <form action="" method="post">
                <table border="1" id="lookRes" style="margin: auto;">
                    <tr>
                        <td>投递人</td>
                        <td>应聘岗位</td>
                        <td>学历</td>
                        <td>投递时间</td>
                        <td>查看</td>
                        <td>邀面试</td>
                    </tr>
                    <c:forEach items="${resumes}" var="res">
                        <tr>
                            <td>${res.name}</td>
                            <td>${res.wantPst}</td>
                            <td>${res.record}</td>
                            <td><fmt:formatDate value="${res.cTime}" pattern="yyyy-MM-dd hh:mm:ss"/> </td>
                            <td>
                                <c:if test="${res.looked==0}">
                                    <input type="hidden" value="${res.resId}">
                                    <button type="button"  data-toggle="modal" data-target="#showresume" name="showresume" class="showresume">
                                    详细信息
                                    </button>
                                </c:if>
                                <c:if test="${res.looked==1}">
                                    <input type="hidden" value="${res.resId}">
                                    <button type="button"  data-toggle="modal" data-target="#showresume" name="showresume" class="showresume">
                                        已查看
                                    </button>
                                </c:if>
                            </td>
                            <td>
                                <c:if test="${res.invited==0}">
                                    <input type="hidden" value="${res.resId}">
                                    <button type="button"  data-toggle="modal" data-target="#setTime" name="setTime" class="invitUser">
                                        邀请面试
                                    </button>
                                </c:if>
                                <c:if test="${res.invited==1}">
                                    <button type="button"  data-toggle="modal" data-target="#setTime" name="setTime" class="invitUser">
                                        已邀请
                                    </button>
                                </c:if>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
                <!-- Modal -->
                <div class="modal fade" id="setTime" tabindex="-1" role="dialog" aria-labelledby="setTimeLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="setTimeLabel">设置面试时间</h4>
                            </div>
                            <div class="modal-body">
                                <input type="date" id="intviewTime">
                            </div>
                            <div class="modal-footer">
                                <input type="hidden" value="" id="invitresId">
                                <button type="button" class="btn btn-default" data-dismiss="modal" id="invite">确定</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Modal -->
                <div class="modal fade" id="showresume" tabindex="-1" role="dialog" aria-labelledby="showresumeLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="showresumeLabel">员工信息</h4>
                            </div>
                            <div class="modal-body">
                                <table border="1" class="jlxq" id="jlxqtb">
                                    <tr>
                                        <td colspan="7" id="title"></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 50px">姓名</td>
                                        <td style="width: 200px" id="showUserName"></td>
                                        <td style="width: 50px">性别</td>
                                        <td style="width: 200px" id="showSex"></td>
                                        <td style="width: 50px">出生日期</td>
                                        <td style="width: 200px" id="showBirth"></td>
                                    </tr>
                                    <tr>
                                        <td>政治面貌</td>
                                        <td id="showStatus"></td>
                                        <td>学历</td>
                                        <td id="showRecord"></td>
                                        <td>毕业院校</td>
                                        <td id="showSchool"></td>

                                    </tr>
                                    <tr>
                                        <td>就读专业</td>
                                        <td id="showMajor"></td>
                                        <td>毕业时间</td>
                                        <td id="showGraduDate"></td>
                                        <td>联系方式</td>
                                        <td id="showPhone"></td>

                                    </tr>
                                    <tr>
                                        <td>邮箱</td>
                                        <td id="showEmail"></td>
                                        <td>应聘岗位</td>
                                        <td id="showWantPst" ></td>
                                        <td>期望薪资</td>
                                        <td id="showWantSal"></td>

                                    </tr>
                                    <tr>
                                        <td>籍贯</td>
                                        <td colspan="6" id="showNativePlace"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="7">工作经验</td>

                                    </tr>
                                    <tr>
                                        <td colspan="7" id="showWorkExp"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="7">个人技能</td>
                                    </tr>
                                    <tr>
                                        <td colspan="7" id="showAbility"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="7">兴趣爱好</td>
                                    </tr>
                                    <tr>
                                        <td colspan="7" id="showHobbies"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="7">自我评价</td>
                                    </tr>
                                    <tr>
                                        <td colspan="7" id="showSelfAsst"></td>
                                </table>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <div id="gulibumen" style="width: 1003px">
            <h2>管理部门</h2>
            <div>
                <input type="button" value="新增" id="adddept">
                <table border="1" style="margin: auto" id="depttb" class="tablet">
                    <tr>
                        <td style="width: 100px">部门名</td>
                        <td style="width: 300px">描述</td>
                        <td style="width: 100px">修改</td>
                        <td style="width: 100px">删除</td>
                    </tr>
                    <tr hidden="hidden" id="hidetr">
                        <td><input type="text" name="deptName"></td>
                        <td><textarea name="deptDesc" id="deptDesc"></textarea></td>
                        <td><input type="button" value="保存" id="savedept"></td>
                        <td><input type="button" value="取消" id="qxdept"></td>
                    </tr>
                    <c:forEach items="${com.depts}" var="dept">
                        <tr>
                            <td><span>${dept.deptName}</span><input hidden type="text" name="deptName" value="${dept.deptName}"></td>
                            <td><span>${dept.deptDesc}</span><textarea hidden name="deptDesc">${dept.deptDesc}</textarea></td>
                            <td><input type="hidden" value="${dept.deptId}"><input type="button" value="修改" class="updtdept"><input hidden type="button" value="取消" name="qx"></td>
                            <td><input type="hidden" value="${dept.deptId}"><input type="button" value="删除之" class="dltdept"></td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
        <div id="glzw">
            <h2>管理职位</h2>
            <div>
                选择部门:<select id="selDept" name="deptId">
                <c:forEach items="${com.depts}" var="dept">
                    <option value="${dept.deptId}">${dept.deptName}</option>
                </c:forEach>
            </select><input type="button" value="添加职位" id="addpst">
                <table   style="margin: auto">
                    <tr>
                        <td style="width: 100px">职位名</td>
                        <td style="width: 300px">职位描述</td>
                        <td style="width: 100px">修改</td>
                        <td style="width: 100px">删除</td>
                    </tr>
                </table>
                <table id="zwtb" border="1"  style="margin: auto">
                    <tr hidden id="zwtr">
                        <td>职位:<input type="text" value="职位名"></td>
                        <td>职位描述:<textarea>职位描述</textarea></td>
                        <td><input type="button" value="保存" id="savepst"></td>
                        <td><input type="button" value="取消" id="qxpst"></td>
                    </tr>
                    <c:forEach items="${com.depts}" var="dept">
                        <c:if test="${dept.deptId==1}">
                            <c:forEach items="${dept.positions}" var="pst">
                                <tr name="zwtrs">
                                    <td style="width: 100px"><span>${pst.pstName}</span><input hidden type="text" value="${pst.pstName}"></td>
                                    <td style="width: 300px"><span>${pst.pstDesc}</span><textarea hidden>${pst.pstDesc}</textarea></td>
                                    <td style="width: 100px"><input type="hidden" value="${pst.pstId}"><input type="button" value="修改" class="updtpst"><input hidden type="button" value="取消" name="qx"></td>
                                    <td style="width: 100px"><input type="hidden" value="${pst.pstId}"><input type="button" value="删除之" class="dltdpst"></td>
                                </tr>
                            </c:forEach>
                        </c:if>
                    </c:forEach>
                </table>
            </div>
        </div>
        <div id="glyg">
            <h2>管理员工</h2>
            <div>
                选择部门:<select id="empdept" name="deptId">
                <c:forEach items="${com.depts}" var="dept">
                <option value="${dept.deptId}">${dept.deptName}</option>
                </c:forEach>
            </select>
                    <table id="emptb" border="1" style="margin: auto">
                        <tr>
                            <td style="width: 100px">姓名</td>
                            <td style="width: 100px">状态</td>
                            <td style="width: 100px">职位</td>
                            <td style="width: 100px">电话号码</td>
                            <td style="width: 100px">邮箱</td>
                            <td style="width: 100px">详细信息</td>
                            <td style="width: 100px">离职</td>
                        </tr>
                        <c:forEach items="${com.depts}" var="dept">
                            <c:if test="${dept.deptId==1}">
                                <c:forEach items="${dept.users}" var="user">
                                    <tr class='removetr'>
                                        <td>${user.name}</td>
                                        <td>${user.status}</td>
                                        <td>${user.pstName}</td>
                                        <td>${user.phone}</td>
                                        <td>${user.email}</td>
                                        <td><input type="hidden" value="${user.userId}">
                                            <button type="button"  data-toggle="modal" data-target="#usermsg" name="showuser" class="showuser">
                                                详细信息
                                            </button>
                                        </td>
                                        <td><input type="hidden" value="${user.userId}">
                                            <button type="button"  data-toggle="modal" data-target="#lzModal" class="txlz">
                                                办理离职
                                            </button>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </c:if>
                        </c:forEach>
                    </table>
                <!-- Button trigger modal -->
                <button type="button"  data-toggle="modal" data-target="#myModal">
                    添加员工
                </button>
                <!-- Modal -->
                <div class="modal fade" id="lzModal" tabindex="-1" role="dialog" aria-labelledby="lzModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="lzModalLabel">离职原因</h4>
                            </div>
                            <div class="modal-body">
                                <input type="hidden" value="" id="lzid"/>
                                <textarea id="note">离职原因：</textarea>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                <button type="button" class="btn btn-primary" data-dismiss="modal" id="delemp">保存</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Modal -->
                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel">员工信息</h4>
                            </div>
                            <div class="modal-body">
                                <table>
                                    <tr>
                                        <td>姓名:</td><td><input type="text" value="" id="addempname"></td>
                                        <td>性别:</td><td><input type="text" value="" id="addempsex"></td>

                                    </tr>
                                    <tr><td>状态：</td>
                                        <td colspan=>
                                            <select id="addStatus">
                                                <option value="实习">实习</option>
                                                <option value="在职">在职</option>
                                                <option value="离职">离职</option>
                                             </select>
                                        </td>
                                        <td>薪资：</td>
                                        <td><input type="number" value="0" id="addSalary"/></td>
                                    </tr>
                                    <tr>
                                        <td>年龄:</td><td><input type="text" value="" id="addempage"></td>
                                        <td>学历:</td><td><input type="text" value="" id="addemprec"></td>
                                    </tr>
                                    <tr>
                                        <td>部门:</td>
                                        <td>
                                            <select name="aaa" id="addempdept">
                                            <option value="0">-------选择部门-------</option>
                                            <c:forEach items="${com.depts}" var="dept">
                                                <option value="${dept.deptId}">${dept.deptName}</option>
                                            </c:forEach>
                                            </select>
                                        </td>
                                        <td>职位:</td>
                                        <td>
                                            <select name="bbb" id="addemppst">
                                                <option value="0">-------选择职位-------</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>毕业院校:</td><td><input type="text" value="" id="addempsc"></td>
                                        <td>所学专业:</td><td><input type="text" value="" id="addempmj"></td>
                                    </tr>
                                    <tr>
                                        <td>毕业时间:</td><td><input type="date" value="2018-01-01" id="addempby"></td>
                                        <td>入职时间:</td><td><input type="date" value="2018-01-01" id="addemprz"></td>
                                    </tr>
                                    <tr>
                                        <td>手机号码:</td><td><input type="text" value="" id="addempph"></td>
                                        <td>电子邮箱:</td><td><input type="text" value="" id="addempem"></td>
                                    </tr>
                                </table>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                <button type="button" class="btn btn-primary" data-dismiss="modal" id="addemp">保存</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Modal -->
                <div class="modal fade" id="usermsg" tabindex="-1" role="dialog" aria-labelledby="updateLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="updateLabel">员工信息</h4>
                            </div>
                            <div class="modal-body">
                                <table>
                                    <tr>
                                        <td>姓名:</td><td><input type="text" value="" id="upmpname"></td>
                                        <td>性别:</td><td><input type="text" value="" id="upempsex"></td>

                                    </tr>
                                    <tr><td>状态：</td>
                                        <td>
                                            <select id="upStatus">
                                                <option value="实习">实习</option>
                                                <option value="在职">在职</option>
                                                <option value="离职">离职</option>
                                            </select>
                                        </td>
                                        <td>薪资：</td>
                                        <td><input type="number" value="0" id="upSalary"/></td>
                                    </tr>
                                    <tr>
                                        <td>年龄:</td><td><input type="text" value="" id="upempage"></td>
                                        <td>学历:</td><td><input type="text" value="" id="upemprec"></td>
                                    </tr>
                                    <tr>
                                        <td>部门:</td>
                                        <td>
                                            <select name="aaa" id="upempdept">
                                                <option value="" id="stardept"></option>
                                                <c:forEach items="${com.depts}" var="dept">
                                                    <option value="${dept.deptId}">${dept.deptName}</option>
                                                </c:forEach>
                                            </select>
                                        </td>
                                        <td>职位:</td>
                                        <td>
                                            <select name="bbb" id="upemppst">
                                                <option value="" id="starpst"></option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>毕业院校:</td><td><input type="text" value="" id="upempsc"></td>
                                        <td>所学专业:</td><td><input type="text" value="" id="upempmj"></td>
                                    </tr>
                                    <tr>
                                        <td>毕业时间:</td><td><span></span><input type="date" value="2018-01-01" id="upempby" width="50px"></td>
                                        <td>入职时间:</td><td><span></span><input type="date" value="2018-01-01" id="upemprz" width="50px"></td>
                                    </tr>
                                    <tr>
                                        <td>手机号码:</td><td><input type="text" value="" id="upempph"></td>
                                        <td>电子邮箱:</td><td><input type="text" value="" id="upempem"></td>
                                    </tr>
                                    <tr>
                                        <td>描述：</td>
                                        <td colspan="3"><textarea id="upNote"></textarea></td>
                                    </tr>
                                </table>
                            </div>
                            <div class="modal-footer">
                                <input type="hidden" value="" id="uid">
                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                <button type="button" class="btn btn-primary" id="upemp" data-dismiss="modal">保存修改</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="glpx" style="width: 1003px">
            <h2>管理培训</h2>
            <table id="traintb" border="1" style="margin: auto">
                <tr>
                    <td style="width: 100px">培训项目</td>
                    <td style="width: 100px">培训详情</td>
                    <td style="width: 100px">删除</td>
                </tr>
                <c:forEach items="${trList}" var="train">
                    <tr class="removeTrain">
                        <td style="width: 100px">${train.trName}</td>
                        <td style="width: 100px"><input type="hidden" value="${train.trId}">
                            <button type="button"  data-toggle="modal" data-target="#showTrainModal" class="showTrain">
                                查看详情
                            </button>
                        </td>
                        <td style="width: 100px"><input type="hidden" value="${train.trId}">
                           <input type="button" value="删除" class="deletTrain">
                        </td>
                    </tr>
                </c:forEach>
            </table>
            <!-- Button trigger modal -->
            <button type="button"  data-toggle="modal" data-target="#addTrainModal">
                添加培训
            </button>
            <div style="margin: auto">
                <table id="addTrainUser" border="1" style="float: left">
                    <tr>
                        <td colspan="2">选择员工进行培训</td>
                    </tr>
                    <tr>
                        <td>培训项目:</td>
                        <td>
                            <select id="addTrain_Train">
                                <c:forEach items="${trList}" var="train">
                                    <option value="${train.trId}">${train.trName}</option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>部门:</td>
                        <td>
                            <select class="ccc">
                                <option value="0">--部门--</option>
                                <c:forEach items="${com.depts}" var="dept">
                                    <option value="${dept.deptId}">${dept.deptName}</option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>职位：</td>
                        <td>
                           <select class="ddd">
                               <option value="0">--职位--</option>
                           </select>
                        </td>

                    </tr>
                    <tr>
                        <td>员工:</td>
                        <td>
                            <select class="eee" id="addTrain_User">
                                 <option value="0">---员工---</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="button" value="确认" id="addTrainLi"></td>
                    </tr>
                </table>
                <table id="deletTrainUser" border="1" style="float: right">
                    <tr>
                        <td colspan="2">取消员工培训</td>
                    </tr>
                    <tr>
                        <td>培训项目:</td>
                        <td>
                            <select id="deletTrain_Train">
                                <option value="0">---选择培训---</option>
                                <c:forEach items="${trList}" var="train">
                                    <option value="${train.trId}">${train.trName}</option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>员工:</td>
                        <td>
                            <select id="deletTrain_User">
                                <option value="0">---选择员工---</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="button" value="确认" id="deletTrainLi"></td>
                    </tr>
                </table>
            </div>

            <!-- Modal -->
            <div class="modal fade" id="addTrainModal" tabindex="-1" role="dialog" aria-labelledby="addTrainLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="addTrainLabel">员工信息</h4>
                        </div>
                        <div class="modal-body">
                            <table style="margin: auto">
                                <tr>
                                    <td colspan="2" ><input type="text" id="trName" placeholder="培训项目名"></td>
                                </tr>
                                <tr>
                                    <td colspan="2"><textarea id="trContent" placeholder="培训内容"></textarea></td>
                                </tr>
                                <tr>
                                    <td>开始时间:<input type="date" value="2018-01-01" id="starTime"></td>
                                    <td>结束时间:<input type="date" value="2018-01-01" id="endTime"></td>
                                </tr>
                            </table>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                            <button type="button" class="btn btn-primary" id="addTrain" data-dismiss="modal">保存</button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Modal -->
            <div class="modal fade" id="showTrainModal" tabindex="-1" role="dialog" aria-labelledby="showTrainLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="showTrainLabel">培训详情</h4>
                        </div>
                        <div class="modal-body">
                            <table style="margin: auto" id="showTraintable">
                                <tr>
                                    <td colspan="4" ><input type="text" id="uptrName" placeholder="培训项目名"></td>
                                </tr>
                                <tr>
                                    <td colspan="4"><textarea id="uptrContent" placeholder="培训内容"></textarea></td>
                                </tr>
                                <tr>
                                    <td colspan="2">开始时间:<input type="date" value="2018-01-01" id="upstarTime"></td>
                                    <td colspan="2">结束时间:<input type="date" value="2018-01-01" id="upendTime"></td>
                                </tr>
                            </table>
                            <input type="hidden" value="" id="trId">
                            <button type="button" class="btn btn-lg btn-danger" data-toggle="popover" title="暂无员工参加该培训" data-content="" id="showUser">
                                查看参加培训的员工
                            </button>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                            <button type="button" class="btn btn-primary" id="updateTrain" data-dismiss="modal">保存</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="moneydiv" style="width: 1003px">
            <h2>奖惩</h2>
            <table id="reputb" style="margin: auto;" border="1">
                <tr>
                    <td>员工编号</td>
                    <td>奖惩类别</td>
                    <td>奖惩原因</td>
                    <td>奖惩时间</td>
                    <td>奖惩金额</td>
                    <td>操作</td>
                </tr>
                <c:forEach items="${rps}" var="rp">
                    <tr>
                        <td>${rp.userId}</td>
                        <td><span>${rp.rewardPuni}</span><input hidden type="text" value="${rp.rewardPuni}" class="rewardpuni"></td>
                        <td><span>${rp.reson}</span><textarea hidden class="reson">${rp.reson}</textarea></td>
                        <td><span>${rp.stime}</span><input hidden type="date" value="${rp.stime}" class="time"></td>
                        <td><span>${rp.money}</span><input hidden type="number" value="${rp.money}" class="money"></td>
                        <td><input type="button" value="修改" class="xgrp"><input type="hidden" value="${rp.repuId}"><input type="button" value="删除" class="scrp"></td>
                    </tr>
                </c:forEach>
            </table>
            <input hidden type="button" value="取消修改" id="qxxgrp">
            <button type="button"  data-toggle="modal" data-target="#adRPModal">
                添加奖惩
            </button>
            <!-- Modal -->
            <div class="modal fade" id="adRPModal" tabindex="-1" role="dialog" aria-labelledby="adRPLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="adRPLabel">员工信息</h4>
                        </div>
                        <div class="modal-body">
                            <table style="margin: auto">
                                <tr>
                                    <td colspan="4">
                                        <select class="ccc">
                                            <option value="0">--部门--</option>
                                        <c:forEach items="${com.depts}" var="dept">
                                            <option value="${dept.deptId}">${dept.deptName}</option>
                                        </c:forEach>
                                        </select>
                                        <select class="ddd">
                                            <option value="0">--职位--</option>
                                        </select>
                                        <select class="eee" id="jcyg">
                                            <option value="0">--员工--</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>奖惩类型:</td>
                                    <td>
                                        <input type="radio" name="rwOrPu"  value="奖"> 奖
                                        <input type="radio" name="rwOrPu"  value="惩"> 惩
                                    </td>
                                    <td>奖惩原因</td>
                                    <td><textarea id="reson"></textarea></td>

                                </tr>
                                <tr>
                                    <td>奖惩时间:</td>
                                    <td><input type="date" value="2018-09-09" id="time"></td>
                                    <td>奖惩金额:</td>
                                    <td><input type="number" value="0" id="jcmoney"></td>
                                </tr>
                            </table>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                            <button type="button" class="btn btn-primary" id="addRP" data-dismiss="modal">保存</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="saldiv" style="width: 1003px">
            <h2>薪资结算</h2>
            选择员工：
            <select class="ccc">
                <option value="0">--部门--</option>
                <c:forEach items="${com.depts}" var="dept">
                    <option value="${dept.deptId}">${dept.deptName}</option>
                </c:forEach>
            </select>
            <select class="ddd">
                <option value="0">--职位--</option>
            </select>
            <select class="eee" id="salyg">
                <option value="0">--员工--</option>
            </select>
            结算起止日期：
            <input type="date"  id="jsdate1">至<input type="date"  id="jsdate2">
            <input type="button" value="结算" id="jssal"/>
            <table id="saltb" style="margin: auto" border="1">
                <tr>
                    <td width="200px">员工编号</td>
                    <td width="200px">基本薪资</td>
                    <td width="200px">加班工资</td>
                    <td width="200px">奖惩金额</td>
                    <td width="200px">社保</td>
                    <td width="200px">绩效</td>
                    <td width="200px">实发</td>
                </tr>
                <tr>
                    <td>-------</td>
                    <td>-------</td>
                    <td>-------</td>
                    <td>-------</td>
                    <td>-------</td>
                    <td>-------</td>
                    <td>-------</td>
                </tr>
            </table>
            查询：<input type="date" value="2018-09-28" id="sal_time"><input type="button" value="查询该年" id="sal_year"/><input type="button" value="查询该月" id="sal_month"/>
            <table id="qsaltb" style="margin: auto" border="1">
                <tr>
                    <td width="200px">月份</td>
                    <td width="200px">基本薪资</td>
                    <td width="200px">加班工资</td>
                    <td width="200px">奖惩金额</td>
                    <td width="200px">社保</td>
                    <td width="200px">绩效</td>
                    <td width="200px">实发</td>
                </tr>
                <tr>
                    <td>-------</td>
                    <td>-------</td>
                    <td>-------</td>
                    <td>-------</td>
                    <td>-------</td>
                    <td>-------</td>
                    <td>-------</td>
                </tr>
            </table>
        </div>
        <div id="queryattd" style="width: 1003px">
            <h2>员工考勤</h2>
            <select class="ccc">
                <option value="0">--部门--</option>
                <c:forEach items="${com.depts}" var="dept">
                    <option value="${dept.deptId}">${dept.deptName}</option>
                </c:forEach>
            </select>
            <select class="ddd">
                <option value="0">--职位--</option>
            </select>
            <select class="eee" id="attyg">
                <option value="0">--员工--</option>
            </select>
            选择日期:<input type="date" id="queryAttd_date">
            <input type="button" value="查看该月" id="queryAttd_month">
            <input type="button" value="查看该日" id="queryAttd_day">
            <table id="attdtb" style="margin: auto;" border="1">
                <tr>
                    <td>上班时间</td>
                    <td>下班时间</td>
                    <td>迟到</td>
                    <td>早退</td>
                    <td>旷工</td>
                </tr>
            </table>
        </div>
        <div id="xx" style="width: 1003px">
            <h2>薪资复议</h2>
            <table id="salfytb" style="margin: auto" border="1">
                <td width="100px">员工编号</td>
                <td width="100px">基本薪资</td>
                <td width="100px">加班工资</td>
                <td width="100px">奖惩金额</td>
                <td width="100px">社保</td>
                <td width="100px">绩效</td>
                <td width="100px">实发</td>
                <td width="100px">复议</td>
                <td width="200px">操作</td>
            <c:forEach items="${usls}" var="usl">
                <c:if test="${not empty usl.note}">
                    <tr>
                        <td >${usl.userId}</td>
                        <td >${usl.basicSal}</td>
                        <td >${usl.overPay}</td>
                        <td >${usl.rpCost}</td>
                        <td >${usl.socialCost}</td>
                        <td >${usl.bonus}</td>
                        <td >${usl.realSal}</td>
                        <td >${usl.note}</td>
                        <td ><input type="button" value="受理" class="ok" /><input type="hidden" value="${usl.uslId}"><input type="button" value="驳回" class="no" /></td>
                    </tr>
                </c:if>
            </c:forEach>
            </table>
        </div>
    </div>
</div>
</body>
</html>
