import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import JavaPackages.DBUtilities;
import JavaPackages.Pagination;
import static java.lang.System.out;

public class All_Products extends HttpServlet {

	private static final long serialVersionUID = -7137276633333215190L;
    private Object st;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
                    {

                        response.setContentType("text/html;charset=utf-8");
                        doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
                    {

                             response.setContentType("text/html;charset=utf-8");
                             //  String username = request.getParameter("username");
                            //String SecurityQuestion1 = request.getParameter("SecurityQuestion1");
                             String prcat = request.getParameter("prcat");
                             String fsql = "(SELECT `PD_ProductID`,`PD_ProductName`,`PD_ProductPrice`,`PD_BrandName`,`PD_ProductDescription`,`PD_ProductImage` FROM `product_details` where `PD_Product_Category`= '"+prcat+"');";
                             DBUtilities dbu = new DBUtilities();
                             List<Map<String,String>> flist = dbu.find(fsql);  
                                if(flist.size()>0)
                                {
                                    System.out.println(flist);
                                    request.setAttribute("flist", flist);
                                    request.getRequestDispatcher("Cat_Display.jsp").forward(request, response);
                                }
                    }
                
                }
