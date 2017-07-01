<!DOCTYPE HTML>
<html lang="en">
    <head>
        <title>Customer Review</title>
        <link rel="stylesheet" type="text/css">
        <style>
            #left{
                float: left;
            }
            #editable {
                border: 1px solid black;
                padding: 3px;
                margin: 5px;
                width: 1100px;
                float: left;
                
            }
            #viewHTML {
                border: 1px solid black;
                padding: 3px;
                margin: 5px;
                width: 500px;
                float: left;
                margin-left: 20px;
            }
            viewPre{
                white-space: pre-wrap;
                margin: 0;
            }
            #content{
                height: 250px;
            }
            .label{
                font-family: sans-serif;
                font-size: 80%;
                color: #555;
                font-weight: bold;
            }
            .Logincx{
                margin-top: 25px;
                margin-bottom: 25px;
                align-content: center;
                text-align: center;
                font-size: 15px;       
            }
            img{
                display: block;
                margin: 0 auto;
            }
            .userbox{
    border: 3px solid grey;
    border-style:outset;
    font-size: 13px;
    width: 90%;
    align-content: center;
    text-align: center;
    
}
.headerimage{
    width: 100%;
    background-color: #ffffcc;
    align-items: center;
    align-content: center;
    font-size: 25px;
    font-style: italic;
    border-bottom: 1px solid #ffffcc;   
}
body{
    background-attachment:fixed;
    background-image: url("background.png");
    filter:opacity(70%);        
}
    input[type=text] {
            width: 70%;
            padding: 12px 20px;
            margin: 9px 0;
            box-sizing: border-box;
            border: 1px solid #555; 
            outline: none;
            color: black;
            border: 3px solid #ccc;
            -webkit-transition: 0.5s;
            transition: 0.5s;
            outline: none;
            }
input[type=text]:focus {
    background-color: lightblue;
    border: 3px solid #555;
}
input[type=button]{
    background-color: #ffffcc ; /* Green */
    width: 10%;
    height: 30px;
    border: none;
    color: black;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 13px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 1s;
    cursor: pointer;
    box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
    border-radius: 15px;
}
input[type=button]:hover{
    background-color: #4CAF50;
    color: white;
}
        </style>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script type="application/javascript">
            var haveExecCommand =false;
            var loaded =false;
            var editable = null;
            var viewPre = null;
            
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
                viewPre.textContent=editable.innerHTML;
            }
            function init() {
                loaded = true;
                getExecCommand();
                
                editable = document.getElementById('editable');
                viewPre = document.getElementById('viewPre');
                
                document.execCommand('styleWithCSS',false,true);
                editable.onblur = loadView;
                loadView();
            }
            
            window.onload =init;
            
           /*code for retriving the blog*/ 
//            var blog_content_element = document.getElementById('editable');
 //           var blog_content = blog_content_element.innerHTML;
            
          //  localStorage.userEdits = userVersion;
/*            
$(document).ready(function(){
$("#class_blog").click(function(){
    alert("came in");
$.post("post_blog_servlet",
{
content: blog_content_element
},
function(data,status){
alert("Data: " + content + "\nStatus: " + status);
});
});
});
*/

$(document).ready(function(){
    $("#class_blog").click(function(){
        alert("came in");
                    var blog_content_element = document.getElementById('viewPre');
            var blog_content = blog_content_element.innerHTML;
        //var content = $("input").val();
        $.post("post_blog_servlet", {content: blog_content}, function(result){
            $("#sss").html(result);
        });
    });
});
</script>
        
    </head>
    <body>
        <iframe src="logo.html" height="100" width="100" style="border:none;"></iframe>
         <header class="headerimage">
             <p><center> Customer Review </center>
    </header>
        <div class="Logincx">             
            <div class="userbox">
                <!--<form action="Homepage_LoginCheck" method="POST"> <br>-->
                  <!--  <label for="username" itemprop="name">Username:
                        <input type="text" id="username" name="username"/><br></br></label>-->
                   <div id="content">
                        <h2>Write a review</h2>
                            <div id="left">
                            <form id="editbuttons">
                                <input type="button" value="Bold" onClick="format('bold');">
                                <input type="button" value="Italics" onClick="format('italic');">
                                <input type="button" value="Underline" onClick="format('underline');">                    
                            </form>
                            <div id="editable"  contentEditable="true">
                                <p>
                                    Write your review...
                                </p>
                            </div>
                            </div>
                    </div>
            </div>
            <input  id="class_blog" name="class_blog" type="button" value="Post blog">
             <p class="clear"></p>
        </div> 
 </body>
</html>