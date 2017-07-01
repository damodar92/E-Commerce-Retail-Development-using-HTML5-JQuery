<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	List<Map<String, String>> flist = (List) request.getAttribute("flist");
%>
<!DOCTYPE HTML>
<html lang="en">
    <head>
        <base href="<%=basePath%>">
        <title>Customer Reviews</title>
        <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <style>
              body{
    background-attachment:fixed;
    background-image: url("background.png");
    filter:opacity(70%);        
}
   .links{/*All the navigation links*/
                        color:black;
                        background-color: #ffffcc;            
                        text-decoration: none;
                        font-size: 13px;
                        align-content: center;
                        text-align: center;                
                    }

                    .pages{/*All the navigation links*/
                        display: inline-block;
                        list-style-type: none;
                        text-decoration: none;
                        position: relative;
                        padding: 25px 5px 20px 20px;
                        align-content: center;
                    }
                    a:hover{
                            background-color: transparent;
                            height: 0px;    
                            color: red;
                         }

            table,td,tr{
               
               background-color: #ffffcc;
               border: 1px solid black;
               padding: 5px;
               
            }
             
            .allReviews{
                align-content: center;
                column-width: 100%;
                height: auto;
                margin-left: 20%;
                margin-bottom: 2%;
                
            }
            .tableclass{
                float:right;
                margin-right: 20%;
                
            }
            .writereview{
                float: left;
                top: 280px;
                right: 0px;
                
                
                margin-right: 5%;
            }
               .signupbut{/*Form styling for signup button*/
                    background-color: #ffffcc ; 
                     height: 40px;
                     width: 150%;
                  border: none;
                    color: black;
                    text-align: center;
                    text-decoration: none;
                  font-size: 13px;
                    margin: 4px 2px;
                    -webkit-transition-duration: 0.2s;
                    transition-duration: 1s;
                    cursor: pointer;
                    box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
                    border-radius: 35px;
                    }
                    .signupbut:hover{/*Form styling for signup button*/
                    background-color: #4CAF50;
                    }
        </style>
    </head>
    <body>
        <iframe src="logo.html" height="100" width="400" style="border:none;"></iframe>
             <nav class="links">
                <ul>
                    <li class="pages"><a href="http://localhost:8080/Toy_WebProject/All_Products.jsp"><strong>Home</strong></a></li>
                    <li class="pages"> <a href ="All_Products?prcat=Boys"><strong>Toys - Boys</strong></a></li>
                    <li class="pages"><a href ="All_Products?prcat=Girls"><strong>Toys - Girls</strong></a></li> 
                    <li class="pages"><a href ="http://localhost:8080/Toy_WebProject/drag_drop.jsp"><strong>Picture Puzzle</strong></a></li> 
                    <li class="pages"><a href="http://localhost:8080/Toy_WebProject/SVG_cat.jsp"><strong>Play with Mickey</STRONG></a></li>
                    <li class="pages"><a href="http://localhost:8080/Toy_WebProject/Learn_Shapes.jsp"><strong>Learn Shapes</strong></a></li>
                    <li class="pages"><a href="View_All_Reviews"><strong>Reviews</strong></a></li>
                    <li class="pages"><a href="http://localhost:8080/Toy_WebProject/Order_History_Servlet"><strong>Order History</strong></a></li>            
                    <li class="pages"><a href="http://localhost:8080/Toy_WebProject/AboutUS.jsp"><strong>About Us</strong></a> </li>
                    <li class="pages"><a href ="http://localhost:8080/Toy_WebProject/Login_Page.jsp"><strong>Logout</strong></a></li>                    
              </ul> 
            </nav>
        <div class="writereview">
            <button class= "signupbut" onclick ="location.href = 'http://localhost:8080/Toy_WebProject/Cust_Review.jsp'" >Write your review...</button>
        </div>
        
        
              <%
            for (int i = 0; i < flist.size(); i++)
        {
        %>
        <div class="tableclass">
        <table class="allReviews" itemprop="Product">

        <tr>
            <td width ="120">Review ID: <%=flist.get(i).get("blogid")%></td>
            <td width = "150">Submitted by: <br> <strong><%=flist.get(i).get("username")%></strong></td>
            <td width = "400"><%=flist.get(i).get("blogpost")%></td>
        </tr>
        </table>
        </div>
            
        <%
                }
        %>
        
    </body>
</html>