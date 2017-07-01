<!DOCTYPE html>
<html itemscope itemtype="https://schema.org/Action">
    
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Login Page</title>
         
        <style type="text/css">
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
    input[type=password] {
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
input[type=password]:focus {
    background-color: lightblue;
    border: 3px solid #555;
}
input[type=submit]{
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

input[type=submit]:hover{
     background-color: #4CAF50;
    color: white;
}
.signupbut{
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
.signupbut:hover{
    background-color: #4CAF50;
    color: white;
}
body{
    background-attachment:fixed;
    background-image: url("background.png");
    filter:opacity(70%);        
}
.userbox{
    border: 3px solid grey;
    border-style:outset;
    background-image : url("ivorybg.png");
    background-size: 50%;
    font-size: 14px;
    width: 30%;
    align-content: center;
    text-align: center;
    margin-left: 35%
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
        </style>     
    </head> 
    <body>        <iframe src="logo.html" height="100" width="400" style="border:none;"></iframe>

         <header class="headerimage">
             <p><center> Forgot Password </center>
    </header>
        <!--Employee Forgot Password -->
        <div class="Logincx"> 
            <h2>Enter Details to retrieve password</h2><br></br>
              <div class="userbox">
          <form action="Forgot_Password_Servlet" method='POST' > 
             
                  <label for="username">Username:</label><br>
                    <input type="text" id="username" name="username" required/><br></br> 
                    
                    <label for="SecurityQuestion1">Security Questions:What is your favorite pet's name?</label><br>
                    <input type="text" id="SecurityQuestion1" name="SecurityQuestion1" required/><br></br>
                    
                    <label for="SecurityQuestion2"><br> What is your mother's maiden name?</label><br>
                    <input type="text" id="SecurityQuestion2" name="SecurityQuestion2" required/><br></br>
                    
                    <input type="submit" value="Submit">
                    <br><br/>
          </form>
              </div><br><br/>
            <button class= "signupbut" onclick="location.href='http://localhost:8080/Toy_WebProject/Login_Page.jsp'">Cancel</button>
        </div>      
		
    </body>
</html>
