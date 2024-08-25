package admin;

import java.io.IOException;
import java.io.PrintWriter;

import p2.Item;
import p3.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import p1.DBConnect;
@WebServlet("/add_items")
public class ItemAdd extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		try {
			
			String iname=req.getParameter("iname");
			String price=req.getParameter("price");
			String img=req.getParameter("img");
			Item i=new Item(iname,price,img);
			ItemDi dao=new ItemDi(DBConnect.getConn());
			PrintWriter out = res.getWriter();
			
			boolean f=dao.ItemAdd(i);
			
			if (f) {
				out.println("1");
				out.println("<html>");
				out.println("<head>");
				
				out.println("</head>");
				out.println("<body>");
				out.println("<h3>Adding Item successful</h3>");
				out.println("</body>");
				out.println("</html>");
				res.sendRedirect("admin/add_items.jsp");
			}
			else {
				out.println("2");
				out.println("<html>");
				out.println("<head>");
				
				out.println("</head>");
				out.println("<body>");
				out.println("<h3>Adding Item Unsuccessful</h3>");
				out.println("</body>");
				out.println("</html>");
				res.sendRedirect("admin/add_items.jsp");
			}
			
			System.out.println(i);
			i.setIname(iname);
			i.setPrice(price);
			i.setimg(img);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
