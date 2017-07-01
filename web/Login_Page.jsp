<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
       <meta name="viewport" content="width=device-width, initial-scale=1">
        <META http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
            <title>Login Page</title>
                <style type="text/css">
                    .Logincx{/*for the Login form with all buttons*/
                        margin-top: 25px;
                        margin-bottom: 25px;
                        align-content: center;
                        text-align: center;
                        font-size: 15px;  
                        
                    }
                    img{/*for iframe image*/
                        display: block;
                        margin: 0 auto;
                    }
                    .logincount{/*for local storage count*/
                        text-align: center;
                        background-color: #ffffcc;
                        font-size: 15px;
                        font-style:italic;
                    }
                    input[type=text] {/*Form styling for text input*/
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
                    input[type=text]:focus {/*Form styling for text input*/
                    background-color: lightblue;
                    border: 3px solid #555;
                    }
                    input[type=password] {/*Form styling for password*/
                    width: 70%;
                    padding: 12px 20px;
                    margin: 8px 0;
                    box-sizing: border-box;
                    border: 1px solid #555;
                    outline: none;
                    color: black;
                    border: 3px solid #ccc;
                    -webkit-transition: 0.5s;
                    transition: 0.5s;
                    outline: none;
                    }
                    input[type=password]:focus {/*Form styling for password*/
                    background-color: lightblue;
                    border: 3px solid #555;
                    }
                    input[type=submit]{/*Form styling for submit button*/
                    background-color: #ffffcc ; /* Green */
                    width: 30%;
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

                    input[type=submit]:hover{/*Form styling for submit button*/
                    background-color: #4CAF50;
                    color: white;
                    }
                    .signupbut{/*Form styling for signup button*/
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
                    .signupbut:hover{/*Form styling for signup button*/
                    background-color: #4CAF50;
                    color: white;
                    }
                    body{
                    background-attachment:fixed;
                    background-image: url("background.png");

                    }
                    .userbox{/*for the Login form*/
                    border: 3px solid grey;
                    border-style:outset;
                    background-image : url("ivorybg.png");
                    background-size: 50%;
                    font-size: 13px;
                    width: 30%;
                    align-content: center;
                    text-align: center;
                    margin-left: 35%;
                    }
                    .headerimage{/*For title*/
                    width: 100%;
                    background-color: #ffffcc;
                    align-items: center;
                    align-content: center;
                    font-size: 25px;
                    font-style: italic;
                    border-bottom: 1px solid #ffffcc;   
                    }
            </style>     
    </head> 
        <body>
             <iframe src="logo.html" height="100" width="400" style="border:none;"></iframe>
             <header class="headerimage"><center> Customer Login </center>
             </header>
        <!--Customer Login -->
            <div class="Logincx"> 
                <div class="userbox">
                    <form action="Homepage_LoginCheck" method="POST"> <br>
                        <label for="username" >Username:
                        <input type="text" id="username" name="username"/><br></br>
                        
                        <label for="password">Password:</label>
                        <input type="password" id="password" name="password"/><br></br>
                        
                        <img id="captcha" src="<c:url value="simpleCaptcha.jpg" />" width="150">
                        <label for="captcha" >Enter as shown in the above image:
                         <input type="text" name="answer" /><br>
                        <input type="submit" name="submit" value="Submit"><br><br>
                </form> 
            </div>
            <a href="http://localhost:8080/Toy_WebProject/Forgot_Password.jsp"> Forgot Password? </a><br></br>
            Not a member? <button class= "signupbut" onclick ="location.href = 'http://localhost:8080/Toy_WebProject/Sign_Up.jsp'" > Sign Up!</button>
        </div> 
        <div class="logincount"> <!--Using Local Storage to count the number of visits -->
                <script itemprop="result">
                    if(localStorage.hits)
                    {
                        localStorage.hits=Number(localStorage.hits)+1;
                    }
                    else
                    {
                        localStorage.hits=1;
                    }
                    document.write ("Site Counter: "+ localStorage.hits  +" times!");
                </script>
        </div>
    </body>
</html>

