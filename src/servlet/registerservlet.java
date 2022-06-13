package servlet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.user;
import service.userservice;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "registerservlet", value = "/qimo/registerservlet")
public class registerservlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public registerservlet() {
        super();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id=request.getParameter("id");
        String password=request.getParameter("password");
        String name=request.getParameter("name");
        String sex=request.getParameter("sex");
        String age=request.getParameter("age");
        String telephone=request.getParameter("telephone");
        String sid=request.getParameter("sid");

        user stu=new user();
        stu.setId(id);
        stu.setPassword(password);
        stu.setName(name);
        stu.setSex(sex);
        stu.setAge(age);
        stu.setTelephone(telephone);
        stu.setSid(sid);

        request.getSession(true).setAttribute("user", stu);

        String contextPath = request.getContextPath();
        
        ServletContext context=request.getServletContext();
		int n=(int)context.getAttribute("count");
    	String a = ""+n;
        PrintWriter out=response.getWriter();
        try {
            if(userservice.InExist(stu)==true) {
            	out.println("4"+n);
//                out.println("你已经注册过了，请直接登录");
//                response.setHeader("refresh","2;url="+contextPath+"/qimo/前端页面.html");
            }
            else {
                if(stu.getPassword().length()>=6){//密码位数大于6
                    if(stu.getTelephone().length()==11){
//                        if(stu.getId().length()==18){
                            userservice.InPut(stu);
//                            out.println("已经注册成功了   嘿嘿");
//                            out.println("3s后跳转到登录界面");
                            out.println("0"+n);
//                            response.setHeader("refresh","2;url="+contextPath+"/qimo/Login.jsp");
//                        }
//                        else
//                            out.println("1");
                    }
                    out.println("3"+n);
                }
                else
                    out.println("2"+n);

            }
        }
        catch(Exception e){
        }
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
