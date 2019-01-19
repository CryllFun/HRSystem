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
    <title>人力资源系统-员工主页</title>
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="/css/bootstrap-theme.css">
    <style>
        body {
            margin: 0px;
        }

        .container {
            overflow: auto;
            width: 100%;
            height: 100%;

        }

        .container > div {
            float: left;
        }

        #left {
            background: sandybrown;
            width: 15%;
            height: 100%;
            text-align: center;
        }

        #right {
            background: aqua;
            width: 85%;
            height: 100%;
            text-align: center;
        }

        #left > div {
            margin-bottom: 10px;
            font-size: 1.5em;
            font-weight: bold;
        }

        #mulu {
            background: lawngreen;
            margin-top: 0px;
            color: darkgrey;
        }

        .top {
            width: 100%;
            margin: 0px;
            background-image: url("/imgs/userpagetop.gif");
            background-repeat: no-repeat;
            background-size: cover;
            height: 120px;
        }

        h1 {
            width: 100%;
            text-align: center;
            color: darkgrey;
        }

        #welcome {
            margin-left: 100px;
        }

        table {
            text-align: center;
        }

        textarea {
            width: 100%;
            height: 100px;
        }

        #right > div {
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

            $("#company_msg").click(function () {
                $("#gsjj").show();
                $("#xx").hide();
                $("#zpxx").hide();
                $("#grjl").hide();
                $("#gulibumen").hide();
                $("#glyg").hide();
                $("#glzw").hide();
                $("#glpx").hide();

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

            });
            $("#dept_mang").click(function () {
                $("#gsjj").hide();
                $("#xx").hide();
                $("#zpxx").hide();
                $("#grjl").hide();
                $("#gulibumen").show();
                $("#glyg").hide();
                $("#glzw").hide();
                $("#glpx").hide();
                $("#traintb").find("tr").find("td:gt(3)").remove();
            });
            $("#pst_mang").click(function () {
                $("#gsjj").hide();
                $("#xx").hide();
                $("#zpxx").hide();
                $("#grjl").hide();
                $("#gulibumen").hide();
                $("#glyg").hide();
                $("#glzw").show();
                $("#glpx").hide();

            });
            $("#emp_mang").click(function () {
                $("#gsjj").hide();
                $("#xx").hide();
                $("#zpxx").hide();
                $("#grjl").hide();
                $("#gulibumen").hide();
                $("#glyg").show();
                $("#glzw").hide();
                $("#glpx").hide();
            });
            $("#glpx_msg").click(function () {
                $("#gsjj").hide();
                $("#xx").hide();
                $("#zpxx").hide();
                $("#grjl").hide();
                $("#gulibumen").hide();
                $("#glyg").hide();
                $("#glzw").hide();
                $("#glpx").show();
            });

            //二级联动
            $("select[name='aaa']").change(function () {
                var x = $(this);
                x.parent().parent().parent().find("select[name='bbb'] option:gt(0)").remove();
                var id = $(this).val();
                $.ajax({
                    url: "queryPst.action",
                    type: "post",
                    data: {
                        deptId: id,
                    },
                    dataType: "json",
                    success: function (data) {
                        $.each(data, function (idx, item) {
                            var opt = $("<option value='" + item.pstId + "'>" + item.pstName + "</option>")
                            x.parent().parent().parent().find("select[name='bbb']").append(opt);
                        });
                    }
                });
            })

            //招聘信息td点击事件
            $("#zptb").on("click", "td", function () {
                $(this).children("span:eq(0)").hide();
                $(this).children("span:eq(1)").show();
                $(this).parent().children("td:eq(5)").children("span").show();
                $(this).parent().find(".qxxgzp").show();
            });

            //取消修改招聘
            $("#zptb").on("click", ".qxxgzp", function () {
                $(this).hide();
                $(this).parent().hide();
                $(this).parent().parent().parent().find("span[class='bf']").show();
                $(this).parent().parent().parent().find("span[class='at']").hide();
            });
            //部门表td点击事件
            $("#depttb").on("click", "td", function () {
                $(this).children("span").hide();
                $(this).children("input").show();
                $(this).children("textarea").show();
                $(this).parent().find("input[name='qx']").show();
            });
            $("#zwtb").on("click", "td", function () {
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
            $("#depttb").on("click", ".updtdept", function () {
                var a = $(this);
                var name = a.parent().prev().prev().find("input");
                var desc = a.parent().parent().find("textarea");
                var id = a.prev().val();
                alert(id + "," + name.val() + "," + desc.val());
                if (!confirm("确认修改?")) {
                    return;
                }
                $.ajax({
                    url: "updtDept.action",
                    type: "post",
                    data: {
                        deptId: id,
                        deptName: name.val(),
                        deptDesc: desc.val(),
                    },
                    dataType: "text",
                    success: function (data) {
                        if (data == "true") {
                            a.next().hide();
                            a.parent().parent().find("span").show();
                            a.parent().prev().prev().find("input").hide();
                            a.parent().parent().find("textarea").hide();
                            name.prev().text(name.val());
                            desc.prev().text(desc.val());
                            alert("修改成功!");
                        } else {
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
                    url: "addDept.action",
                    type: "post",
                    data: {
                        deptName: $("#hidetr").find("input[name='deptName']").val(),
                        deptDesc: $("#deptDesc").val(),
                    },
                    dataType: "json",
                    success: function (data) {
                        if (data != null) {
                            var tr = $("<tr>" +
                                "                            <td><span>" + data.deptName + "</span><input hidden type='text' name='deptName' value='" + dept.deptName + "'></td>" +
                                "                            <td><span>" + data.deptDesc + "</span><textarea hidden name='deptDesc'>" + data.deptDesc + "</textarea></td>" +
                                "                            <td><input type=\"hidden\" value='" + data.deptId + "'><input type=\"button\" value=\"修改\" class=\"updtdept\"><input hidden type=\"button\" value=\"取消\" name=\"qx\"></td>" +
                                "                            <td><input type=\"hidden\" value='" + data.deptId + "'><input type=\"button\" value=\"删除之\" class=\"dltdept\"></td>" +
                                "                        </tr>");
                            $("#depttb").append(tr);
                            alert("添加成功!")
                        } else {
                            alert("添加失败!")
                        }

                    }
                })
                $("#hidetr").hide();
            });
            //删除部门
            $("#depttb").on("click", ".dltdept", function () {
                if (!confirm("确认删除?")) {
                    return;
                }
                var a = $(this);
                var id = a.prev().val();
                $.ajax({
                    url: "deleteDept.action",
                    type: "post",
                    data: {
                        deptId: id,
                    },
                    dataType: "text",
                    success: function (data) {
                        if (data == "true") {
                            a.parent().parent().remove();
                            alert("删除成功!")
                        } else {
                            alert("该部门关联了相关职位,删除失败")
                        }
                    }
                })
            });
            //展示职位
            $("#selDept").change(function () {
                $("#zwtb").find("tr:gt(0)").remove();
                var id = $(this).val();
                $.ajax({
                    url: "queryPst.action",
                    type: "post",
                    data: {
                        deptId: id,
                    },
                    dataType: "json",
                    success: function (data) {
                        $.each(data, function (idx, item) {
                            var opt = $("<tr name='zwtrs'>\n" +
                                "                        <td style=\"width: 100px\"><span>" + item.pstName + "</span><input hidden type=\"text\" value='" + item.pstName + "'></td>\n" +
                                "                        <td style=\"width: 300px\"><span>" + item.pstDesc + "</span><textarea hidden>" + item.pstDesc + "</textarea></td>\n" +
                                "                        <td style=\"width: 100px\"><input type=\"hidden\" value='" + item.pstId + "'><input type=\"button\" value=\"修改\" class=\"updtpst\"><input hidden type=\"button\" value=\"取消\" name=\"qx\"></td>\n" +
                                "                        <td style=\"width: 100px\"><input type=\"hidden\" value='" + item.pstId + "'><input type=\"button\" value=\"删除之\" class=\"dltdpst\"></td>\n" +
                                "                    </tr>");
                            $("#zwtb").append(opt);
                        });
                    }
                });
            });
            //修改职位
            $("#zwtb").on("click", ".updtpst", function () {
                var a = $(this);
                var name = a.parent().prev().prev().find("input");
                var desc = a.parent().parent().find("textarea");
                var id = a.prev().val();
                alert(id + "," + name.val() + "," + desc.val());
                if (!confirm("确认修改?")) {
                    return;
                }
                $.ajax({
                    url: "updtPst.action",
                    type: "post",
                    data: {
                        deptId: $("#selDept option:selected").val(),
                        pstId: id,
                        pstName: name.val(),
                        pstDesc: desc.val(),
                    },
                    dataType: "text",
                    success: function (data) {
                        if (data == "true") {
                            a.next().hide();
                            a.parent().parent().find("span").show();
                            a.parent().prev().prev().find("input").hide();
                            a.parent().parent().find("textarea").hide();
                            name.prev().text(name.val());
                            desc.prev().text(desc.val());
                            alert("修改成功!");
                        } else {
                            alert("修改失败!")
                        }
                    }
                })
            });
            //删除职位
            $("#zwtb").on("click", ".dltdpst", function () {
                if (!confirm("确认删除?")) {
                    return;
                }
                var a = $(this);
                var id = a.prev().val();
                $.ajax({
                    url: "deletePst.action",
                    type: "post",
                    data: {
                        pstId: id,
                    },
                    dataType: "text",
                    success: function (data) {
                        if (data == "true") {
                            a.parent().parent().remove();
                            alert("删除成功!")
                        } else {
                            alert("该职位关联了相关员工或招聘信息,删除失败")
                        }
                    }
                })
            });
            //添加职位
            $("#savepst").click(function () {
                if (!confirm("确认添加!")) {
                    return;
                }
                $.ajax({
                    url: "addPst.action",
                    type: "post",
                    data: {
                        deptId: $("#selDept option:selected").val(),
                        pstName: $("#zwtr").find("input[type='text']").val(),
                        pstDesc: $("#zwtr").find("textarea").val(),
                    },
                    dataType: "json",
                    success: function (data) {
                        if (data != null) {
                            var opt = $("<tr name='zwtrs'>\n" +
                                "                        <td style=\"width: 100px\"><span>" + data.pstName + "</span><input hidden type=\"text\" value='" + data.pstName + "'></td>\n" +
                                "                        <td style=\"width: 300px\"><span>" + data.pstDesc + "</span><textarea hidden>" + data.pstDesc + "</textarea></td>\n" +
                                "                        <td style=\"width: 100px\"><input type=\"hidden\" value='" + data.pstId + "'><input type=\"button\" value=\"修改\" class=\"updtpst\"><input hidden type=\"button\" value=\"取消\" name=\"qx\"></td>\n" +
                                "                        <td style=\"width: 100px\"><input type=\"hidden\" value='" + data.pstId + "'><input type=\"button\" value=\"删除之\" class=\"dltdpst\"></td>\n" +
                                "                    </tr>");
                            $("#zwtb").append(opt);
                            alert("添加成功!")
                        } else {
                            alert("添加失败!")
                        }
                    }
                })
                $("#zwtr").hide();
            });
            //添加员工
            $("#addemp").click(function () {
                var name = $("#addempname").val();
                var sex = $("#addempsex").val();
                var age = $("#addempage").val();
                var recd = $("#addemprec").val();
                var deptId = $("#addempdept option:selected").val();
                var pstId = $("#addemppst option:selected").val();
                var school = $("#addempsc").val();
                var major = $("#addempmj").val();
                var eduDate = $("#addempby").val();
                var inTime = $("#addemprz").val();
                var phone = $("#addempph").val();
                var email = $("#addempem").val();
                if (name == "" || name == null) {
                    alert("请输入姓名");
                    return;
                }
                if (deptId == "" || deptId == 0) {
                    alert("请选择部门");
                    return;
                }
                if (pstId == "" || pstId == 0) {
                    alert("请选择职位");
                    return;
                }
                if (eduDate == "") {
                    eduDate = "2018-00-00";
                }
                if (inTime == "") {
                    inTime = "2018-00-00";
                }
                $.ajax({
                    url: "addUser.action",
                    type: "post",
                    data: {
                        name: name,
                        sex: sex,
                        age: age,
                        record: recd,
                        deptId: deptId,
                        pstId: pstId,
                        school: school,
                        major: major,
                        edutTime: eduDate,
                        inTime: inTime,
                        phone: phone,
                        email: email
                    },
                    dataType: "json",
                    success: function (data) {
                        if (data != null) {
                            $(".removetr").remove();
                            $.each(data, function (index, item) {
                                var tr = $("<tr class='removetr'>\n" +
                                    "                                        <td>" + item.name + "</td>\n" +
                                    "                                        <td>" + item.pstName + "</td>\n" +
                                    "                                        <td>" + item.phone + "</td>\n" +
                                    "                                        <td>" + item.email + "</td>\n" +
                                    "                                        <td><input type=\"hidden\" value='" + item.userId + "'>\n" +
                                    "                                            <button type=\"button\"  data-toggle=\"modal\" data-target=\"#usermsg\" name=\"showuser\" class='showuser'>\n" +
                                    "                                                详细信息\n" +
                                    "                                            </button>\n" +
                                    "                                        </td>\n" +
                                    "                                        <td><input type=\"hidden\" value='" + item.userId + "'><input type=\"button\" value=\"删除\" class=\"delemp\"></td>\n" +
                                    "                                    </tr>");
                                $("#emptb").append(tr);
                            });
                            alert("添加成功!");
                        } else {
                            alert("添加失败!");
                        }
                    }
                })
            });
            //查看员工
            $("#emptb").on("click", ".showuser", function () {
                var id = $(this).prev().val();
                alert(id);
                $.ajax({
                    url: "showUser.action",
                    type: "post",
                    data: {
                        userId: id,

                    },
                    success: function (data) {
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
                    }
                });
            });
            //删除员工
            $("#emptb").on("click", ".delemp", function () {
                if (!confirm("确认删除?")) {
                    return;
                }
                var id = $(this).prev().val();
                alert(1);
                $.ajax({
                    url: "deleteUser.action",
                    type: "post",
                    data: {
                        userId: id,
                    },
                    success: function (data) {
                        if (data == "true") {
                            $(this).parent().parent().remove();
                            alert("删除成功!")
                        } else {
                            alert("删除失败!")
                        }
                    }
                })
            });

            //修改用户
            $("#upemp").click(function () {
                var id = $("#uid").val();
                var name = $("#upmpname").val();
                var sex = $("#upempsex").val();
                var age = $("#upempage").val();
                var recd = $("#upemprec").val();
                var deptId = $("#upempdept option:selected").val();
                var pstId = $("#upemppst option:selected").val();
                var school = $("#upempsc").val();
                var major = $("#upempmj").val();
                var eduDate = $("#upempby").val();
                var inTime = $("#upemprz").val();
                var phone = $("#upempph").val();
                var email = $("#upempem").val();
                if (eduDate == "" || eduDate == null) {
                    eduDate = "2018-00-00";
                }
                if (inTime == "" || inTime == null) {
                    inTime = "2018-00-00";
                }

                $.ajax({
                    url: "updateUser.action",
                    type: "post",
                    data: {
                        userId: id,
                        name: name,
                        sex: sex,
                        age: age,
                        record: recd,
                        deptId: deptId,
                        pstId: pstId,
                        school: school,
                        major: major,
                        edutTime: eduDate,
                        inTime: inTime,
                        phone: phone,
                        email: email,
                    },
                    dataType: "json",
                    success: function (data) {
                        if (data != null) {
                            alert("修改成功!")
                            $(".removetr").remove();
                            $.each(data, function (index, item) {
                                var tr = $("<tr class='removetr'>\n" +
                                    "                                        <td>" + item.name + "</td>\n" +
                                    "                                        <td>" + item.pstName + "</td>\n" +
                                    "                                        <td>" + item.phone + "</td>\n" +
                                    "                                        <td>" + item.email + "</td>\n" +
                                    "                                        <td><input type=\"hidden\" value='" + item.userId + "'>\n" +
                                    "                                            <button type=\"button\"  data-toggle=\"modal\" data-target=\"#usermsg\" name=\"showuser\" class='showuser'>\n" +
                                    "                                                详细信息\n" +
                                    "                                            </button>\n" +
                                    "                                        </td>\n" +
                                    "                                        <td><input type=\"hidden\" value='" + item.userId + "'><input type=\"button\" value=\"删除\" class=\"delemp\"></td>\n" +
                                    "                                    </tr>");
                                $("#emptb").append(tr);
                            });
                        } else {
                            alert("修改失败!")
                        }
                    }
                })
            });
            //查看对应部门下的员工
            $("#empdept").change(function () {
                $(".removetr").remove();
                var deptId = $(this).val();
                alert(deptId)
                $.ajax({
                    url: "showAllUser.action",
                    type: "post",
                    data: {
                        deptId: deptId,
                    },
                    success: function (data) {
                        if (data != null) {
                            $(".removetr").remove();
                            $.each(data, function (index, item) {
                                var tr = $("<tr class='removetr'>\n" +
                                    "                                        <td>" + item.name + "</td>\n" +
                                    "                                        <td>" + item.pstName + "</td>\n" +
                                    "                                        <td>" + item.phone + "</td>\n" +
                                    "                                        <td>" + item.email + "</td>\n" +
                                    "                                        <td><input type=\"hidden\" value='" + item.userId + "'>\n" +
                                    "                                            <button type=\"button\"  data-toggle=\"modal\" data-target=\"#usermsg\" name=\"showuser\" class='showuser'>\n" +
                                    "                                                详细信息\n" +
                                    "                                            </button>\n" +
                                    "                                        </td>\n" +
                                    "                                        <td><input type=\"hidden\" value='" + item.userId + "'><input type=\"button\" value=\"删除\" class=\"delemp\"></td>\n" +
                                    "                                    </tr>");
                                $("#emptb").append(tr);
                            })
                        }
                    }
                })
            });
            //查看培训项目信息
            $("#traintb").on("click", ".showTrain", function () {
                var id = $(this).prev().val();
                alert(id);
                $.ajax({
                    url: "showTrain.action",
                    type: "post",
                    data: {
                        trId: id,
                    },
                    success: function (data) {
                        alert(data.trName);
                        $("#trId").val(id);
                        $("#uptrName").val(data.trName);
                        $("#uptrContent").val(data.trContent);
                        $("#upstarTime").val(data.sstarTime);
                        $("#upendTime").val(data.sendTime);
                        var tr = "";
                        $.each(data.userList, function (index, item) {
                            tr = tr + item.name;
                        });

                        if (tr != "") {
                            $("#showUser").val(tr);
                        }
                    }
                });
            });
            //修改培训信息
            $("#updateTrain").click(function () {

                $.ajax({
                    url: "updateTrain.action",
                    type: "post",
                    data: {
                        trId: $("#trId").val(),
                        trName: $("#uptrName").val(),
                        trContent: $("#uptrContent").val(),
                        starTime: $("#upstarTime").val(),
                        endTime: $("#upendTime").val(),
                    },
                    dataType: "json",
                    success: function (data) {
                        $(".removeTrain").remove();
                        if (data != null) {
                            $.each(data, function (index, item) {
                                var tr = $("<tr class=\"removeTrain\">\n" +
                                    "                        <td style=\"width: 100px\">" + item.trName + "</td>\n" +
                                    "                        <td style=\"width: 100px\"><input type=\"hidden\" value='" + item.trId + "'>\n" +
                                    "                            <button type=\"button\"  data-toggle=\"modal\" data-target=\"#showTrainModal\" class='showTrain'>\n" +
                                    "                                查看详情\n" +
                                    "                            </button>\n" +
                                    "                        </td>\n" +
                                    "                        <td style=\"width: 100px\"><input type=\"hidden\" value='" + item.trId + "'>\n" +
                                    "                           <input type=\"button\" value=\"删除\" class='deletTrain'> \n" +
                                    "                        </td>\n" +
                                    "                    </tr>");
                                $("#traintb").append(tr);
                            });
                            alert("修改成功!");
                        } else {
                            alert("修改失败!");
                        }
                    }
                })
            });

            //部门员工二级联动
            $("#addTrain_Dept").change(function () {
                var deptId = $(this).val();
                alert(deptId)
                $.ajax({
                    url: "showAllUser.action",
                    type: "post",
                    data: {
                        deptId: deptId,
                    },
                    success: function (data) {
                        if (data != null) {
                            $("addTrain_User option:gt(0)").remove();
                            $.each(data, function (index, item) {
                                var opt = $("<option value='" + item.userId + "'>" + item.name + "</option>")
                                $("#addTrain_User").append(opt);
                            })
                        }
                    }
                })
            });
            //员工报名培训
            $("#pxtb").on("click", ".addTrainLi", function () {
                var a = $(this);
                var id = a.prev().prev().val();
                var deptId = a.prev().val();
                var trId = a.next().val();
                if (a == "参加") {
                    a.val("取消");
                    $.ajax({
                        url: "addTrainLi.action",
                        type: "post",
                        data: {
                            trId: trId,
                            deptId: deptId,
                            userId: id,
                        },
                        dataType: "text",
                        success: function (data) {
                            if (data == "true") {
                                alert("添加成功!")
                            } else {
                                alert("添加失败!")
                            }
                        }
                    })
                } else {
                    a.val("参加");
                    $.ajax({
                        url: "deletTrainLi.action",
                        type: "post",
                        data: {
                            trId: trId,
                            userId: id,
                        },
                        dataType: "text",
                        success: function (data) {
                            if (data == "true") {
                                alert("取消成功!")
                            } else {
                                alert("取消失败!")
                            }
                        }
                    })
                }
            });

            // 培训员工二级联动
            $("#deletTrain_Train").change(function () {
                var id = $(this).val();
                $.ajax({
                    url: "showTrain.action",
                    type: "post",
                    data: {
                        trId: id,
                    },
                    success: function (data) {
                        $("#deletTrain_User option:gt(0)").remove();
                        if (data.userList.size == 0) {
                            var opt = $("<option value='-1'>暂无</option>");
                            $("#deletTrain_User").append(opt);
                            return;
                        }
                        $.each(data.userList, function (index, item) {
                            var opt = $("<option value='" + item.userId + "'>" + item.name + "</option>")
                            $("#deletTrain_User").append(opt);
                        });

                    }
                });
            });
            //修改招聘信息
            $("#tjzp").on("click", ".bcxg", function () {
                var btn = $(this);
                var a1 = $(this).prev();
                var a2 = $(this).parent().parent().find("select[name='aaa']");
                var deptId = a2.val();
                var a3 = $(this).parent().parent().find("select[name='bbb']");
                var pstId = a3.val();
                var a4 = $(this).parent().parent().find("textarea[name='functions']");
                var a5 = $(this).parent().parent().find("textarea[name='requests']");
                var a6 = $(this).parent().parent().find("input[name='salary']");
                if (deptId == 0) {
                    deptId = a1.prev().val();
                }
                if (pstId == 0) {
                    pstId = a1.prev().prev().val();
                }
                alert(a1.val() + "," + deptId + "," + pstId + "," + a4.val() + "," + a5.val() + "," + a6.val());
                $.ajax({
                    url: "updateInfo.action",
                    type: "post",
                    data: {
                        infoId: a1.val(),
                        deptId: deptId,
                        pstId: pstId,
                        functions: a4.val(),
                        requests: a5.val(),
                        salary: a6.val(),
                    },
                    dataType: "json",
                    success: function (dat) {
                        if (dat != null) {
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
                        } else {
                            alert("修改失败!")
                        }
                    }
                });
            });
            //删除招聘信息
            $("#tjzp").on("click", ".deleteInfobtn", function () {
                if (!confirm("确认删除?")) {
                    return;
                }
                var a = $(this);
                var id = a.prev().val();
                $.ajax({
                    url: "deleteInfo.action",
                    type: "post",
                    data: {
                        infoId: id,
                    },
                    dataType: "text",
                    success: function (data) {
                        if (data == "true") {
                            a.parent().parent().remove();
                            alert("删除成功!")
                        } else {
                            alert("删除失败")
                        }
                    }
                })
            });

            //二级联动
            $("#bmsel").change(function () {
                $("#zwsel option:gt(0)").remove();
                var id = $(this).val();
                $.ajax({
                    url: "queryPst.action",
                    type: "post",
                    data: {
                        deptId: id,
                    },
                    dataType: "json",
                    success: function (data) {
                        $.each(data, function (idx, item) {
                            var opt = $("<option value='" + item.pstId + "'>" + item.pstName + "</option>")
                            $("#zwsel").append(opt);
                        });
                    }
                });
            });
            //添加招聘信息
            $("#addzp").click(function () {
                $.ajax({
                    url: "addInfo.action",
                    type: "post",
                    data: {
                        deptId: $("#bmsel>option:selected").val(),
                        pstId: $("#zwsel>option:selected").val(),
                        functions: $("#funcs").val(),
                        requests: $("#reqs").val(),
                        salary: $("#sal").val(),
                    },
                    dataType: "json",
                    success: function (data) {
                        if (data != null) {
                            var tr = $("<tr style='height: 40px\'>" +
                                "<td><span class='bf'>" + data.deptName + "</span><span hidden='hidden' class='at'></span></td>" +
                                "<td><span class='bf'>" + data.pstName + "</span>" +
                                "<span hidden='hidden' class='at'><select name='bbb'>" +
                                "<option value='0'>---职位---</option>" +
                                "</select></span>" +
                                "</td>" +
                                "<td><span class='bf'>" + data.functions + "</span><span hidden='hidden' class='at'><textarea name='functions'>" + data.functions + "</textarea></span></td>" +
                                "<td><span class='bf'>" + data.requests + "</span><span hidden='hidden' class='at'><textarea name='requests'>" + data.requests + "</textarea></span></td>" +
                                "<td><span class='bf'>" + data.salary + "</span><span hidden='hidden' class='at'><input type='text' name='salary' value='" + data.salary + "'></span></td>" +
                                "<td><input type='hidden' value='" + data.pstId + "'><input type='hidden' value='" + data.deptId + "'><input type='hidden' value='" + data.infoId + "' name='infoId'><input type='button' value='保存' name='bcxg' class=\"bcxg\"><span hidden='hidden'><input type='button' value='取消修改' class='qxxgzp'></span></td>" +
                                "<td><input type='hidden' value='" + data.infoId + "' name='infoId'><input type='button' value='删除' id='deltbtn' class='deleteInfobtn'></td>" +
                                "</tr>");
                            $("#zptb").append(tr);
                            alert("添加成功!")
                        } else {
                            alert("添加失败!")
                        }

                    }
                })
                $(this).parent().parent().hide();
            })
            $("#new").click(function () {
                if ($(this).val() == "新建") {
                    $("#resId").val("0");
                    $("td>span").hide();
                    $("td>input").show();
                    $("td>textarea").show();
                    $(this).val("取消");
                } else {
                    $("#resId").val($("#change").val());
                    $("td>span").show();
                    $("td>input").hide();
                    $("td>textarea").hide();
                    $(this).val("新建");
                }
            });

            $("#empMsg").find("input").hide();

            //通讯录三级联动
            $("#txldepttb").on("click","td",function () {
                var a=$(this).children("input");
                $.ajax({
                    url: "queryPst.action",
                    type: "post",
                    data: {
                        deptId: a.val(),
                    },
                    dataType: "json",
                    success: function (data) {
                        $("#txlpsttb").find("tr:gt(0)").remove();
                        $("#txlemptb").find("tr:gt(0)").remove();
                        $.each(data, function (idx, item) {
                            var tr = $("<tr>"+
                                " <td><input type='hidden' value='"+item.pstId+"'>"+item.pstName+"</td>"+
                                "</tr>");
                            $("#txlpsttb").append(tr);
                        });
                    }
                });
            });
            $("#txlpsttb").on("click","td",function () {
                var a=$(this).children("input");
                $.ajax({
                    url: "queryPstUser.action",
                    type: "post",
                    data: {
                        pstId: a.val(),
                    },
                    dataType: "json",
                    success: function (data) {
                        $("#txlemptb").find("tr:gt(0)").remove();
                        $.each(data, function (idx, item) {
                            var tr = $("<tr>"+
                                "<td><input type='hidden' value='"+item.userId+"'>"+item.name+"</td>"+
                                "<td>"+item.phone+"</td>"+
                                "<td>"+item.email+"</td>"+
                                "</tr>");
                            $("#txlemptb").append(tr);
                        });
                    }
                });
            });
            //打卡
            $("#workstar").click(function () {
                var a=$(this);
                    $.ajax({
                        url:"starWork.action",
                        type:"post",
                        data:{},
                        dataType:"json",
                        success:function (data) {
                            if (data!=null){
                                $("#card").val(data.attId);
                                alert("上班打卡成功!"+data.attId);
                                $("#workstar").attr("disabled",true);
                                $("#workend").attr("disabled",false);

                            }
                        }
                    })
            });
            $("#workend").click(function () {
                var a=$(this);
                $.ajax({
                    url:"starWork.action",
                    type:"post",
                    data:{
                        attId:$("#card").val(),
                    },
                    dataType:"json",
                    success:function (data) {
                        if (data!=null){
                            alert("下班打卡成功!");
                        }
                    }
                })
            })
            // function arangTime(star,end) {
            //     var strs = star.split (":");
            //     var stre = end.split (":");
            //     var b = new Date ();
            //     var e = new Date ();
            //     var n = new Date ();
            //
            //     b.setHours (strs[0]);
            //     b.setMinutes (strs[1]);
            //     e.setHours (stre[0]);
            //     e.setMinutes (stre[1]);
            //
            //     if (n.getTime () - b.getTime () > 0 && n.getTime () - e.getTime () < 0) {
            //         return true;
            //     } else {
            //         return false;
            //     }
            // }
            //查看当月考勤
            $("#queryAttd_month").click(function () {
                $.ajax({
                    url:"queryAttdByMonth.action",
                    type:"post",
                    data:{
                        sdate:$("#queryAttd_date").val(),
                        userId:$("#attyg").val(),
            },
                    dataType:"json",
                    success:function (data) {
                        $("#attdtb").children("tr:gt(0)").remove();
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
                        $("#attdtb").children("tr:gt(0)").remove();
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
            //查看某年工资
            $("#sal_year").click(function () {
                if($("#salyg").val()==0){
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
                });

            });
            //查看某月工资
            $("#sal_month").click(function () {
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
                            "                                        <td><input type=\"hidden\" value='"+item.uslId+"'><button type=\"button\"  data-toggle=\"modal\" data-target=\"#fyModal\" class=\"xzfy\">\n" +
                            "                                                复议\n" +
                            "                                            </button></td>\n" +
                            "                </tr>");
                        $("#qsaltb").append(tr);
                    }
                })
            });
            //填写复议原因
            $("#qsaltb").on("click",".xzfy",function () {
                var id=$(this).prev().val();
                alert(id);
                $("#fyid").val(id);
            });
            //提交复议
            $("#salfy").click(function () {
                $.ajax({
                    url:"salFy.action",
                    tepe:"post",
                    data:{
                        uslId:$("#fyid").val(),
                        note:$("#note").val(),
                    },
                    dataType:"text",
                    success:function (data) {
                        if(data=="true"){
                            $("#saltb").find(".xzfi").val("已申请")
                            alert("办理成功！");
                        }else{
                            alert("办理失败！")
                        }
                    }
                })
            })
            if($("#a").val()==1){
                $("#workstar").attr("disabled",true);
            }
            if($("#card").val()==""){
                $("#workend").attr("disabled",true);
            }

        });
    </script>
</head>
<body>
<div class="top">
    <h1>主页</h1>
    <div id="welcome"><input type="hidden" value="${user1.userId}" id="serId" name="userId">${user1.name},欢迎来到召唤师峡谷!</div>
</div>
<div class="container">
    <div id="left">
        <div id="mulu">目录</div>
        <div id="company_msg" class="m">公司简介</div>
        <div id="dept_mang" class="m">培训信息</div>
        <div id="pst_mang" class="m">个人薪资</div>
        <div id="emp_mang" class="m">奖惩信息</div>
        <div id="glpx_msg" class="m">个人考勤</div>
        <div id="recruit_msg" class="m">个人信息</div>
        <div id="resume" class="m">通讯录</div>
        <div id="my_msg" class="m">消息</div>
    </div>
    <div id="right">
        <div id="gsjj" style="width: 1003px">
            <h3>${com.comName}</h3>
            <div>${com.comMsg}</div>
        </div>
        <div id="gulibumen" style="width: 1003px">
            <h3>培训信息</h3>
            <div style="margin-left: 150px">
                <table id="traintb" border="1" style="margin: auto">
                    <tr>
                        <td style="width: 100px">培训项目</td>
                        <td style="width: 100px">发布时间</td>
                        <td style="width: 100px">详情</td>
                        <td style="width: 100px">报名</td>
                    </tr>
                    <c:forEach items="${trList}" var="train">
                        <tr class="removeTrain">
                            <td style="width: 100px">${train.trName}</td>
                            <td style="width: 100px"><fmt:formatDate value="${train.creTime}"
                                                                     pattern="yyyy-MM-dd HH:mm"/></td>
                            <td style="width: 100px"><input type="hidden" value="${train.trId}">
                                <button type="button" data-toggle="modal" data-target="#showTrainModal" class="showTrain">
                                    查看
                                </button>
                            </td>
                            <c:forEach items="${trainsLi}" var="trli">
                                <c:if test="${trli.userId!=user.userId&&trli.trId!=train.trId}">
                                    <td style="width: 100px"><input type="hidden" value="${user1.userId}"><input
                                            type="hidden" value="${user1.deptId}"><input type="button" value="参加"
                                                                                        class="addTrainLi"><input
                                            type="hidden" value="${train.trId}"></td>
                                </c:if>
                                <c:if test="${trli.userId==user1.userId&&trli.trId==train.trId}">
                                    <td style="width: 100px"><input type="hidden" value="${user1.userId}"><input
                                            type="hidden" value="${user1.deptId}"><input type="button" value="取消"
                                                                                        class="addTrainLi"><input
                                            type="hidden" value="${train.trId}"></td>
                                </c:if>
                            </c:forEach>
                        </tr>
                    </c:forEach>
                </table>
                <!-- Modal -->
                <div class="modal fade" id="showTrainModal" tabindex="-1" role="dialog" aria-labelledby="showTrainLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                        aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="showTrainLabel">员工信息</h4>
                            </div>
                            <div class="modal-body">
                                <table style="margin: auto" id="showTraintable">
                                    <tr>
                                        <td colspan="4"><input type="text" id="uptrName" placeholder="培训项目名"></td>
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
                                <button type="button" class="btn btn-lg btn-danger" data-toggle="popover" title="暂无员工参加该培训"
                                        data-content="" id="showUser">
                                    查看参加培训的员工
                                </button>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                <button type="button" class="btn btn-primary" id="updateTrain" data-dismiss="modal">保存
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="glzw">
            <h2>个人薪资</h2>
            查询：<input type="date" value="2018-09-28" id="sal_time"><input type="button" value="查询该年" id="sal_year"/>
            <input type="hidden" value="${user1.userId}"id="salyg"/><input type="button" value="查询该月" id="sal_month"/>
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
            <!-- Modal -->
            <div class="modal fade" id="fyModal" tabindex="-1" role="dialog" aria-labelledby="fyModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="fyModalLabel">复议原因</h4>
                        </div>
                        <div class="modal-body">
                            <input type="hidden" value="" id="fyid"/>
                            <textarea id="note">复议原因：</textarea>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                            <button type="button" class="btn btn-primary" data-dismiss="modal" id="salfy">保存</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="glpx" style="width: 1003px">
            <h2>个人考勤</h2>
            <div>
                <input type="hidden" value="${a}" id="a">
                <input type="hidden" value="${b}" id="b">
                <input type="button" value="上班打卡" id="workstar">
                <input type="hidden" value="${attddd.attId}" id="card">
                <input type="button" value="下班打卡" id="workend">
            </div>
            选择日期:<input type="date" id="queryAttd_date">
            <input type="hidden" value="${user1.userId}" id="attyg">
            <input type="button" value="查看该月" id="queryAttd_month">
            <input type="button" value="查看该日" id="queryAttd_day">
            <table id="attdtb" style="margin: auto;" border="1">
                <tr>
                    <td style="width: 200px">上班时间</td>
                    <td style="width: 200px">下班时间</td>
                    <td>迟到</td>
                    <td>早退</td>
                    <td>旷工</td>
                </tr>
            </table>
        </div>
        <div id="glyg" >
            <td>奖惩信息</td>
            <table id="reputb" style="margin: auto;" border="1">
                <tr>
                    <td style="width: 100px">奖惩类别</td>
                    <td>奖惩原因</td>
                    <td style="width: 200px">奖惩时间</td>
                    <td style="width: 100px">奖惩金额</td>
                </tr>
                <c:forEach items="${rps}" var="rp">
                    <tr>
                        <td>${rp.rewardPuni}</td>
                        <td>${rp.reson}</td>
                        <td>${rp.stime}</td>
                        <td>${rp.money}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
        <div id="zpxx" style="width:100%">
            <h2>个人信息</h2>
            <div>所在部门:${user1.deptName}</div>
            <div>职位:${user1.pstName}</div>
            <table border="1" class="empMsg" id="empMsg">
                <tr>
                    <td style="width: 50px">姓名</td>
                    <td style="width: 200px">${user1.name}<input type="text" id="name" name="name" value="${user1.name}">
                    </td>
                    <td style="width: 50px">性别</td>
                    <td style="width: 200px">${user1.sex}<input type="text" id="sex" name="sex" value="${user1.sex}"></td>
                    <td style="width: 50px">出生日期</td>
                    <td style="width: 200px"><fmt:formatDate value="${user1.birth}" pattern="yyyy-MM-dd"/><input
                            type="date" id="birth" name="birth" value="${user1.sbirth}"></td>
                </tr>
                <tr>
                    <td>政治面貌</td>
                    <td>${user1.poliStatus}<input type="text" id="poliStatus" name="poliStatus"
                                                 value="${user1.poliStatus}"></td>
                    <td>学历</td>
                    <td>${user1.record}<input type="text" id="record" name="record" value="${user1.record}"></td>
                    <td>毕业院校</td>
                    <td>${user1.school}<input type="text" id="school" name="school" value="${user1.school}"></td>

                </tr>
                <tr>
                    <td>就读专业</td>
                    <td>${user1.major}<input type="text" id="major" name="major" value="${user1.major}"></td>
                    <td>毕业时间</td>
                    <td><fmt:formatDate value="${user1.edutTime}" pattern="yyyy-MM-dd"/><input type="date"
                                                                                               id="graduDate"
                                                                                               name="graduDate"
                                                                                               value="${user1.edutTime}">
                    </td>
                    <td>联系方式</td>
                    <td>${user1.phone}<input type="text" id="phone" name="phone" value="${user1.phone}"></td>

                </tr>
                <tr>
                    <td>邮箱</td>
                    <td>${user1.email}<input type="text" id="email" name="email" value="${user1.email}"></td>
                    <td>籍贯</td>
                    <td colspan="3">${user1.nativePlace}<input type="text" id="nativePlace" name="nativePlace"
                                                              value="${user1.nativePlace}"></td>
                </tr>
            </table>

        </div>
        <div id="grjl" style="width: 1003px">
            <h2>通讯录</h2>
                <div>
                    <table id="txldepttb" border="1" style="float: left">
                        <tr>
                            <td>部门:</td>
                        </tr>
                    <c:forEach items="${com.depts}" var="dept">
                        <tr>
                            <td><input type="hidden" value="${dept.deptId}">${dept.deptName}</td>
                        </tr>
                    </c:forEach>
                    </table>


                    <table id="txlpsttb" border="1" style="float: left">
                        <tr>
                            <td>职位:</td>
                        </tr>
                    </table>


                    <table id="txlemptb" border="1" style="float: left">
                        <tr>
                            <td>姓名</td>
                            <td>电话</td>
                            <td>邮箱</td>
                        </tr>
                    </table>
                </div>
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

