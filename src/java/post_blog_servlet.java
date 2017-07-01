
import JavaPackages.DBUtilities;
import JavaPackages.Pagination;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.io.*;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class post_blog_servlet extends HttpServlet {

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
		System.out.println("RegisterServlet.doPost()");
		String blog_content = request.getParameter("content");
                                     String pure = blog_content.trim();
                                     
                                    System.out.println(blog_content+"cc");
                                    
                                    String  username= (String)request.getSession().getAttribute("username");
                                    
                                    //Calendar c = Calendar.getInstance();
                                   // Date sqlDate = null;
                                 //  c.setTime(sqlDate);
                                  //    String now = new Date().toString();
                                    //  System.out.println(request.getSession().getAttribute("username"));
                                      //String  username= (String)request.getSession().getAttribute("username");                                    
                                      //response.sendRedirect("All_Products.jsp"); 
		int res;
		String sql;
                                        sql = "INSERT INTO `blog_post`(`blogpost`, `username`) VALUES ('"+blog_content+"','"+username+"')";
                                       // System.out.println("RegisterServlet.doPost()");
		//sql = "insert into customer(c_id,c_type,c_name,c_address,c_phone,c_email,c_password) values ("+c_id+",'"+type+"','"+username+"','"+address+"','"+tel+"','"+email+"','"+password+"')";
		dbu.update(sql);
                                    
                                   //PrintWriter out = response.getWriter();  
                                 //  response.setContentType("text/html");  
                                   //out.println("<script type=\"text/javascript\">");  
                                   //out.println("alert('Thank you for your review!');"); 
                                   // out.println("location='All_Products.jsp';");
                                   //out.println("</script>");
                                   //response.sendRedirect("http://localhost:8080/Toy_WebProject/View_All_Reviews");
		//out.println("<script>alert('Group Request Invitation Canceled');document.location='All_Products.jsp'</script>");

//response.sendRedirect("Products.jsp"); 
		
	}

}
