<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>

<html>
<script type="text/javascript" src="jquery-3.3.1.min.js"></script>
<script type="text/javascript" >

    $(function(){
        $("#btn1").click(function(){
            var id=$("#input1").val();
            var pw=$("#input2").val();
            var name=$("#input3").val();
            var sex=$("#input4").val();
            var age=$("#input5").val();
            var telephone=$("#input6").val();
            var sid =document.getElementsByName("sid");
            for(var i=0;i<sid.length;i++){
                if(sid[i].checked){
                    var sid1= sid[i].value;
                }
            }
            $.ajax({
                type:"post",
                url:"registerservlet",
                data:{"id":id,"password":pw,"name":name,"sex":sex,
                    "age":age,"telephone":telephone,"sid":sid1},
                dataType: "text",
                success:function(data) {
                    //alert(data);
                    if(data.charAt(0)==1){
                        $("#d1").html("<h5>身份证格式有问题,位数不为18位</h5>");
                    }
                    else if(data.charAt(0)==2){
                        $("#d1").html("<h5>密码数要要大于6位</h5>");
                    }
                    else if(data.charAt(0)==3){
                        $("#d1").html("<h5>电话格式有问题，位数不为11位</h5>");
                    }
                    else if(data.charAt(0)==4){
                        $("#d1").html("<h5>该用户已存在，请直接登录</h5>");
                    }
                    else if(data.charAt(0)==0){
                        $("#d1").html("<h5>注册成功，请返回登陆界面</h5>");
                    }
                    $("#d2").html("当前在线人数"+data.charAt(1));
                },
                error:function(message) {
                    alert("提交失败"+data);
                }
            })
        })
        $("#q1").click(function(){
        	var num=$("#q1").val();
        	$.ajax({
        	    type:"post",
        	    url:"fen",
        	    data:{"num":num},
                dataType: "text",
        	    success:function(data){
        	    	//alert(data);
         	        window.location.href = "Login.jsp"; 
        	    },
        	    error:function(message) {
                    alert("提交失败"+data);
                }
        	})
        })
    })
</script>
<head>
    <title>用户注册</title>
	<link rel="stylesheet" type="text/css" href="登录注册部分.css">
</head>

<body>
<div class="ex2">
    <h3 id="d2" ></h3>
</div>
<div class="login-box">
	<h2>注册界面</h2>
	<form>
		<div class="user-box">
                <input id="input1" type="text" name="id"/> 
                <label>输入身份证ID(长度为18)</label>
        </div>
        <div class="user-box">
                <input id="input2" type="password" name="password"/> 
                <label>输入密码(请输入长度至少大于6)</label>
        </div>
        
        <div class="user-box">
                <input id="input3" type="text" name="name"/> 
                <label>输入姓名</label>
        </div>
        <div class="user-box">
                <input id="input4" type="text" name="sex"/> 
                <label>输入性别</label>
        </div>
        <div class="user-box">
                <input id="input5" type="text" name="age"/> 
                <label>输入年龄</label>
        </div>
        <div class="user-box">
                <input id="input6" type="text" name="telephone"/> 
                <label>输入电话(请输入长度为11)</label>
        </div>
    </form>
    <div align="center" style="color:red;font-size: 19px;">
        <span style="text-align: center;display:block;">身份</span><br>
        <input type="radio" name="sid" value="1"><span>管理员</span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <input type="radio" name="sid" value="2"><span>旅行社</span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <input type="radio" name="sid" value="3"><span>用户</span><br>         
        <span id="d1"></span><br>
        <input style="background-color: #486288;color: white;border-radius: 12px;font-size: 12px;" id="btn1" type="button" class="q1" value="注册"/> 
    </div>
    <div align="center" style="color: #03e9f4;font-size: 10px;"><br>
         <input style="background-color: #486288;color: white;border-radius: 12px;font-size: 12px;" id="q1" type="button" value="返回主界面"/><br>
    </div>
</div>

</body> 
</html>
