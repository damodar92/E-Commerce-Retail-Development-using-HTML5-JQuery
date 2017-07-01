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
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
           
                <style>
                        .display_products{
                             width: 65%;
                             background-color: #ffffcc;
                             text-decoration:none;
                             margin-left: 18%;
                             margin-top: 25px;
                             padding-bottom: 10px; 
                             
                             border-bottom: 1px solid black;
                            
                         }
                        table,td,tr{
                            border: none;
                            font-size: 14px;
                            
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
                        button{
                            background-color: #ffffcc ; 
                            border: none;
                            color: black;
                            padding: 16px 32px;
                            text-align: center;
                            text-decoration: none;
                            display: inline-block;
                            font-size: 10px;
                            margin: 4px 2px;
                            -webkit-transition-duration: 0.4s;
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
                            
                            }
                </style>
         </head>
         <body > 
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
                <%
                for (int i = 0; i < flist.size(); i++)
                    {
                %>
                <div style="overflow-x:auto;">  
                <table class="display_products" itemprop="Product">
                        <tr>
                            <td><img height= "175" width="175" src="Picture_servlet?pr_id=<%=flist.get(i).get("PD_ProductID")%>"></td>
                            <td width ="380"><b>Product Name: </b><%=flist.get(i).get("PD_ProductName")%><br>
                                                      <b>Price:</b> $ <%=flist.get(i).get("PD_ProductPrice")%><br>
                                                      <b>Brand:</b> <%=flist.get(i).get("PD_BrandName")%><br>
                                                      <b> Description: </b><%=flist.get(i).get("PD_ProductDescription")%>
                            </td>
                            <td width="200"><button onclick= "location.href ='Rented_Products?pr_id=<%=flist.get(i).get("PD_ProductID")%>&pr_name=<%=flist.get(i).get("PD_ProductName")%>&pr_price=<%=flist.get(i).get("PD_ProductPrice")%>&br_name=<%=flist.get(i).get("PD_BrandName")%>'">Rent Now!</button><br>
                                    <button onclick="location.href='three_image_servlet?pr_id=<%=flist.get(i).get("PD_ProductID")%>'">Enlarge Image</button>
                            </td>
                        </tr>
                    </table>
                </div>           
                    <%
                        }
                     %>
             
         </body>
    </html>