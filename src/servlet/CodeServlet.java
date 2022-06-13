package servlet;

import java.awt.Color;

import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 * Servlet implementation class CodeServlet
 */
@WebServlet(name = "Code", value = "/qimo/Code")
public class CodeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // TODO Auto-generated method stub
        //创建空白图片
        BufferedImage image =new BufferedImage(100,30,BufferedImage.TYPE_INT_RGB);
        //获取图片画笔
        Graphics g= image.getGraphics();
        Random r = new Random();
        //设置画笔颜色
        g.setColor(new Color(r.nextInt(255),r.nextInt(255),r.nextInt(255)));
        //设置矩形背景
        g.fillRect(0,0,100,30);
        //设置线条数8
        for(int i=0;i<8;i++){
            g.setColor(new Color(r.nextInt(255),r.nextInt(255),r.nextInt(255)));
            g.drawLine(r.nextInt(255),r.nextInt(255),r.nextInt(255),r.nextInt(255));
        }
        //获取随机字符串  长度位5
        String number = getNumbers(5);
        g.setFont(new Font(null,Font.ITALIC+Font.BOLD,24));
        g.drawString(number,5,25);
        response.setContentType("image/jpeg");
        OutputStream out = response.getOutputStream();
        ImageIO.write(image,"jpeg",out);
        out.close();
    }

    //设定随机参数
    static String linshi;
    public String getNumbers(int size){
        String str="123485697";
        String number="";
        Random r = new Random();
        for(int i=0;i<size;i++){
            char c = str.charAt(r.nextInt(str.length()));
            number = number+c;
        }
        linshi=number;
        return number;
    }
    
    public static String gettos() {
    	String a=linshi;
    	return a;
    }
    
}