

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

public class Forgot_Password_Servlet extends HttpServlet {

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
        String username = request.getParameter("username");
        String SecurityQuestion1 = request.getParameter("SecurityQuestion1");
        String SecurityQuestion2 = request.getParameter("SecurityQuestion2");

        String fsql = "(SELECT `C_Username`,`C_SQA_1`,`C_SQA_2`,`C_Password` FROM `customer_details` where `C_Username`= '"+username+"');";
        DBUtilities dbu = new DBUtilities();
        List<Map<String,String>> flist = dbu.find(fsql);  

         if(flist.size()>0)
        {
             String sq1= flist.get(0).get("C_SQA_1");
             String sq2= flist.get(0).get("C_SQA_2");

            if(SecurityQuestion1.equals(sq1) && SecurityQuestion2.equals(sq2))
            {
                System.out.println(flist);
                request.setAttribute("flist", flist);
                request.getRequestDispatcher("Display_Password.jsp").forward(request, response);
            }
            else
            {
                PrintWriter out = response.getWriter();  
                response.setContentType("text/html");  
                out.println("<script type=\"text/javascript\">");  
                out.println("alert('Username or security answers wrong!');"); 
                out.println("location='http://localhost:8080/Toy_WebProject/Forgot_Password.jsp';");
                out.println("</script>");
            }                 
        }
         else
         {
             PrintWriter out = response.getWriter();  
             response.setContentType("text/html");  
             out.println("<script type=\"text/javascript\">");  
             out.println("alert('Username or security answers wrong!');"); 
             out.println("location='http://localhost:8080/Toy_WebProject/Forgot_Password.jsp';");
             out.println("</script>");
             
         }
    }
}
