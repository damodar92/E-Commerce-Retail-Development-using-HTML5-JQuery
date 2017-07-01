
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


public class Rented_Products extends HttpServlet {

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
                             int res;
                                      String pr_id = request.getParameter("pr_id");  
                                      String pr_name = request.getParameter("pr_name");  
                                      String pr_price = request.getParameter("pr_price");  
                                      String br_name = request.getParameter("br_name"); 
                                      System.out.println(request.getSession().getAttribute("username"));
                                      String  username= (String)request.getSession().getAttribute("username");
		
		String sql;
                                      sql = "INSERT INTO `rented_products`(`Username`,`RP_ProductID`,`RP_ProductName`,`RP_ProductPrice`,`RP_BrandName`) VALUES ('"+username+"','"+pr_id+"','"+pr_name+"','"+pr_price+"','"+br_name+"')";
                                      
                                    dbu.update(sql);
                                    PrintWriter out = response.getWriter();  
                                    response.setContentType("text/html");  
                                   out.println("<script type=\"text/javascript\">");  
                                   out.println("alert('Thank you for Shopping with us! Meet you soon!');"); 
                                   out.println("location='All_Products.jsp';");
                                   out.println("</script>");
                }}
