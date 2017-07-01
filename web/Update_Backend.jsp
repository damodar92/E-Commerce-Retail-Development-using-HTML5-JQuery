<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	List<Map<String, String>> flist = (List) request.getAttribute("flist");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Backend</title>
    </head>
    <body>
      <%
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String zipcode = request.getParameter("zipcode");
        
         try{ 
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/toywebproject","Sowmiyaa","Soso777!!!");
         Statement st = con.createStatement();
         st.executeUpdate("INSERT INTO address(Name,Address,City,State,Zipcode) VALUES('"+name+"','"+address+"','"+city+"','"+state+"','"+zipcode+"')");
         out.println("Data Inserted succesfully!!!");
         %>
         
         <br>
         <a href="http://localhost:8080/WebtechAssignment6/index.jsp">Click to HomePage</a>
         
         <% }catch(Exception e){
         out.println(e);    
         }
         %>
             </body>
</html>
