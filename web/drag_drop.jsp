<!DOCTYPE html>
<html itemscope itemtype="https://schema.org/Game">
    <head>
        <title>Picture Puzzle</title>
        <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style>
                body{
                background: #303030;
                }
                h1 {
                color: #CA7218;
                text-align: center;
                }
                #ddpuzzle {/*main box*/
                margin: 20px auto;
                width: 450px;
                background-color: #ffffcc;
                color: #ccc;
                padding: 20px;
                border-radius: 10px;
                overflow: hidden;
                margin-top: 5%;
                }
                #ddpuzzleMain {/*main box*/
                margin: 20px auto;
                width: 450px;
                background-color: #ffffcc;
                color: #ccc;
                padding: 20px;
                border-radius: 10px;
                overflow: hidden;
                margin-top: 5%;
                }
                #ddpuzzle1
                {
                background: #ffffcc;
                width: 200px;
                height: 200px;
                float: left;
                margin-left: 10px;
                box-shadow: 0px 0px 10px  2px #d0eb6a;
                }
                
                #ddpuzzleNum
                {
                background: #ffffcc;
                width: 200px;
                height: 200px;
                float: left;
                margin-left: 10px;
                box-shadow: 0px 0px 10px  2px #d0eb6a;
                }
                #puzzle {
                background: #d0eb6a;
                width: 200px;
                height: 200px;
                float: right;
                margin-right: 10px;
                }
                #puzzleNum {
                background: #d0eb6a;
                width: 200px;
                height: 200px;
                float: right;
                margin-right: 10px;
                }
                .ddpuzzle3 {
                width: 100px;
                height: 100px;
                float: left;
                }
                .ddpuzzle4 {
                width: 100px;
                height: 100px;
                float: left;
                }
                #ddpuzzle img {
                float: left;
                padding: 1px;
                width: 98px;
                height: 98px;
                }
                
                #ddpuzzleMain img {
                float: left;
                padding: 1px;
                width: 98px;
                height: 98px;
                }
                table,td,tr{
                    border: none;
                    font-size: 17px;
                    font-family: serif;
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


                button:hover{
                    background-color: #4CAF50;
                    color: white;
                }
                body{

                    background-attachment:fixed;
                    background-image: url("background.png");
                    
                    }
                .headerimage{
                align-items: center;
                align-content: center;
                font-size: 25px;
                font-style: italic;
                font: cantaur;
                }
                .paragragh{
                    align-content: center;
                    text-align: center;
                    font-weight: bold;
                    font-size: 20px;
                }
        </style>
        <script>

                    function start(e) {
                            e.dataTransfer.effecAllowed = 'move'; 
                            e.dataTransfer.setData("Text", e.target.id); 
                            e.target.style.opacity = '0.4'; 
                    }

                    function end(e){
                            e.target.style.opacity = ''; 			
                            e.dataTransfer.clearData("Data");			
                    }

                    function enter(e) {
                            return true;
                    }

                    function over(e) {
                            if ((e.target.className == "ddpuzzle3") || (e.target.id == "ddpuzzle1"))
                                    return false;
                            else
                                    return true;
                    }

                    function drop(e){
                            e.preventDefault(); 
                            var valueOne = e.dataTransfer.getData("Text");
                            e.target.appendChild(document.getElementById(valueOne)); 
                            ddpuz();
                    }

                    function ddpuz(){
                            if((document.getElementById('piece1').parentNode.id=='one') &&
                                    (document.getElementById('piece2').parentNode.id=='two') &&
                                    (document.getElementById('piece3').parentNode.id=='three') &&
                                    (document.getElementById('piece4').parentNode.id=='four'))
                            {
                                    alert('Success!');
                            }
                    }
                    function startFunc() {
                            if( 
                                    (navigator.userAgent.toLowerCase().indexOf('msie ') > -1) || 
                                    ((navigator.userAgent.toLowerCase().indexOf('safari') > -1) && (navigator.userAgent.toLowerCase().indexOf('chrome') == -1)))
                            {
                                    alert("Your browser does not support HTML5's Drag & Drop function");
                            }

                    }
            </script>
            
    </head>

<body onload="startFunc();"><iframe src="logo.html" height="100" width="400" style="border:none;"></iframe>
    
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
         <p class="paragragh"><br>
             Babiessss... Try to fit the pieces correctly to form a complete image!<br>
             Drag the image from the left box to the green box.
         </p>
	<section id="ddpuzzle">
		<div id="ddpuzzle1" ondragenter="return enter(event)" ondragover="return over(event)" ondrop="return drop(event)">
			<img itemprop="gameItem image" id="piece3" src="piece3.jpg" alt="piece3" draggable="true" ondragstart="start(event)" ondragend="end(event)">
			<img itemprop="gameItem image" id="piece2" src="piece2.jpg" alt="piece2" draggable="true" ondragstart="start(event)" ondragend="end(event)">
			<img itemprop="gameItem image" id="piece4" src="piece4.jpg" alt="piece4" draggable="true" ondragstart="start(event)" ondragend="end(event)">
			<img itemprop="gameItem image" id="piece1" src="piece1.jpg" alt="piece1" draggable="true" ondragstart="start(event)" ondragend="end(event)">
		</div>
		<div id="puzzle">
			<div itemprop="gameItem image" class="ddpuzzle3" id="one" ondragenter="return enter(event)" ondragover="return over(event)" ondrop="return drop(event)"></div>
			<div itemprop="gameItem image" class="ddpuzzle3" id="two" ondragenter="return enter(event)" ondragover="return over(event)" ondrop="return drop(event)"></div>
			<div itemprop="gameItem image" class="ddpuzzle3" id="three" ondragenter="return enter(event)" ondragover="return over(event)" ondrop="return drop(event)"></div>
			<div itemprop="gameItem image" class="ddpuzzle3" id="four" ondragenter="return enter(event)" ondragover="return over(event)" ondrop="return drop(event)"></div>
		</div>	
	</section>
         <p class="paragragh"><br><b>Click Refresh to play again !!!</b> </p>

        
</body>
</html>