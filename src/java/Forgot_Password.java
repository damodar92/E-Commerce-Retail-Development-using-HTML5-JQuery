
import JavaPackages.DBUtilities;
import JavaPackages.Pagination;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;
import static java.lang.System.out;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Forgot_Password extends HttpServlet {

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
		//System.out.println("RegisterServlet.doPost()");
		String username = request.getParameter("username");
                                      String password = request.getParameter("password");
                                      String firstname = request.getParameter("firstname");
                                      String lastname = request.getParameter("lastname");
                                      String email = request.getParameter("email");
                                      String usrtel = request.getParameter("usrtel");
                                      String SecurityQuestion1 = request.getParameter("SecurityQuestion1");
                                      String SecurityQuestion2 = request.getParameter("SecurityQuestion2");
                                
		int res;
		String sql;
                                        sql = "INSERT INTO `customer_details`(`C_Username`,`C_Password`,`C_FirstName`,`C_LastName`,`C_Email`,`C_MobileNumber`,`C_SQA_1`,`C_SQA_2`) VALUES ('"+username+"','"+password+"','"+firstname+"','"+lastname+"','"+email+"','"+usrtel+"','"+SecurityQuestion1+"','"+SecurityQuestion2+"')";
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
