package p4;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import p1.DBConnect;
import p2.User;
import p3.UserDi;


@WebServlet("/register")


public class RegistrationServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException{
		
		try {
			String name=req.getParameter("fname");
			String email=req.getParameter("email");
			String phno=req.getParameter("phno");
			String password=req.getParameter("password");
			String check=req.getParameter("check");
			
			System.out.println(name+" "+email+" "+phno+" "+password+" "+check);
			
			User us=new User();
			us.setName(name);
			us.setEmail(email);
			us.setPhno(phno);
			us.setPassword(password);
			
			HttpSession session=req.getSession();
			
			if(check!=null) {
			
			UserDi dao=new UserDi(DBConnect.getConn());
			boolean f=dao.userReg(us);
			
			if(f) {
				//System.out.println("User Registration Successful");
				session.setAttribute("succMsg","User Registration Successful");
				res.sendRedirect("index.jsp");
			
			}
			else {
				//System.out.println("Something is wrong");

				session.setAttribute("failedMsg","Something is wrong");
				res.sendRedirect("register.jsp");
				
			}}
			else {
				//System.out.println("Please Check Agree Terms & Conditions");
				session.setAttribute("failedMsg","SPlease Check Agree Terms & Conditions");
				res.sendRedirect("register.jsp");
		}
			
			}
			catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}

}
