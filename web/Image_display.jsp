<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	List<Map<String, String>> flist = (List) request.getAttribute("flist");
%>
<!DOCTYPE  HTML>
<html itemscope itemtype="https://schema.org/category">
    <head>
        <base href="<%=basePath%>">
        <title>Category Display</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        
        <style>
            .display_products{
                 
                 float: left;          
                 height:10%;
                 width: 60%;
                 background-color: #ffffcc;
                 text-decoration:none;
                 margin-left: 30%;
                 margin-top: 25px;
                 padding-bottom: 10px; 
                 font: cantaur;
                 font-size: 16px;
                 border-bottom: 1px solid black;
                 padding-left: 10px;
                  
            }
            table,td,tr{
                border: none;
                font-size: 17px;
                font-family: serif;
            }
  
/******/
            .links{
                color:black;
                background-color: #ffffcc;            
                text-decoration: none;
                font-size: 13px;
                align-content: center;
                text-align: center;                
            }
            
            .pages{
                display: inline-block;
                list-style-type: none;
                text-decoration: none;
                position: relative;
                padding: 25px 10px 20px 30px;
                align-content: center;
            }
            
            a:hover{
                    background-color: transparent;
                    height: 0px;    
                 }
               a:link {
                color: black;
                }
                a:visited {
                color: green;
                }
                a:hover {
                color: red;
                }
                a:active {
                color: orange;
                } 
       
          
            button{
                background-color: #ffffcc ; /* Green */
    border: none;
    color: black;
    padding: 16px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 10px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
    box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
    border-radius: 15px;
            }
            button:hover{
     background-color: #4CAF50;
    color: white;
}
body{
  
                    background-attachment:fixed;
            background-image: url("background.png");
                filter:opacity(70%);
         
}
      
        </style>
    </head>
    <body > <br><br><br>
      <!--<iframe src="samplehhttmm.html" height="200" width="300"></iframe>-->
         <nav class="links">
                <ul>
                    <li class="pages"><a href="http://localhost:8080/Toy_WebProject/All_Products.jsp"><strong>Home</strong></a></li>
                    <li class="pages"> <a href ="All_Products?prcat=Boys"><strong>Toys - Boys</strong></a></li>
                    <li class="pages"><a href ="All_Products?prcat=Girls"><strong>Toys - Girls</strong></a></li> 
                    <li class="pages"><a href ="http://localhost:8080/Toy_WebProject/drag_drop.jsp"><strong>Picture Puzzle</strong></a></li> 
                    <li class="pages"><a href="View_All_Reviews"><strong>View all reviews</strong></a></li>
                    <li class="pages"><a href="http://localhost:8080/Toy_WebProject/SVG_cat.jsp"><strong>Play with Cat</STRONG></a></li>
                    <li class="pages"> <a href="http://localhost:8080/Toy_WebProject/AboutUS.jsp"><strong>About Us</strong></a> </li>
                    <li class="pages"> <a href="http://localhost:8080/Toy_WebProject/Order_History_Servlet"><strong>Order History</strong></a></li>            
                    <li class="pages"><a href ="http://localhost:8080/Toy_WebProject/Homepage.jsp"><strong>Logout</strong></a></li>
              </ul> 
            </nav>
         <%
            for (int i = 0; i < flist.size(); i++)
        {
        %>
        <table class="display_products" itemprop="Product">

        <tr>
            <td><img height="200" width="200" src="<%=flist.get(i).get("P_Image1")%>"></td>
            <td align="left"><b><%=flist.get(i).get("P_ProductID")%></b><br><b>Price: $ <%=flist.get(i).get("P_ProductID")%></b>
                <br><b>Brand: <%=flist.get(i).get("P_ProductID")%></b><br><b> Description: <%=flist.get(i).get("P_ProductID")%></b><br></br>
            
           </td>
        </tr>
</table>
        <%
                }
        %>
 
    </body>
</html>