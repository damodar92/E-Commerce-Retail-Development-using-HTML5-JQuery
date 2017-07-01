<!-- <!DOCTYPE  HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"> -->
<!DOCTYPE HTML>
<html>
    <head>
        <title>About Us</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style>
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
body{
                    background-image: url("background.png");
                    background-attachment:fixed;
                    
        }
.aboutus{
    margin-left: 30%;
    
}
#map{
    margin-left: 15%;
    margin-top: 10%;
    
    border: 1px solid black;
    float: left;
}
.contactus{
    margin-top: 10%;
    float: right;
    margin-right: 10%;
    font-size: 15px;
    background-color: #ffffcc;
    width: 400px;
    filter:opacity(80%);        
}   
.desc{
    margin: 0px 200px 0px 200px;
    background-color: #ffffcc;
    filter:opacity(80%);        
    text-align: center;
}
        </style>
    </head>
    <body> 
      <iframe src="logo.html" height="100" width="400"  frameBorder="0"></iframe>
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
      <br>
      <div class="desc">
          <p><strong><big>The Toy Store</big> - wanna play?</strong> <br></br>To bridge the gap between demand and supply and enhance children's creativity, concentration and coordination, We came up with the plan for The Toy World, 
          a toy rental service that allows customers to rent, use and return a wide range of branded toys for their kids.</p> 
      </div>
      <video class="aboutus" width="600" height="500" controls>
  <source src="AboutUS.mp4" type="video/mp4">
  <source src="AboutUS.ogg" type="video/ogg">
  Your browser does not support the video tag.
</video>
    
    
    <div class="contactus">
        <strong>Contact Us</strong> <br></br>
        <p>
        The Toy Store
        <br> 135 N Bellefield Ave
        <br> Pittsburgh PA 15213
        <br> <br>
        Phone: 412-Cal-Toys
        </p>
    </div>
    <div id="map" style="width:400px;height:400px;background:yellow">
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
</div>

</body>
</html>
