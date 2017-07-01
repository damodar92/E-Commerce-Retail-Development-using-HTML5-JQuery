<%@page import="java.io.PrintWriter"%>
<!DOCTYPE HTML>
<html lang="en">
    <head>
       <title>New Customer Review</title>
       <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <style>
                #left{
                    float: left;
                }
                #editable {/*review content*/
                    border: 1px solid black;
                    padding: 3px;
                    margin: 5px;
                    width: 500px;
                    float: left;
                    height: 300px;
                    background-color: #ffffcc;
                }
                #viewHTML {/*HTML changes based on the formats*/
                    border: 1px solid black;
                    padding: 3px;
                    margin: 5px;
                    width: 500px;
                    float: left;
                    margin-left: 20px;
                }
                Preview{/*Preview div after the format changes*/
                    white-space: pre-wrap;
                    margin: 0;
                }
                #content{
                    height: 500px;
                    margin-left: 30%;
                }
                .label{
                    font-family: sans-serif;
                    font-size: 80%;
                    color: #555;
                    font-weight: bold;
                }
                body{
                background-attachment:fixed;
                background-image: url("background.png");
                filter:opacity(80%);        
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

                input[type=button]{
                background-color: #ffffcc ; 
                width: 30%;
                height: 30px;
                border: none;
                color: black;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 13px;
                margin: 4px 2px;
                -webkit-transition-duration: 0.4s; 
                transition-duration: .4s;
                cursor: pointer;
                box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
                border-radius: 15px;
                }

                input[type=button]:hover{
                background-color: #4CAF50;
                color: white;
                }
                .headerimage{
                align-items: center;
                align-content: center;
                font-size: 25px;
                font-style: italic;
                }
                #class_blog{
                    margin-left: 33%;
                }

        </style>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
            <script type="application/javascript">
                var haveExecCommand =false;
                var loaded =false;
                var editable = null;
                var Preview = null; 
                    function getExecCommand(){
                    try
                        {
                            if( !! document.execCommand) haveExecCommand = true;
                            else alert('This browser does not support document editing');
                        }catch(e)
                            {
                            alert('This browser does nt support document editing.');
                            }
                      }
            
                    function format(cmd)
                        {
                            if(!loaded || !haveExecCommand)
                            return true;                
                            document.execCommand(cmd, false);
                            loadView();
                        }
                    
                    function loadView() {
                    Preview.textContent=editable.innerHTML;
                    }
            
                    function init() {
                    loaded = true;
                    getExecCommand();                
                    editable = document.getElementById('editable');
                    Preview = document.getElementById('Preview');                
                    document.execCommand('styleWithCSS',false,true);
                    editable.onblur = loadView;
                    loadView();
                    }            
                
                    window.onload =init;
            
                $(document).ready(function(){
                    $("#class_blog").click(function(){
                        alert("Thank you for the review!");
                        var blog_content_element = document.getElementById('editable');
                        var blog_content = blog_content_element.innerHTML;
                        //var content = $("input").val();
                        $.post("post_blog_servlet", {content: blog_content}, function(){
                            window.location.replace("View_All_Reviews");
                        
                    });
                });
            });
    </script>
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
        <div id="content">
            <h2>Write a review</h2>
            <div id="left">
                <form id="editbuttons">
                    <input type="button" value="Undo" onClick="format('undo');"> 
                    <input type="button" value="Redo" onClick="format('redo');"> 
                    <br>
                    <input type="button" value="Bold" onClick="format('bold');">
                    <input type="button" value="Italic" onClick="format('italic');">
                    <input type="button" value="Underline" onClick="format('underline');"> 
                    <br>
                    <input type="button" value="+ Font Size" onClick="format('increasefontsize');">
                    <input type="button" value="- Font Size" onClick="format('decreasefontsize');">
                </form>
                <div id="editable"  contentEditable="true">
                   <p>
                        Write your review...
                    </p>
                    
                </div>
            </div>
         <!--   <div id="viewHTML"><pre id="Preview"></pre></div>-->
        </div>
        <input  id="class_blog" name="class_blog" type="button" value="Post Review"> 
        <p class="clear"></p>
    
    </body>
</html>