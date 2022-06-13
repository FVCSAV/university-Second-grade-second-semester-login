<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script type="text/javascript" src="jquery-3.3.1.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.*" %>
<%@page import="java.text.*" %>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style>
		lable{font-size:200%}
		#page{
			display:none;
		}
		a:link{
			margin-top:10px;
			margin-left:10px;
			text-decoration:none;
			color:blue;
		}
		.title>p{
        font-size: 30px;
        font-family: 隶书;
        color: midnightblue;
    }
    .logo{
        position: absolute;
        left: 20px;
        top: 80px;
        background: #99FF00;
        float:left;
    }
    .container{
        width:1200px;
        height:100px;
        left: 22px;
        margin:0 auto;
        position:relative;
        overflow:hidden;
        border:3px solid #fff;
        background-color:#fff;
        -moz-box-shadow:1px 1px 6px #000;
        -webkit-box-shadow:1px 1px 6px #000;
        -moz-border-radius:0px 0px 20px 20px;
        -webkit-border-bottom-left-radius:20px;
        -webkit-border-bottom-right-radius:20px;
        border-radius:0px 0px 20px 20px;
    }
    ul#menu{
        list-style:none;
        position:absolute;
        bottom:0px;
        left:100px;
        font-size:36px;
        font-family: Helvetica, Arial, sans-serif;
        font-weight: bold;
        color:#999;
        letter-spacing:-2px;
    }
    ul#menu li{
        float:left;
        margin:0px 10px 0px 0px;
    }
    ul#menu a{
        cursor:pointer;
        position:relative;
        float:left;
        bottom:-95px;
        line-height:20px;
        width:210px;
    }
    .icon_about,
    .icon_work,
    .icon_help,
    .icon_search{
        width:64px;
        height:64px;
        display:block;
        left:140px;
        top:50px;
        position:absolute;
    }
    ul#menu span.title{
        display:block;
        height:26px;
        text-shadow:1px 1px 1px #000;
        color:#B7B7B6;
        text-indent:10px;
    }
    ul#menu span.description{
        width:140px;
        height:80px;
        background-color:#B7B7B6;
        border:3px solid #fff;
        color:#fff;
        display:block;
        font-size:24px;
        padding:10px;
        -moz-box-shadow:1px 1px 6px #000;
        -webkit-box-shadow:1px 1px 6px #000;
        box-shadow:1px 1px 6px #000;
        -moz-border-radius:10px;
        -webkit-border-radius:10px;
        border-radius:10px;
    }
    ul#menu a:hover span.description{
        background-color:#54504F;
    }
    ul#menu a:hover span.title{
        color:#54504F;
    }
		    /*左侧导航栏*/
    .left-box{
        float:left;
    }
    .left-box li {
        margin-bottom: 2px;
        list-style: none;
        background: aliceblue;
        font-family: 华文隶书;
        float: left;
        clear: left;
    }
    .left-box a {
        display: block;
        width: 300px;
        height: 30px;
        line-height: 25px;
        position: relative;
        padding: 0 6px;
        border: 1px solid #d6d6d6;
        text-decoration: none;
        font-size: 20px;
        text-align: center;
        color: #555;
    }
    .left-box a:hover {
        font-weight: bold;
        border: 1px solid #b5b5b5;
    }
    .left-box span {
        display: block;
        width: 9px;
        height: 8px;
        overflow: hidden;
        position: absolute;
        top: 8px;
        right: 10px;
    }
    .right-box{
    	border:3px solid #4dc3c6;
    	margin-top:20px;
        margin-left: 100px;
        float:left;
        width:1000px;
        height:600px;
    }
		.xuanze{
			margin-top:20px;
			margin-left:50px;
		}
		.anniu{
			margin-top:20px;
			margin-left:70px;
		}
		.jieguo{
			margin-top:10px;
			marin-left:20px;
		}
		.table{
			margin-top:20px;
			 text-align:center;
			margin-left:50px;
			width:450px;
			border-collapse: collapse;
		}
		#div2{
		 	margin-top:20px;
			margin-left:70px;
			width:120px;
			
		}
	</style>
</head>
<%
	SimpleDateFormat ft = new SimpleDateFormat("yyyy-MM-dd");
%>
<body>
	<div class="title">
    	<p>Southern Company Limited System</p>
	</div>
	<div class="logo">
	</div>
	<div class="container">
    	<ul id="menu">
        	<li>
            	<a>
                	<i class="icon_about"></i>
                	<span class="title">主页</span>
                	<span class="description">Main page</span>
            	</a>
        	</li>
        	<li>
            	<a>
                	<i class="icon_work"></i>
                	<span class="title">民航简介</span>
                	<span class="description">Introduction</span>
            	</a>
        	</li>
        	<li>
            	<a>
                	<i class="icon_help"></i>
                	<span class="title">新闻资讯</span>
                	<span class="description">News</span>
            	</a>
        	</li>
        	<li>
            	<a>
                	<i class="icon_search"></i>
                	<span class="title">联系我们</span>
                	<span class="description">Contact us</span>
            	</a>
        	</li>
    	</ul>
	</div>
	<div class="left-box">
    	<ul id="menu-l">
        	<li><a href="#" target="_blank">登录<span></span></a></li>
        	<li><a href="#" target="_blank">注册<span></span></a></li>
        	<li><a href="#" target="_blank">机票预定<span></span></a></li>
        	<li><a href="search.jsp" target="_blank">机票查询<span></span></a></li>
        	<li><a href="#" target="_blank">通知单查询<span></span></a></li>
        	<li><a href="#" target="_blank">账单查询<span></span></a></li>
        	<li><a href="#" target="_blank">机票变更<span></span></a></li>
    	</ul>
	</div>
	<div class="right-box">
     <div id="xuanze" class="xuanze">
		<label>请选择时间：2022年</label>
		<select name="month" id="month" onchange="changeday();">
		    <option value="----">----</option>
			<option value="05">05</option>
			<option value="06">06</option>
			<option value="07">07</option>
		</select><label>月</label>
		<select name="day" id="day">
		</select>
		<label>日</label><br>
		<label>请选择起始地：</label>
		<select name="qishi" id="qishi"class="qishi">
			<option value="----">----</option>
			<option value="成都">成都</option>
			<option value="北京">北京</option>
			<option value="天津">天津</option>
			<option value="山东">山东</option>
			<option value="西安">西安</option>
			</select><br>
		<label>请选择目的地：</label>
		<select name="jieshu" id="jieshu">
			<option value="----">----</option>
			<option value="成都">成都</option>
			<option value="北京">北京</option>
			<option value="西安">西安</option>
			<option value="山东">山东</option>
			<option value="天津">天津</option>
			</select><br>
	</div>
	<div id="anniu" class="anniu">
	<input id="btn1" type="button" value="确认身份" />	
	<input id="btn3" type="button" value="清空筛选"  onclick="chongzhi()"/>	
	<input id="btn2" type="button" value="查询剩余机票" />	<br>
	</div>
	<table border='1px'  class='table' id='table'>
		<thead id="thead">
		</thead>
		<tbody id="tbody">
		</tbody>
	</table>
	<div id="div2" ></div>
	<!--分页-->
    <div class="page" id="page">
            <a id="down" href="#" onClick="change1(--pageno)" >上一页</a>　　
            <span id="a3"></span><a id="up" href="#" onClick="change1(++pageno)" >下一页</a>
            <span id="ho" class="ho" >第<span id="a2"></span>/<span id="a1"   ></span>页</span>
    </div>
	<!--用来存放总页数，放置在body中-->
	<div style="display:none" id="p"></div>
	<div id="div3"></div>
	<div id="div4"></div>
	<div id="div5"></div>
	</div>
</body>
<script type="text/javascript">//显示余票
var sf=new String();
$(function(){
	$("#btn2").click(function(){
		document.getElementById('page').style.display="block";
		$("#thead").html("");
		$("#tbody").html("");
		var qishi=$("#qishi").val();
		var jieshu=$("#jieshu").val();
		var month=$("#month").val();
		var day=$("#day").val();
		var str1="";
		day++;
		$.ajax({
			type:"post",
			url:"searchservlet",			   
		    dataType:"json", 
            success:function(data) {
            	var tbody=document.getElementById('tbody');
            	thead.innerHTML+="<tr><th>票数</th><th>日期</th><th>起始地</th><th>目的地</th><th>航班号</th><th>票价</th><th>操作</th>";
            	if(data!=null){
            		for(var i=0;i<data.length;i++){
            			if(qishi=="----"&&jieshu=="----"&&month=="----"){//000
        					tbody.innerHTML+="<tr><td>"+data[i].fnum+"</td>"+
                			"<td>"+data[i].times+"</td>"+
                			"<td>"+data[i].placeo+"</td>"+
                			"<td>"+data[i].placef+"</td>"+
           	                "<td>"+data[i].fh+"</td>"+
           	                "<td>"+data[i].price+"</td>"+
           	             	"<td><button class=\"btnDelete dalay\" onmouseover=\"changeId(this)\">删除</button></td>" ;
        				}else if(qishi=="----"&&jieshu=="----"&&month!="----"){//001
        					var x=data[i].times;
                        	var arr=x.split('-');   
                        	if(arr[1]==month&&arr[2]==day){
                        		tbody.innerHTML+="<tr><td>"+data[i].fnum+"</td>"+
                    			"<td>"+data[i].times+"</td>"+
                    			"<td>"+data[i].placeo+"</td>"+
                    			"<td>"+data[i].placef+"</td>"+
               	                "<td>"+data[i].fh+"</td>"+
               	                "<td>"+data[i].price+"</td>"+
               	             	"<td><button class=\"btnDelete dalay\" onmouseover=\"changeId(this)\">删除</button></td>" ;
                        	}
        				}else if(qishi=="----"&&jieshu!="----"&&month=="----"){//010
        					if(data[i].placef==jieshu){
        						tbody.innerHTML+="<tr><td>"+data[i].fnum+"</td>"+
                    			"<td>"+data[i].times+"</td>"+
                    			"<td>"+data[i].placeo+"</td>"+
                    			"<td>"+data[i].placef+"</td>"+
               	                "<td>"+data[i].fh+"</td>"+
               	                "<td>"+data[i].price+"</td>"+
               	             	"<td><button class=\"btnDelete dalay\" onmouseover=\"changeId(this)\">删除</button></td>" ;
        					}
        				}else if(qishi!="----"&&jieshu=="----"&&month=="----"){//100
        					if(data[i].placeo==qishi){
        						tbody.innerHTML+="<tr><td>"+data[i].fnum+"</td>"+
                    			"<td>"+data[i].times+"</td>"+
                    			"<td>"+data[i].placeo+"</td>"+
                    			"<td>"+data[i].placef+"</td>"+
               	                "<td>"+data[i].fh+"</td>"+
               	                "<td>"+data[i].price+"</td>"+
               	             	"<td><button class=\"btnDelete dalay\" onmouseover=\"changeId(this)\">删除</button></td>" ;
        					}
        				}else if(qishi=="----"&&jieshu!="----"&&month!="----"){//011
        					var x=data[i].times;
                        	var arr=x.split('-');
            				if(data[i].placef==jieshu&&arr[1]==month&&arr[2]==day){
            					tbody.innerHTML+="<tr><td>"+data[i].fnum+"</td>"+
                    			"<td>"+data[i].times+"</td>"+
                    			"<td>"+data[i].placeo+"</td>"+
                    			"<td>"+data[i].placef+"</td>"+
               	                "<td>"+data[i].fh+"</td>"+
               	                "<td>"+data[i].price+"</td>"+
               	             	"<td><button class=\"btnDelete dalay\" onmouseover=\"changeId(this)\">删除</button></td>" ;
            				}
        				}else if(qishi!="----"&&jieshu!="----"&&month=="----"){//110
        					if(data[i].placeo==qishi&&data[i].placef==jieshu){
        						tbody.innerHTML+="<tr><td>"+data[i].fnum+"</td>"+
                    			"<td>"+data[i].times+"</td>"+
                    			"<td>"+data[i].placeo+"</td>"+
                    			"<td>"+data[i].placef+"</td>"+
               	                "<td>"+data[i].fh+"</td>"+
               	                "<td>"+data[i].price+"</td>"+
               	             	"<td><button class=\"btnDelete dalay\" onmouseover=\"changeId(this)\">删除</button></td>" ;
        					}
        				}else if(qishi!="----"&&jieshu=="----"&&month!="----"){//101
        					var x=data[i].times;
                        	var arr=x.split('-');   
            				if(data[i].placeo==qishi&&arr[2]==day&&arr[1]==month){
            					tbody.innerHTML+="<tr><td>"+data[i].fnum+"</td>"+
                    			"<td>"+data[i].times+"</td>"+
                    			"<td>"+data[i].placeo+"</td>"+
                    			"<td>"+data[i].placef+"</td>"+
               	                "<td>"+data[i].fh+"</td>"+
               	                "<td>"+data[i].price+"</td>"+
               	             	"<td><button class=\"btnDelete dalay\" onmouseover=\"changeId(this)\">删除</button></td>" ;
            				}
        				}else if(qishi!="----"&&jieshu!="----"&&month!="----"){//111
        					var x=data[i].times;
                        	var arr=x.split('-');   
            				if(data[i].placef==jieshu&&data[i].placeo==qishi&&arr[2]==day&&arr[1]==month){
            					tbody.innerHTML+="<tr><td>"+data[i].fnum+"</td>"+
                    			"<td>"+data[i].times+"</td>"+
                    			"<td>"+data[i].placeo+"</td>"+
                    			"<td>"+data[i].placef+"</td>"+
               	                "<td>"+data[i].fh+"</td>"+
               	                "<td>"+data[i].price+"</td>"+
               	             	"<td><button class=\"btnDelete dalay\" onmouseover=\"changeId(this)\">删除</button></td>" ;
            				}
        				}
            		}
            	}
            	var a = document.getElementById("tbody").getElementsByTagName("tr");
            	if(a.length==0){
            		tbody.innerHTML="<tr></tr>";
            		str1+="无所选航班";
            		str1+="<br>"
            	}
            	str1+="<a href=insert.jsp> 添加新的航班</a>";
            	$("#div2").html(str1);  
            	var zz =new Array(a.length);
            	//alert(zz.length);
            	for(var i=0;i<a.length;i++){
            		zz[i]=a[i].innerHTML } 
            	var pageno=1;               //当前页
                var pagesize=5; 			//每页多少条信息
                if(zz.length%pagesize==0)
                {var  pageall =zz.length/pagesize }
                else
                {var  pageall =parseInt(zz.length/pagesize)+1}       //一共多少页
                $("#p").text(pageall);      //将pageall的值存放到div中，便于下次使用
                change(1,pageall,zz);
            },
            error:function(message) {
                alert("提交失败");
            }
		})
	})
})	
</script>
<script>//修改日期下拉框内容
	var monthkey={};
	monthkey['05']=['1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31'];
	monthkey['06']=['1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30'];
	monthkey['07']=['1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31'];
	function changeday(){
		//根据id找到两个下拉框对象
        var target1 = document.getElementById("month");
        var target2 = document.getElementById("day");
        //得到第一个下拉框的内容
        var selected_initial = target1.options[target1.selectedIndex].value;
        while (target2.options.length) {
            target2.remove(0);
        }
        var initial_list = monthkey[selected_initial];
        if (initial_list) {
            for (var i = 0; i < initial_list.length; i++) {
                var item = new Option(initial_list[i], i);
                //将列表中的内容加入到第二个下拉框
                target2.options.add(item);
            }
        }
	}
</script>
<script type="text/javascript">
	function chongzhi(){
		document.getElementById('month').selectedIndex = 0;
		document.getElementById('qishi').selectedIndex = 0;
		document.getElementById('jieshu').selectedIndex = 0;
		document.getElementById('day').selectedIndex = 0;
	}
</script>
<script type="text/javascript">
	function changeId(obj){
		[].forEach.call(document.querySelecterAll(".btnDelete"),function{
			alert(v);
			v.setAttribute("id","");
			let parent=v.parentNode;
			let pParent=parent.parentNode;
			pParent.setAttribute("id","");
		});
		obj.setAttribute("id","deleteBtn");
		let parent=obj.parentNode;
		let pParent=parent.parentNode;
		pParent.setAttrinute("id","parent");
	}
</script>
<script>
	$(function(){
			$("#table").on("click","#deleteBtn",function(){
			let value=$("#deleteBtn").parent().parent().find("td");
			let num=value.eq(0).text();
			let fh=value.eq(4).text();
			alert(num);
			alert(fh);
			if(num!=50){
				alert("欲删除航班已被订票，不可删除");
			}else{
				alert("已删除航班号为"+fh+"的航班");
			}
			$.ajax({
				type:"post",
				url:"deleteservlet",
				data:{"fh":fh},
				dataType:"json",
				success:function(data){
					$("#thead").html("");
					$("#tbody").html("");
					$("#div2").html("");
					document.getElementById('page').style.display="none";
				}
			})
		})
	})
</script>
<script type="text/javascript">
function change(e,all,zu){
    zz=zu;	
    var pagesize=5;   //每页多少条信息
    pageall=all;     //总页数
    pageno=e;        //当前页
    if(e <1)//如果输入页<1页
    { e=1;pageno=1}//就等于第1页 ， 当前页为1
    if(e>pageall)//如果输入页大于最大页
    {e=pageall;pageno=pageall}//输入页和当前页都=最大页
    document.getElementById("tbody").innerHTML="";//全部清空
    for(var i=0;i<pagesize;i++){
        var div =document.createElement("tr");//建立div对象
        div.innerHTML=zz[(e-1)*pagesize+i];//建立显示元素
        document.getElementById("tbody").appendChild(div);//加入tbody中
        if(zz[(e-1)*pagesize+i+1]==null)//超出范围跳出
            break
    }
    var ye="";
    for(var j=1;j<=pageall;j++){
        if(e==j)
        {ye=ye+"<span><a href='#' onClick='change1("+j+")' style='color:#FF0000'>"+j+"</a></span> "}
        else
        {ye=ye+"<a href='#' onClick='change1("+j+")'>"+j+"</a> "}
    }
    document.getElementById("a1").innerHTML=pageall;
    document.getElementById("a2").innerHTML=pageno;
    document.getElementById("a3").innerHTML=ye;
    /*如果当前是第一页则：*/
    if (pageno == 1){
        $('#down').hide();//隐藏
    }else {
        $('#down').show();//显示
    }
    /*如果是最后一页则：*/
    if (pageno == pageall){
        $('#up').hide();//隐藏
    }else {
        $('#up').show();//显示
    }
    k=zu;
}
function change1(e){
    zz=k;	
    var pagesize=5; 
    pageall=$("#p").text();
    pageno=e;
    if(e <1)//如果输入页<1页
    { e=1;pageno=1}//就等于第1页 ， 当前页为1
    if(e>pageall)//如果输入页大于最大页
    {e=pageall;pageno=pageall}//输入页和当前页都=最大页
    document.getElementById("tbody").innerHTML="";//全部清空
    for(var i=0;i<pagesize;i++){
        var div =document.createElement("tr");//建立div对象
        div.innerHTML=zz[(e-1)*pagesize+i];//建立显示元素
        document.getElementById("tbody").appendChild(div);//加入tbody中
        if(zz[(e-1)*pagesize+i+1]==null)//超出范围跳出
            break
    }
    var ye="";
    for(var j=1;j<=pageall;j++){
        if(e==j){
        	ye=ye+"<span><a href='#' onClick='change1("+j+")' style='color:#FF0000'>"+j+"</a></span> "}
        else{
        	ye=ye+"<a href='#' onClick='change1("+j+")'>"+j+"</a> "}
    }
    document.getElementById("a1").innerHTML=pageall;
    document.getElementById("a2").innerHTML=pageno;
    document.getElementById("a3").innerHTML=ye;
    /*如果当前是第一页则：*/
    if (pageno == 1){
        $('#down').hide();//隐藏
    }else {
        $('#down').show();//显示
    }
    /*如果是最后一页则：*/
    if (pageno == pageall){
        $('#up').hide();//隐藏
    }else {
        $('#up').show();//显示
    }
}
</script>
</html> --%>