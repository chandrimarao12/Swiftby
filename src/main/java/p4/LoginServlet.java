package p4;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import p1.DBConnect;
import p3.UserDi;
import p2.User;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		
		try {
			UserDi dao=new UserDi(DBConnect.getConn());
			HttpSession session=req.getSession();
			
			
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		//System.out.println(email+" "+password);
		if("admin@gmail.com".equals(email) && "admin".equals(password)) {
			
			User us= new User();
			session.setAttribute("userobj",us);
			res.sendRedirect("admin/add.html");
		}
		else {
			User us= dao.login(email,password);
			
			if(us!=null){
				res.sendRedirect("index.jsp");
				
			}else {
				res.sendRedirect("login.jsp");
			}
			res.sendRedirect("home.jsp");  
			
		}
		
		
	} catch (Exception e) {
		
		
		e.printStackTrace();
	}		
		}


	}
