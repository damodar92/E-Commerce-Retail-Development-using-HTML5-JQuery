<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	List<Map<String, String>> flist = (List) request.getAttribute("flist");
%>

<!DOCTYPE  HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <base href="<%=basePath%>">
        <title>Order History</title>    
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script>
$(function() {
    $("td[colspan=3]").find("p").hide();
    $("table").click(function(event) {
        event.stopPropagation();
        var $target = $(event.target);
        if ( $target.closest("td").attr("colspan") > 1 ) {
            $target.slideUp();
            $target.closest("tr").prev().find("td:first").html("+");
        } else {
            $target.closest("tr").next().find("p").slideToggle();
            if ($target.closest("tr").find("td:first").html() == "+")
                $target.closest("tr").find("td:first").html("-");
            else
                $target.closest("tr").find("td:first").html("+");                
        }                    
    });
});
    </script>

        <style>
            .order_history_display{
                float: left;          
                height:10%;
                width: 40%;
                background-color: #ffffcc;
                text-decoration:none;
                margin-left: 30%;
                margin-top: 25px;
                padding-bottom: 10px; 
                border-bottom: 1px solid black;
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
            body{
                background-attachment:fixed;
                background-image: url("background.png");
                filter:opacity(90%);        
            }
            .heading{
                text-align: center;
                font-weight:bold;
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
                    <li class="pages"> <a href="http://localhost:8080/Toy_WebProject/Order_History_Servlet"><strong>Order History</strong></a></li>            
                    <li class="pages"> <a href="http://localhost:8080/Toy_WebProject/AboutUS.jsp"><strong>About Us</strong></a> </li>
                    <li class="pages"><a href ="http://localhost:8080/Toy_WebProject/Login_Page.jsp"><strong>Logout</strong></a></li>                    
              </ul> 
        </nav>
    <p class="heading">Order History</p>
         <%
            for (int i = 0; i < flist.size(); i++)
        {
        %>
        <div>
        <table class="order_history_display">
            <tr><td>+</td><td><p><strong><%=flist.get(i).get("Username")%></strong></p></td><td><p><%=flist.get(i).get("RP_ProductName")%></p></td></tr>
            <tr><td colspan="3"><p> Product ID: <%=flist.get(i).get("RP_ProductID")%> <br> Brand Name: <%=flist.get(i).get("RP_BrandName")%><br>
                    Product Price: $ <%=flist.get(i).get("RP_ProductPrice")%><br></p>
            </td></tr>
        </table>
        </div>

 <%
                }
        %>
    </body>
</html>