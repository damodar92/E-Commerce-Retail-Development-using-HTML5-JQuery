<!DOCTYPE HTML>
    <HTML>
    <head>
        <title> All Products</title>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
                <style type="text/css">
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
                            background-image: url("background.png");
                            background-attachment:fixed;
                            
                    }

                     .animate{/*animation for slide show*/
                     -webkit-animation:fading 10s infinite;
                     animation:fading 10s infinite;
                     }

                     .allslides{
                     margin-left: 28%;
                     align-content: center;
                     margin-bottom: 1%;
                     margin-top: 2%;
                     }
                    .container{ /*container class for number count*/
                     
                     margin-bottom: 2%;   
                     align-content: center;
                     text-align: center;
                     }
                     .colsforcount{/* each column for the count*/
                     float: left;
                     margin-left: 7%;
                     margin-top: 4%;
                     filter:opacity(70%);
                     }
                     .count{  /*number count*/
                     font-size:30px;
                     font: cantaur;
                     text-align: center;
                     }
                     .peoplecount{/*division name for each count*/
                     font-size: 21px;
                     font: cantaur;    
                     font-weight: bold;
                     margin-left: -30%;
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
            <div class="allslides" style="max-width:300px">     
                <img class="mySlides animate" src="Caterpillar.jpg" style="width:200%">
                <img class="mySlides animate" src="Lion2.jpg" style="width:200%">
                <img class="mySlides animate" src="Puppy.jpg" style="width:200%">
                <img class="mySlides animate" src="stand2.jpg" style="width:200%">
                <img class="mySlides animate" src="SoccerBall.jpg" style="width:200%"> 
            </div>
            <script>
                var myIndex = 0;
                slideshow();

                function slideshow() {
                    var i;
                    var x = document.getElementsByClassName("mySlides");
                    for (i = 0; i < x.length; i++) {
                      x[i].style.display = "none";
                    }
                    myIndex++;
                    if (myIndex > x.length) {myIndex = 1}
                    x[myIndex-1].style.display = "block";
                    setTimeout(slideshow, 2000);
                }
            </script>     
            <div class="container">
                <div class="colsforcount">
                    <div class="peoplecount">Satisfied Clients</div>
                        <div>
                            <svg height="200" width="300">
                                <defs>
                                    <linearGradient id="grad1" x1="0%" y1="0%" x2="100%" y2="0%">
                                        <stop offset="0%" style="stop-color:rgb(255,255,153);stop-opacity:1" />
                                        <stop offset="100%" style="stop-color:rgb(255,255,204);stop-opacity:1" />
                                    </linearGradient>
                                </defs>
                                <ellipse cx="100" cy="70" rx="85" ry="55" fill="url(#grad1)" />
                                    <text class="count" x="70" y="75">2134</text>
                            </svg>
                        </div>
                </div>
                <div class="colsforcount">       
                    <div class="peoplecount">States Served</div>
                        <div>
                            <svg height="200" width="300">
                                <defs>
                                    <linearGradient id="grad1" x1="0%" y1="0%" x2="100%" y2="0%">
                                        <stop offset="0%" style="stop-color:rgb(255,255,153);stop-opacity:1" />
                                        <stop offset="100%" style="stop-color:rgb(255,255,204);stop-opacity:1" />
                                    </linearGradient>
                                </defs>
                                <ellipse cx="100" cy="70" rx="85" ry="55" fill="url(#grad1)" />
                                <text class="count" x="85" y="75">48</text>
                            </svg>
                        </div>
                </div>
                <div class="colsforcount">         
                    <div class="peoplecount">Toys Rented</div>
                        <div>
                            <svg height="200" width="300">
                                <defs>
                                    <linearGradient id="grad1" x1="0%" y1="0%" x2="100%" y2="0%">
                                        <stop offset="0%" style="stop-color:rgb(255,255,153);stop-opacity:1" />
                                        <stop offset="100%" style="stop-color:rgb(255,255,204);stop-opacity:1" />
                                    </linearGradient>
                                 </defs>
                                 <ellipse cx="100" cy="70" rx="85" ry="55" fill="url(#grad1)" />
                                <text class="count" x="70" y="75">7465</text>
                            </svg>
                        </div>         
                </div>
                <script>
                    $('.count').each(function () {
                        $(this).prop('Counter',0).animate({
                            Counter: $(this).text()
                        }, {
                            duration: 4000,
                            easing: 'swing',
                            step: function (now) {
                                $(this).text(Math.ceil(now));
                            }
                        });
                    });
                </script>
            </div>
            <audio autoplay>
                <source src="Toy_Audio.ogg" type="audio/ogg">
                <source src="Toy_Audio.m4a" type="audio/mpeg">
                Your browser does not support the audio element.
            </audio>        
        </body>
</html>