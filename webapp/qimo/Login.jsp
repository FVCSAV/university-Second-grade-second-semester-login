<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>

<html>
<script type="text/javascript" src="jquery-3.3.1.min.js"></script>
<script type="text/javascript" >
    $(function(){
        $("#btn2").click(function(){
            var id=$("#input1").val();
            var pw=$("#input2").val();
            var Code=$("#input3").val();
            $.ajax({
                type:"post",
                url:"loginservlet",
                data:{"id":id,"password":pw,"Code":Code},
                dataType: "text",
                success:function(data) {
                    //alert(data);
                    if(data.charAt(0)==9){
                    	$("#d1").html("<h5>验证码错误</h5>");
                    }
                    else if(data.charAt(0)==5){//管理者
                    	window.location.href = "guanliyuan.jsp";
                    }
                    else if(data.charAt(0)==6){//用户
                    	window.location.href = "前端页面.html";
                    }
                    else if(data.charAt(0)==3){
                        $("#d1").html("<h5>无该用户，请注册</h5>");
                    }
                    else if(data.charAt(0)==2){
                        $("#d1").html("<h5>密码错误</h5>");
                    }
                    else if(data.charAt(0)==0){
                    	$("#d1").html("<h5></h5>");
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
         	        window.location.href = "wangji.jsp"; 
        	    },
        	    error:function(message) {
                    alert("提交失败"+data);
                }
        	})
        })
        
        $("#q2").click(function(){
        	var num=$("#q2").val();
        	$.ajax({
        	    type:"post",
        	    url:"fen",
        	    data:{"num":num},
                dataType: "text",
        	    success:function(data){
        	    	//alert(data);
         	        window.location.href = "Register.jsp"; 
        	    },
        	    error:function(message) {
                    alert("提交失败"+data);
                }
        	})
        })
       
        $("#q3").click(function(){
        	var num=$("#q3").val();
        	$.ajax({
        	    type:"post",
        	    url:"fen",
        	    data:{"num":num},
                dataType: "text",
        	    success:function(data){
        	    	//alert(data);
         	        window.location.href = "shanchu.jsp"; 
        	    },
        	    error:function(message) {
                    alert("提交失败"+data);
                }
        	})
        })

    })
</script>


<head>
    <title>登录</title>
	<link rel="stylesheet" type="text/css" href="登录注册部分.css">

</head>


<body>
<div class="ex2">
    <h3 id="d2" ></h3>
</div>
<div class="login-box">
        <h2>航空登录</h2>
        <form>
            <div class="user-box">
                <input id="input1" type="text" name="id"/> 
                <label>账号</label>
            </div>

            <div class="user-box">
                <input id="input2" type="password" name="password"/>
                <label>密码</label>
            </div>
           	<span style="color: #03e9f4">验证码：</span>
           	<input id="input3" type="text"/><img src="Code">
            <div class="ex1">
                <h3 id="d1" ></h3>
            </div>
            
            <div align="center" >
            	<input style="background-color: #486288;color: white;border-radius: 12px;font-size: 12px;" id="btn2" type="button" value="登录" /><br>
            	<input style="background-color: #486288;color: white;border-radius: 12px;font-size: 12px;" id="q1" type="button" value="脑袋糊了，忘记密码了?"/>
 				<input style="background-color: #486288;color: white;border-radius: 12px;font-size: 12px;" id="q2" type="button" value="没账号？还不快注册"/><br>
 				<input style="background-color: #486288;color: white;border-radius: 12px;font-size: 12px;" id="q3" type="button" value="如果你想消除账号的话..."/>
            </div>           
        </form>
    </div>  
</body>
</html>