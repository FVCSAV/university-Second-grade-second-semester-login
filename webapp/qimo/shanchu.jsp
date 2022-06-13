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
                url:"shanchu",
                data:{"id":id,"password":pw,"Code":Code},
                dataType: "text",
                success:function(data) {
                    //alert(data);
                    if(data.charAt(0)==9){
                    	$("#d1").html("<h5>验证码错误</h5>");
                    }
                    else if(data.charAt(0)==8){
                    	$("#d1").html("<h5>删除成功</h5>");
                    }
                    else if(data.charAt(0)==3){
                        $("#d1").html("<h5>无该用户，请注册</h5>");
                    }
                    else if(data.charAt(0)==2){
                        $("#d1").html("<h5>密码错误</h5>");
                    }
                    else if(data.charAt(0)==0){
                    	$("#d1").html("<h5>删除成功</h5>");
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
    <title>登录</title>
	<link rel="stylesheet" type="text/css" href="登录注册部分.css">
</head>


<body>
<div class="ex2">
    <h3 id="d2" ></h3>
</div>
<div class="login-box">
        <h2>删除账号</h2>
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
            
            <div align="center" style="color: #03e9f4;font-size: 10px;" >
            	<input  id="btn2" type="button" value="确定吗"/><br>
            </div>
                     
            <div align="center" style="color: #03e9f4;font-size: 10px;">
            	<input id="q1" type="button" value="登陆主页"/><br>
            </div>      
        </form>
    </div>  
</body>
</html>