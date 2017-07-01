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

public class Display_images_servlet extends HttpServlet {

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
                                      String pr_id = request.getParameter("pr_id");
                                    //  System.out.println("pr_id");
		
	
                String fsql = "(SELECT `P_Image1`,`P_Image2`,`P_Image3` FROM `imageslide` where `P_ProductID`= '"+pr_id+"');";
                      DBUtilities dbu = new DBUtilities();
	List<Map<String,String>> flist = dbu.find(fsql);  
                 if(flist.size()>0)
                {
                    System.out.println(flist);
	request.setAttribute("flist", flist);
	
	request.getRequestDispatcher("Image_display.jsp").forward(request, response);
                }
	}

}
