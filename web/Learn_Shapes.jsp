
<!DOCTYPE HTML>
    <HTML itemscope itemtype="https://schema.org/image">
    <head>
        <title> Learn Shapes</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style type="text/css">
 
/******/
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
                            filter:opacity(90%);        
                    }
                    table,tr,td{
                            border-bottom:  1px solid black;
                            background-color: #ffffcc;
                            margin-top: 5%;
                            font-size: 17px;
                            font-family: serif;
                    }            
                    .tablefor2d{
                            margin-left: 30%;
                            align-content: center;
                            text-align: center;
                            font-weight: bold;
                    }
            </style>
    </head>
    <body>
      <iframe src="logo.html" height="100" width="400"  frameBorder="0">></iframe>
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
      <!--<div id="canv">-->
      <table class="tablefor2d">
          <tr>
              <td width="100">
                  Circle
              </td>
              <td width="300">
                   <canvas id="myCanvas1" width="200" height="200" itemprop="ImageObject">
                      Your browser does not support the HTML5 canvas tag.
                  </canvas>
                    <script>
                            var c = document.getElementById("myCanvas1");
                            var circle1 = c.getContext("2d");
                                  circle1.beginPath();
                                  circle1.arc(90,90,70,0,2*Math.PI);
                                  circle1.stroke();
                                  circle1.fillStyle = 'green';
                                  circle1.fill();
                    </script> 
              </td>
              </tr>
              <tr>
                  <td width="200">
                     Square
                  </td>
                  <td width="200">
                            <canvas id="Square" width="200" height="200">
                            Your browser does not support the HTML5 canvas tag.</canvas>
                          <script>
                            var c = document.getElementById("Square");
                            var square1 = c.getContext("2d");
                                  square1.rect(40, 40, 100, 100);
                                  square1.stroke();
                                  square1.fillStyle = '#8ED6FF';
                                  square1.fill();   
                         </script>
                  </td>
              </tr>
              <tr>
                  <td width="200">
                      Triangle
                  </td>
                  <td width="200">
                    <canvas id="myCanvas3" width="300" height="300" itemprop="ImageObject">
	</canvas>
                        <script>
                            var canvasElement = document.querySelector("#myCanvas3");
                            var triangle1 = canvasElement.getContext("2d");
                                  triangle1.beginPath();
                                  triangle1.moveTo(100, 100);
                                  triangle1.lineTo(100, 300);
                                  triangle1.lineTo(300, 300);
                                  triangle1.closePath();
                                  triangle1.strokeStyle = '#666666';
                                  triangle1.stroke();
                            // the fill color
                                  triangle1.fillStyle = "purple";
                                  triangle1.fill();
	</script>
                  </td>
              </tr>
              <tr>
                  <td width="200">
                      Star
                  </td>
                  <td width="200">
                      <canvas id="star" width="200" height="200" itemprop="ImageObject"></canvas>
                      <script>
                                    var star1 = document.getElementById("star").getContext("2d");
                                          star1.fillStyle = "red";
                                        drawStar(star1, 100, 100, 5, 90, 50);
                                        star1.fill();
                                        function drawStar(context, xCenter, yCenter, nPoints, outerRadius, innerRadius) 
                                        {
                                            star1.beginPath();
                                            for (var ixVertex = 0; ixVertex <= 2 * nPoints; ++ixVertex)
                                            {
                                                    var angle = ixVertex * Math.PI / nPoints - Math.PI / 2;
                                                    var radius = ixVertex % 2 == 0 ? outerRadius : innerRadius;
                                                    context.lineTo(xCenter + radius * Math.cos(angle), yCenter + radius * Math.sin(angle));
                                            }
                                        }        
                         </script>
                  </td>
              </tr>
              <tr>
                  <td width="200">
                      Cloud
                  </td>
                  <td width="200">
                      <canvas id="cloud" width="500" height="200"></canvas>
                            <script>
                              var canvas = document.getElementById('cloud');
                              var cloud = canvas.getContext('2d');
                              cloud.beginPath();
                              cloud.moveTo(170, 80);
                              cloud.bezierCurveTo(130, 100, 130, 150, 230, 150);
                              cloud.bezierCurveTo(250, 180, 320, 180, 340, 150);
                              cloud.bezierCurveTo(420, 150, 420, 120, 390, 100);
                              cloud.bezierCurveTo(430, 40, 370, 30, 340, 50);
                              cloud.bezierCurveTo(320, 5, 250, 20, 250, 50);
                              cloud.bezierCurveTo(200, 5, 150, 20, 170, 80);
                              cloud.closePath();
                              cloud.fillStyle = 'white';
                              cloud.fill();
                        </script>
                  </td>
              </tr>
              <tr>
                  <td width="200">
                      Rectangle
                  </td>
                  <td width="200">
                      <canvas id="Rectangle" width="300" height="150" itemprop="ImageObject">
                          Your browser does not support the HTML5 canvas tag.</canvas>
                        <script>
                            var c = document.getElementById("Rectangle");
                            var rectangle = c.getContext("2d");
                            rectangle.rect(70, 70, 130, 100);
                            rectangle.stroke();
                            rectangle.fillStyle = 'orange';
                             rectangle.fill();
                         </script>
                  </td>
              </tr>
              <tr>
                  <td width="200">
                      Rounded Rectangle
                  </td>
                  <td width="200">
	<svg width="400" height="180">     
	  <rect x="100" y="20" rx="20" ry="20" width="150" height="150" style="fill:white; stroke:red; stroke-width:1" />
               	</svg>
                  </td>
              </tr>
    </table>
    </body>
 </HTML>           