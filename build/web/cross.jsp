<%-- 
    Document   : cross
    Created on : Dec 5, 2016, 3:53:42 PM
    Author     : sowmi_n4gxixd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body onload="work()">
        alert(in body);
        
        <iframe id='frame' src ='cross_first.jsp' width='360' height='75'></iframe>
        <script>
            count =1
            setInterval (function() 
            {
                document.getElementById('frame').contentWindow.postMessage('Message' + count++, 'http://localhost/')
            }, 1000)
            
        </script> 
        
        <!--<script>
            function work() {
            aframe = document.getElementById('iframe');
            aframe.postMesssage("Hello World!", "http://localhost");
            alert('Hi working'); 
        }
        </script>
        <p>Target iframe</p>
        <iframe id='iframe' src='cross_first.jsp'></iframe>-->
    </body>
</html>
