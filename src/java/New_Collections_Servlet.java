

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

public class New_Collections_Servlet extends HttpServlet {

	private static final long serialVersionUID = -7137276633333215190L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		String fsql = "Select * from firstname";
		
		
		DBUtilities dbu = new DBUtilities();
		List<Map<String,String>> flist = dbu.find(fsql);
		
		System.out.println(flist);
		
		
		request.setAttribute("flist", flist);
		
		request.getRequestDispatcher("displayFromDB.jsp").forward(request, response);
	}

}
