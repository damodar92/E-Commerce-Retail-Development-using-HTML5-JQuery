<!DOCTYPE  HTML>
<html itemscope itemtype="https://schema.org/category">
    <head>
        <title>SVG-Mickey!</title>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
            
        <style>
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
                    .pink-eyes .eye-color{
                      fill: pink; 
                    }
                    .sad .mouth{
                      transform: rotate(180deg) scale(.5);
                      transform-origin: 340px  390px;
                    }
                    .angry .mouth{
                      transform: scale(.5);
                      transform-origin: 340px 390px;
                      transform-style:preserve-3d;

                    }
                    @keyframes moveEyes{

                      20%{
                          transform:translate(-18px,-20px);
                      }
                      40%{
                          transform: translate(0,0);
                      }
                      65%{
                          transform: translate(18px,-20px);
                      }
                      80%{
                          transform: translate(18px,-10px);
                      }
                    }
                    .move-around .inner-eye-group{
                      animation: moveEyes 5s infinite;
                    }

                    @keyframes leftWhiskers{
                       20%{
                          transform: rotate(5deg);
                      }

                      65%{
                          transform: rotate(-15deg);
                      }
                    }
                    .move-around .left-whiskers{
                      animation: leftWhiskers 5s infinite;
                      transform-origin: 325px 350px;
                    }
                    @keyframes rightWhiskers{
                       10%{
                          transform: rotate(-7deg);
                      }

                      65%{
                          transform: rotate(10deg);
                      }
                    }
                    .move-around .right-whiskers{
                      animation: rightWhiskers 5s infinite;
                      transform-origin: 305px 350px;
                    }

                    @keyframes move{
                      20%{
                          transform: rotateY(10deg) rotateX(10deg); 
                      }
                      40%{
                          transform: rotateY(25deg) rotateX(10deg); 
                      }
                      60%{
                          transform: rotateY(-10deg) rotateX(-10deg); 
                      }
                      70%{
                          transform: rotateX(-20deg) rotateY(-24deg);
                      }
                      80%{
                          transform: rotateY(-10deg) rotateX(-16deg); 

                      }
                    }
                    .move-around {
                      animation: move 8s infinite;
                    }
                    .svg-container{
                      perspective: 300px;
                    }
                    body{

                          background-attachment:fixed;
                    background-image: url("background.png");
                      filter:opacity(90%);

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
                    float: right;
                    }
                    button:hover{
                    background-color: #4CAF50;
                    color: white;
                    }
        </style>
    </HEAD>
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
            
        <div class="buttons">
            <button data-add="pink-eyes">Pink eyes</button><br>
            <button data-remove="pink-eyes">Green eyes</button><br>
            <button data-add="sad">Sad</button><br>
            <button data-remove="sad">Happy</button><br>
            <button data-add="move-around">Change Perspective</button><br>
            <button data-remove="move-around">Stay Still</button><br>
        </div>
        <div class="svg-container">
        <svg class="mickey" width="800" height="500" >
        <path d="m119.00002,184.5c0,0 11.25,-157.50001 -36,-164.25001c-47.25,-6.75
              156,15.75001 159.75,96.00001c3.75,80.25 29.25,-16.5
              137.25,-11.25c108.00001,5.25 53.25001,-111.75001
              84.00001,-99.00001l30.24997,12.00001c0,0 81.5003,17.25
              44.00003,125.25c-37.5,108 -20.25,174.75 -20.75003,174.75c-0.50003,0
              47.75003,120.75 79.25003,123.75c31.5,3 -129,-5.25 -132.75,-3c-3.75,2.25
              -24.75,22.50001 -77.25001,27.75001c-52.5,5.25 -167.25,-48.00001
              -167.75002,-48.00001c-0.50002,0 -152.49998,35.25001
              -153,35.25c-0.50002,-0.00001 116.75002,-83.25 108.50002,-107.25c-8.25,-24
              -89.25,-87 -71.25,-120.75c18,-33.75 15.75,-41.25 15.75,-41.25z" stroke-linecap="null" stroke-linejoin="null"
              stroke-dasharray="null" stroke-width="5" stroke="#000000" fill="#FF8C00"/>
        <g transform="rotate(-10 382.4999999999998,240.999999999974)">
        <ellipse fill="#ffffff" stroke-width="0" stroke-dasharray="null"
                 stroke-linejoin="null" stroke-linecap="null" cx="382.5" cy="240.9998" rx="56.50162" ry="84.75243" 
                 transform="rotate(10382.500000000002,240.99996948242193)" stroke="#000000" />
        <g class="inner-eye-group">
            <ellipse class="eye-color" fill="#1b6811" stroke="#00000" stroke-width="0" stroke-dasharray="null" 
                     stroke-linecap="null" stroke-linejoin="null" cx="382.38001" cy="286.68047" rx="31" ry="35"/>
            <ellipse fill="#ffffff" stroke="#00000" stroke-width="0" stroke-dasharray="null" 
                     stroke-linecap="null" stroke-linejoin="null" cx="380.38001" cy="303.68047" rx="6" ry="6"/>
            </g>
        </g>
        <g>
       <ellipse fill="#ffffff" stroke-width="0" stroke-dasharray="null"
                 stroke-linejoin="null" stroke-linecap="null" cx="274.11999" cy="239.31951" rx="56.50162" ry="84.75243" 
                 transform="rotate(10274.1199951171879,239.31950378417977)" stroke="#000000" /> 
       <g class="inner-eye-group">
            <ellipse class="eye-color" fill="#1b6811" stroke="#00000" stroke-width="0" stroke-dasharray="null" 
                     stroke-linecap="null" stroke-linejoin="null" cx="274" cy="285" rx="31" ry="35"/>
            <ellipse fill="#ffffff" stroke="#00000" stroke-width="0" stroke-dasharray="null" 
                     stroke-linecap="null" stroke-linejoin="null" cx="272" cy="302" rx="6" ry="6"/>
            </g>
            </g>
            <path d="m295,337c2,2 25,-39 64,-7c39,32 8,13 -21,31c-29,18 -45,-26 -43,-24z" 
            fill="#fcbfdb" stroke="#00000" stroke-width="0" stroke-dasharray="null" 
                     stroke-linecap="null" stroke-linejoin="null"/>
            <path class="mouth" stroke="#000000" stroke-width="0" 
                  d="m248.03582,375.86192c26.65347,15.01979 95.78592,70.09234
                  209.06318,-1.66887c113.27726,-71.7612 0,10.84762 0,10.84762c0,0
                  -138.26489,80.93996 -214.89363,-1.66887c-76.62874,-82.60883 -20.82303,-22.52968
                  5.83045,-7.50989l0,0.00001z" fill="#000000" stroke-width="0" stroke-dasharray="null" 
                  stroke-linecap="null" stroke-linejoin="null"/>
            <g class="left-whiskers">
            <line x1="297" y1="353" x2="100" y2="301" fill="null" stroke="black" stroke-dasharray="null" 
                     stroke-linecap="null" stroke-linejoin="null"/>
            <!-- Middle  stroke--> 
            <line  x1="100" y1="344" x2="300" y2="358" fill="none" stroke="black" stroke-dasharray="null" 
                     stroke-linecap="null" stroke-linejoin="null"/>
            <line x1="105" y1="344" x2="300" y2="358" fill="none" stroke="black" stroke-dasharray="null" 
                     stroke-linecap="null" stroke-linejoin="null"/>
            </g>
              <g class="right-whiskers">
            <line x1="361" y1="354" x2="571" y2="296"   fill="null" stroke="black" stroke-dasharray="null" 
                     stroke-linecap="null" stroke-linejoin="null"/>
            <line x1="556" y1="373" x2="363" y2="364" fill="none" stroke="black" stroke-dasharray="null" 
                     stroke-linecap="null" stroke-linejoin="null"/>
            </g>
            
        </svg>
        </div>
           <script>
            var btns = document.querySelectorAll(".buttons button");
            var cat = document.getElementsByClassName("mickey")[0];
            for(i=0;i<btns.length;i++)
            {
                btns[i].addEventListener("click", manageMickeyClasses);
            }
            function manageMickeyClasses()
            {
               if(this.getAttribute("data-add"))
             {
                cat.classList.add(this.getAttribute("data-add"));
            }
           if(this.getAttribute("data-remove"))
             {
                cat.classList.remove(this.getAttribute("data-remove"));
            }     
        
        
        //alert("testing");
            }
            </script>
    </body>
</html>