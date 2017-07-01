<!DOCTYPE  HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>

        <title>Contact Us</title>
        
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style>
            .links{
                color:black;
                background-color: #ffffcc;            
                text-decoration: none;
                font-size: 13px;
                align-content: center;
                text-align: center;                
            }
            
            .pages{
                display: inline-block;
                list-style-type: none;
                text-decoration: none;
                position: relative;
                padding: 25px 10px 20px 30px;
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
       
          

        body{
                    background-image: url("background.png");
                    background-attachment:fixed;
                    filter:opacity(70%);
        }
        
.aboutus{
    margin-left: 30%;
    margin-top: 10%;
}

      
        </style>
    </head>
    <body> <br><br><br>
      <!--<iframe src="samplehhttmm.html" height="200" width="300"></iframe>-->
         <nav class="links">
                <ul>
                    <li class="pages"><a href="http://localhost:8080/Toy_WebProject/All_Products.jsp"><strong>Home</strong></a></li>
                    <li class="pages"> <a href ="All_Products?prcat=Boys"><strong>Toys - Boys</strong></a></li>
                    <li class="pages"><a href ="All_Products?prcat=Girls"><strong>Toys - Girls</strong></a></li> 
                    <li class="pages"><a href ="http://localhost:8080/Toy_WebProject/drag_drop.jsp"><strong>Picture Puzzle</strong></a></li> 
                    <li class="pages"><a href="View_All_Reviews"><strong>View all reviews</strong></a></li>
                    <li class="pages"><a href="http://localhost:8080/Toy_WebProject/SVG_cat.jsp"><strong>Play with Cat</STRONG></a></li>
                    <li class="pages"> <a href="http://localhost:8080/Toy_WebProject/AboutUS.jsp"><strong>About Us</strong></a> </li>
                    <li class="pages"> <a href="http://localhost:8080/Toy_WebProject/Order_History_Servlet"><strong>Order History</strong></a></li>            
                    <li class="pages"><a href ="http://localhost:8080/Toy_WebProject/Homepage.jsp"><strong>Logout</strong></a></li>
              </ul> 
            </nav>
 
    <div id="map" style="width:400px;height:400px;background:yellow"></div>

    
    
<script>
function myMap() {
    var mapOptions = {
                center: new google.maps.LatLng(40.447379, -79.952698), 
         zoom: 18,
        mapTypeId: google.maps.MapTypeId.SATELLITE
    };
        var map = new google.maps.Map(document.getElementById("map"), mapOptions);
        
        var myLatLng = {lat: 40.447379, lng: -79.952698};
        
        var marker = new google.maps.Marker({
          position: myLatLng,
          map: map,
          title: 'World headquarters!'
        });


}
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyACkIZb8veBpNT2rTpWGqHIhWljyBWne9Q&callback=myMap"></script>


</body>
</html>

        
  
    </body>
</html>