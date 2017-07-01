<!DOCTYPE html>
<html>
    <head>
        <title>Trial number game</title>
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

                        #ddpuzzle {
                                margin: 20px auto;
                                width: 450px;
                                background: rgba(20,20,20,0.8);
                                box-shadow: 0px 0px 10px  2px #777;
                                color: #ccc;
                                padding: 20px;
                                border-radius: 10px;
                                overflow: hidden;
                        }
                        #ddpuzzle1
                        {
                                background: #e7931a;
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
                                box-shadow: 0px 0px 10px  2px #e7931a;
                        }
                        .ddpuzzle3 {
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
                            if ((e.target.className == "contenedorPieza") || (e.target.id == "ddpuzzle1"))
                                    return false;
                            else
                            return true;
                    }

                    function drop(e){
                            e.preventDefault(); 
                            var elementoArrastrado = e.dataTransfer.getData("Text");
                            e.target.appendChild(document.getElementById(elementoArrastrado)); 
                            comprobarPuzzle();
                    }

                    function comprobarPuzzle(){
                            if((document.getElementById('piece1').parentNode.id=='one') &&
                                    (document.getElementById('piece2').parentNode.id=='two') &&
                                    (document.getElementById('piece3').parentNode.id=='three') &&
                                    (document.getElementById('piece4').parentNode.id=='four'))
                            {
                                    alert('Success!.');
                            }
                    }

                    function comprobarnavegador() {
                            if( 
                                    (navigator.userAgent.toLowerCase().indexOf('msie ') > -1) || 
                                    ((navigator.userAgent.toLowerCase().indexOf('safari') > -1) && (navigator.userAgent.toLowerCase().indexOf('chrome') == -1)))
                            {
                                    alert("Your browser does not support HTML5's Drag & Drop function");
                            }

                    }
            </script>
            
    </head>

<body onload="comprobarnavegador();">
	<header>
		<h1> Picture Puzzle </h1>
	</header>

	<section id="ddpuzzle">
		<div id="ddpuzzle1" ondragenter="return enter(event)" ondragover="return over(event)" ondrop="return drop(event)">
			<img id="piece3" src="piece3.jpg" alt="piece3" draggable="true" ondragstart="start(event)" ondragend="end(event)">
			<img id="piece2" src="piece2.jpg" alt="piece2" draggable="true" ondragstart="start(event)" ondragend="end(event)">
			<img id="piece4" src="piece4.jpg" alt="piece4" draggable="true" ondragstart="start(event)" ondragend="end(event)">
			<img id="piece1" src="piece1.jpg" alt="piece1" draggable="true" ondragstart="start(event)" ondragend="end(event)">
		</div>
		<div id="puzzle">
			<div class="ddpuzzle3" id="one" ondragenter="return enter(event)" ondragover="return over(event)" ondrop="return drop(event)"></div>
			<div class="ddpuzzle3" id="two" ondragenter="return enter(event)" ondragover="return over(event)" ondrop="return drop(event)"></div>
			<div class="ddpuzzle3" id="three" ondragenter="return enter(event)" ondragover="return over(event)" ondrop="return drop(event)"></div>
			<div class="ddpuzzle3" id="four" ondragenter="return enter(event)" ondragover="return over(event)" ondrop="return drop(event)"></div>
		</div>	
	</section>
</body>
</html>