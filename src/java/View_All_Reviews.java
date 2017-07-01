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

public class View_All_Reviews extends HttpServlet {

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
                                     //String pr_id = request.getParameter("pr_id");
		
		
                String fsql1= "(SELECT `blogid`,`blogpost`, `username` FROM `blog_post` ORDER BY blogid DESC);";
                      DBUtilities dbu1 = new DBUtilities();
	List<Map<String,String>> flist1 = dbu1.find(fsql1);  
                 if(flist1.size()>0)
                {
                    System.out.println(flist1);
	request.setAttribute("flist", flist1);
	
	request.getRequestDispatcher("View_All_Reviews.jsp").forward(request, response);
                }
	}

}
