
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


public class Order_History_Servlet extends HttpServlet {

	private static final long serialVersionUID = 5071124248205518796L;


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		doPost(request, response);
	}
                public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
                               System.out.println(request.getSession().getAttribute("username"));
                                      String  username= (String)request.getSession().getAttribute("username");
  String fsql = "(SELECT `Username`,`RP_ProductID`,`RP_ProductName`,`RP_ProductPrice`,`RP_BrandName`FROM `rented_products` where `Username`= '"+username+"');";
                      DBUtilities dbu = new DBUtilities();
	   List<Map<String,String>> flist = dbu.find(fsql);  
                      if(flist.size()>0)
                        {   
                            System.out.println(flist);
                            request.setAttribute("flist", flist);
                            request.getRequestDispatcher("Order_History.jsp").forward(request, response);
                        }
                      else
                      {
                            PrintWriter out = response.getWriter();  
                            response.setContentType("text/html");  
                            out.println("<script type=\"text/javascript\">");  
                            out.println("alert('No orders placed yet to display');"); 
                            out.println("location='http://localhost:8080/Toy_WebProject/All_Products.jsp';");
                            out.println("</script>");
                      }
                }
        
}
