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
import nl.captcha.Captcha;

public class Homepage_LoginCheck extends HttpServlet {

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
                                     Captcha captcha = (Captcha)request.getSession().getAttribute(Captcha.NAME);
                                      request.setCharacterEncoding("UTF-8");
                                      String answer = request.getParameter("answer");
                                      
                                      if (captcha.isCorrect(answer))
                                      {
                                            response.setContentType("text/html;charset=utf-8");
                                            String username = request.getParameter("username");
                                            request.getSession().setAttribute("username",username);
                                            String password = request.getParameter("password");
                                            String fsql = "(SELECT `C_Username`,`C_Password` FROM `customer_details` where `C_Username`= '"+username+"' AND `C_Password` = '"+password+"');";

                                            DBUtilities dbu = new DBUtilities();
                                            List<Map<String,String>> list = dbu.find(fsql);

                                            if(list.size()>0)
                                            {
                                                String pwd = list.get(0).get("C_Password");
                                                if(password.equals(pwd))
                                                {
                                                    request.setAttribute("flist", list);
                                                    request.getRequestDispatcher("All_Products.jsp").forward(request, response);
                                                }
                                            }
                                            else
                                            {
                                                PrintWriter out = response.getWriter();  
                                                response.setContentType("text/html");  
                                                out.println("<script type=\"text/javascript\">");  
                                                out.println("alert('Incorrect Username or Password');"); 
                                                out.println("location='http://localhost:8080/Toy_WebProject/Homepage.jsp';");
                                                out.println("</script>");
                                            }
                                      }
                                      else
                                      {
                                         PrintWriter out = response.getWriter();  
                                         response.setContentType("text/html");  
                                         out.println("<script type=\"text/javascript\">");  
                                         out.println("alert('Captha incorrect! Please try again');"); 
                                         out.println("location='http://localhost:8080/Toy_WebProject/Homepage.jsp';");
                                         out.println("</script>");
                                      }   

	}

}
