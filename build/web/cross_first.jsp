<%-- 
    Document   : cross_first
    Created on : Dec 5, 2016, 4:30:32 PM
    Author     : sowmi_n4gxixd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
           <div id='output'></div>
    <script>
        window.onmessage =function(event) 
        {
        if(event.origin =='http://localhost/')    
        document.getElementById('output').innerHTML =event.data
        }
    </script> 
    <!--<script>
        window.addEventListener('message',function(e)) {
            alert("in cross_first")
            if(e.origin !=="http://localhost"){
                alert ("Wrong source")
            }
            else {
                if(e.origin =='http://localhost/')    
                Hello =e.data
            }
        }
    </script> -->
    </body>
</html>
