<!--<!DOCTYPE  HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>

        <title>Category Display</title>
        <style>
            .display_products{
                 
                 float: left;          
                 height:10%;
                 width: 60%;
                 background-color: transparent;
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
                list-style-type: none;  
                background-color: #ffffcc;            
                text-decoration: none;
                font-size: 14px;
                height: 25px;
                align-content: center;
                
                text-align: center;
                padding-bottom: 20px;                
            }
            
            .pages{
                display: inline-block;
                list-style-type: none;
                text-decoration: none;
                position: relative;
                padding: 25px 10px 20px 30px;
                padding-left: -50px;
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
            background-image: url("background.jpg");
                    background-size: 30%;
                    padding-bottom: 30px;
                filter:opacity(80%);
         
}
.aboutus{
    margin-left: 30%;
    margin-top: 10%;
}

   #div1, #div2 {
    float: left;
    width: 100px;
    height: 35px;
    margin: 10px;
    padding: 10px;
    border: 2px solid black;
}   
        </style>
        
        <script>
function allowDrop(ev) {
    ev.preventDefault();
}

function drag(ev) {
    ev.dataTransfer.setData("text", ev.target.id);
}

function drop(ev) {
    ev.preventDefault();
    var data = ev.dataTransfer.getData("text");
    ev.target.appendChild(document.getElementById(data));
}
</script>
    </head>
    <body> <br><br><br>
      <!--<iframe src="samplehhttmm.html" height="200" width="300"></iframe>-->
    <!--<nav class="links">
            <ul>
                <li class="pages"><a href="http://localhost:8080/Toy_WebProject/All_Products.jsp"><strong>HOME</strong></a></li>
                <li class="pages"> <a href ="All_Products?prcat=Boys"><strong>TOYS - BOYS</strong></a></li>
                <li class="pages"><a href ="All_Products?prcat=Girls"><strong>TOYS - GIRLS</strong></a></li> 
                <li class="pages"><a href ="http://localhost:8080/Toy_WebProject/NumberGame.jsp"><strong>Number Game</strong></a></li> 
                <li class="pages"> <a href="http://localhost:8080/Toy_WebProject/AboutUS.jsp"><strong>ABOUT US</strong></a> </li>
                <li class="pages"> <a href="http://localhost/project/Customer_Order_History.php"><strong>ORDER HISTORY</strong></a></li>            
              <li class="pages"> <a href="http://localhost:8080/Toy_WebProject/Contactus.jsp"><strong>CONTACT US</strong></a></li>            
                <li class="pages"><a href ="http://localhost:8080/Toy_WebProject/Homepage.jsp"><strong>LOGOUT</strong></a></li>
              </ul> 
        </nav>
<div id="div1" ondrop="drop(event)" ondragover="allowDrop(event)">
  <img src="img_w3slogo.gif" draggable="true" ondragstart="drag(event)" id="drag1" width="88" height="31">
</div>

<div id="div2" ondrop="drop(event)" ondragover="allowDrop(event)"></div>
  
    </body>
</html>-->
    
    <!DOCTYPE HTML>
<html>
<head>
    <title>Number Game</title>
<!--<style>
 .display_products{
                 
                 float: left;          
                 height:10%;
                 width: 60%;
                 background-color: transparent;
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
                list-style-type: none;  
                background-color: #ffffcc;            
                text-decoration: none;
                font-size: 14px;
                height: 25px;
                align-content: center;
                
                text-align: center;
                padding-bottom: 20px;                
            }
            
            .pages{
                display: inline-block;
                list-style-type: none;
                text-decoration: none;
                position: relative;
                padding: 25px 10px 20px 30px;
                padding-left: -50px;
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
                    background-size: 30%;
                    padding-bottom: 30px;
                filter:opacity(80%);
         
}
.aboutus{
    margin-left: 30%;
    margin-top: 10%;
}

.drophere{
    margin-top: 4%;
    margin-bottom: 10%;
    float: right;
    border: 1px solid black;
    width: 46%;
    margin-left: 5%;
    height: 500px;

}
.draghere{
    border: 1px solid black;
    width: 46%;
    height: 500px;
    margin-top: 4%;
    margin-bottom: 10%;
    float: left;
    
}
img{
    padding: 5px;  
}
#div1{
    border: 1px solid black;
    width: 15%;
    float: left;
}
#div2{
    border: 1px solid black;
    height: 130px;
    width: 15%;
    float: left;
}
</style>-->
<style>
#div1, #div2 {
    float: left;
    width: 100px;
    height: 35px;
    margin: 10px;
    padding: 10px;
    border: 1px solid black;
}

#div3, #div4 {
    float: left;
    width: 100px;
    height: 35px;
    margin: 10px;
    padding: 10px;
    border: 1px solid black;
}

#div5, #div6 {
    float: left;
    width: 100px;
    height: 35px;
    margin: 10px;
    padding: 10px;
    border: 1px solid black;
}
</style>
<script>
function allowDrop(ev) {
    ev.preventDefault();
}

function drag(ev) {
    ev.dataTransfer.setData("text", ev.target.id);
}

function drop(ev) {
    ev.preventDefault();
    var data = ev.dataTransfer.getData("text");
    ev.target.appendChild(document.getElementById(data));
}
</script>
</head>
<body>
    <br><br><br>
    <nav class="links">
            <ul>
                <li class="pages"><a href="http://localhost:8080/Toy_WebProject/All_Products.jsp"><strong>HOME</strong></a></li>
                <li class="pages"> <a href ="All_Products?prcat=Boys"><strong>TOYS - BOYS</strong></a></li>
                <li class="pages"><a href ="All_Products?prcat=Girls"><strong>TOYS - GIRLS</strong></a></li> 
                <li class="pages"><a href ="http://localhost:8080/Toy_WebProject/NumberGame.jsp"><strong>Number Game</strong></a></li> 
                <li class="pages"> <a href="http://localhost:8080/Toy_WebProject/AboutUS.jsp"><strong>ABOUT US</strong></a> </li>
                <li class="pages"> <a href="http://localhost/project/Customer_Order_History.php"><strong>ORDER HISTORY</strong></a></li>            
              <li class="pages"> <a href="http://localhost:8080/Toy_WebProject/Contactus.jsp"><strong>CONTACT US</strong></a></li>            
                <li class="pages"><a href ="http://localhost:8080/Toy_WebProject/Homepage.jsp"><strong>LOGOUT</strong></a></li>
              </ul> 
        </nav>
<!--<div class="draghere">
    <div id="div1" ondrop="drop(event)" ondragover="allowDrop(event)">
        <img src="1.jpg" draggable="true" ondragstart="drag(event)" id="drag1" width="60" height="120"><br>
    </div>
     <div id="div2" ondrop="drop(event)" ondragover="allowDrop(event)">
        <img src="2.jpg" draggable="true" ondragstart="drag(event)" id="drag1" width="60" height="120"><br>
     </div>
</div>
<div class="drophere">
<div id="div3" ondrop="drop(event)" ondragover="allowDrop(event)"></div>
<div id="div4" ondrop="drop(event)" ondragover="allowDrop(event)"></div>
</div>-->
<!-- Number1-->
<div id="div1" ondrop="drop(event)" ondragover="allowDrop(event)">
  <img src="1.jpg" draggable="true" ondragstart="drag(event)" id="drag1" width="88" height="31">
</div>

<div id="div2" ondrop="drop(event)" ondragover="allowDrop(event)"></div>
<!-- Number2-->
<div id="div3" ondrop="drop(event)" ondragover="allowDrop(event)">
  <img src="2.jpg" draggable="true" ondragstart="drag(event)" id="drag2" width="88" height="31">
</div>

<div id="div4" ondrop="drop(event)" ondragover="allowDrop(event)"></div>
<!-- Number3-->
<div id="div5" ondrop="drop(event)" ondragover="allowDrop(event)">
  <img src="3.jpg" draggable="true" ondragstart="drag(event)" id="drag3" width="88" height="31">
</div>

<div id="div6" ondrop="drop(event)" ondragover="allowDrop(event)"></div>
<!--- End Number 3-->

</body>
</html>
