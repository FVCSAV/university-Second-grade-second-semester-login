package servlet;

import javax.servlet.*;

import javax.servlet.http.*;

import bean.user;

import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

import service.userservice;
import servlet.*;

@WebServlet(name = "wangji",value = "/qimo/wangji")
public class wangji extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public wangji() {
        super();
    }
    static String a;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id=request.getParameter("id");
        String password=request.getParameter("password");
        String pwx=request.getParameter("pwx");
        String pwx1=request.getParameter("pwx1");
        String Code=request.getParameter("Code");
        
        a=pwx;
        		
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
        		if(userservice.pan(stu)==1) {//成功登录
                   if(pwx.equals(pwx1)){
                	   if(userservice.xiu(stu))
                		   out.println("0"+a);
                	   else {
                		   out.println("没成功");
                	   }
                    }
                   else
                	   out.println("8"+a);
                }
                else if(userservice.pan(stu)==2){//旧密码错误
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
    public static  String getpwx() {
    	return a;
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}