package filter;
import javax.servlet.ServletContext;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

@WebListener
public class SessionListener implements HttpSessionListener {
	private static int count=0;
	
    public SessionListener() {}
    
	public void sessionCreated(HttpSessionEvent hse)  { 
         count++;
         HttpSession session=hse.getSession();
         session.setMaxInactiveInterval(10);
         ServletContext context=session.getServletContext();
         context.setAttribute("count", count);
    }
	
    public void sessionDestroyed(HttpSessionEvent hse)  { 
         count--;
         HttpSession session=hse.getSession();
         session.setMaxInactiveInterval(10);
         ServletContext context=session.getServletContext();
         context.setAttribute("count",count);
    }
}