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
import java.io.OutputStream;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.*;

public class three_image_servlet extends HttpServlet {

	private static final long serialVersionUID = -7137276633333215190L;
    private Object st;
/*
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
                    {

		//response.setContentType("text/html;charset=utf-8");
                        
		doPost(request,response);
	}
*/
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
                    {
   


                        
final String dbURL = "jdbc:mysql://localhost:3306/toywebproject";
    final String dbUser = "Sowmiyaa";
    final String dbPass = "Soso777!!!";

    Connection conn = null;
    Statement stmt = null;
   byte[] imgData=null;
   byte[] imgData1=null;
   byte[] imgData2=null;
    try {
        //DriverManager.registerDriver(new com.mysql.jdbc.Driver());
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
        conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
        System.out.println("db connected");
        stmt = (Statement) conn.createStatement();

        ResultSet rs1;
                String pr_id = request.getParameter("pr_id");
                //System.out.println("SELECT `PD_ProductImage` FROM `product_details` where `PD_ProductID`= '"+pr_id+"';");
                
                rs1=stmt.executeQuery("SELECT `P_Image1`,`P_Image2`,`P_Image3` FROM `imageslide` where `P_ProductID`= '"+pr_id+"';");

               // rs1 = stmt.executeQuery("SELECT `PD_ProductImage` FROM `product_details` where `PD_ProductID`= '"+pr_id+"';");
                 
        
        if (rs1.next()){
            imgData = rs1.getBytes("P_Image1");//Here r1.getBytes() extract byte data from resultSet 
            imgData1=rs1.getBytes("P_Image2");
            imgData2=rs1.getBytes("P_Image3");
            System.out.println(imgData);
            System.out.println(imgData1);
            System.out.println(imgData2);
            response.setHeader("expires", "0");
            response.setContentType("image/jpg");
            //request.setAttribute("img", imgData);
            OutputStream os = response.getOutputStream(); // output with the help of outputStream 
            os.write(imgData);
            os.write(imgData1);
            os.write(imgData2);
            os.flush();
            os.close();
        }
    }catch (SQLException ex) {
        // String message = "ERROR: " + ex.getMessage();
        ex.printStackTrace();
    } finally {
        if (conn != null) {
            // closes the database connection
            try {
                conn.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
    }
    request.setAttribute("img", imgData);
    request.setAttribute("img1", imgData1);
    request.setAttribute("img2", imgData2);
    request.getRequestDispatcher("Image.jsp").forward(request, response);
    request.getRequestDispatcher("Image1.jsp").forward(request, response);
    request.getRequestDispatcher("Image.jsp").forward(request, response);
}    

}

            
         