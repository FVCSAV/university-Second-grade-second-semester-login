package servlet;

import javax.servlet.*;


import javax.servlet.http.*;

import bean.user;

import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

import service.userservice;
import servlet.*;

@WebServlet(name = "loginservlet",value = "/qimo/loginservlet")
public class loginservlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public loginservlet() {
        super();
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id=request.getParameter("id");
        String password=request.getParameter("password");
        String Code=request.getParameter("Code");
        
        user stu=new user();
        stu.setId(id);
        stu.setPassword(password);

        request.getSession(true).setAttribute("user", stu);

        String contextPath = request.getContextPath();
        
		ServletContext context=request.getServletContext();
		int n=(int)context.getAttribute("count");
    	String a = ""+n;
    	
        PrintWriter out=response.getWriter();
        String a1=CodeServlet.gettos();
        try {
        	if(Code.equals(a1)) {
        		if(userservice.pan(stu)==1) {
//                    out.println("0"+a);//成功登录
//        			out.println("1"+a);
                   if(userservice.pansid(stu)==1){//判断sid
                	   out.println("5"+a);//管理者
                    }
                    else{
                    	out.println("6"+a);//用户
                    }
                }
        		
                else if(userservice.pan(stu)==2){//密码错误
                    out.println("2"+a);
                }
                else if(userservice.pan(stu)==3){//无用户
                    out.println("3"+a);
                }
        	}
        	else{
        		out.println("9"+a);;
        	}
        }
        catch(Exception e){
        }
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}