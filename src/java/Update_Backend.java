
import JavaPackages.DBUtilities;
import JavaPackages.Pagination;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Update_Backend extends HttpServlet {

	private static final long serialVersionUID = 5071124248205518796L;


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		doPost(request, response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		
		DBUtilities dbu = new DBUtilities();
		String PD_ProductID = request.getParameter("PD_ProductID");
                                    String PD_ProductName = request.getParameter("PD_ProductName");
                                    String PD_ProductPrice = request.getParameter("PD_ProductPrice");
                                    String PD_BrandName = request.getParameter("PD_BrandName");
                                
		int res;
		
                                     String sql = "(INSERT INTO `rented_products`VALUES ('"+PD_ProductID+"','"+PD_ProductName+"','"+PD_ProductPrice+"','"+PD_BrandName+"'))";
                                       // System.out.println("RegisterServlet.doPost()");
		//sql = "insert into customer(c_id,c_type,c_name,c_address,c_phone,c_email,c_password) values ("+c_id+",'"+type+"','"+username+"','"+address+"','"+tel+"','"+email+"','"+password+"')";
		dbu.update(sql);
     
             
             PrintWriter out = response.getWriter();  
response.setContentType("text/html");  
out.println("<script type=\"text/javascript\">");  
out.println("alert('Thank you for Regsitering! Enjoy Shopping!');"); 
 out.println("location='All_Products.jsp';");
out.println("</script>");
		
//response.sendRedirect("Products.jsp"); 
		
	}

}
