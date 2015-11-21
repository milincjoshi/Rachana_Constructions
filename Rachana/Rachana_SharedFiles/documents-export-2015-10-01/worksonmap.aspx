<%@ Page Language="C#" AutoEventWireup="true" CodeFile="worksonmap.aspx.cs" Inherits="worksonmap" %>

<!DOCTYPE html>

<html style="height=100%;" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


       <!--Bootstrap reference-->
    <link href="Bootstrap/dist/css/bootstrap-theme.css" rel="stylesheet" />
    <link href="Bootstrap/dist/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="Bootstrap/dist/css/bootstrap.css" rel="stylesheet" />
    <link href="Bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />


    <link rel="stylesheet" href="homestyle.css" type="text/css" />
    
    <!--Map Script-->
    <script src="http://maps.googleapis.com/maps/api/js?keyAIzaSyAysDII4-KK6BR13e2S4iC7JTQKB9W_Geg&sensor=false"></script>
     <script>

         //function that runs for map
         function initialize() {
             //initializing properties for map
             var mapProp = {
                 center: new google.maps.LatLng(21.088684, 71.762728),
                 zoom: 15,
                 mapTypeId: google.maps.MapTypeId.ROADMAP
             };

             //getting HTML element for placing map by ID
             var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
             //The point at which marker is to be placed
             //Office Location
             var point = new google.maps.LatLng(21.088684, 71.762728);

             var marker = new google.maps.Marker(
               {
                   Position: point,
                   url: "images/Rachana.png",
                   animation: google.maps.Animation.BOUNCE
               });

             //Shree Devangi Bunglows
             var point1 = new google.maps.LatLng(21.076730, 71.754847);
             var marker1 = new google.maps.Marker(
                 {
                     Position: point1,
                     url: "PhotoGallery.aspx"
                 });

             //Shree Devangi Avenue
             var point2 = new google.maps.LatLng(21.089945, 71.752447);
             var marker2 = new google.maps.Marker(
                 { Position: point2 });

             //Shree Devangi Flats
             var point3 = new google.maps.LatLng(21.088839, 71.751696);
             var marker3 = new google.maps.Marker(
                 { Position: point3 });


             //shree devangi park
             var point4 = new google.maps.LatLng(21.077870, 71.753801);
             var marker4 = new google.maps.Marker(
                 { Position: point4 });

             marker.setMap(map);
             marker1.setMap(map);
             marker2.setMap(map);
             marker3.setMap(map);
             marker4.setMap(map);

             var infowindow = new google.maps.InfoWindow({
                 content: "Rachana Constructions!"
             });

             var infowindow1 = new google.maps.InfoWindow({
                 content: "Shree Devangi Bunglows!"
             });

             var infowindow2 = new google.maps.InfoWindow({
                 content: "Shree Devangi Avenue!"
             });

             var infowindow3 = new google.maps.InfoWindow({
                 content: "Shree Devangi Flats!"
             });

             var infowindow4 = new google.maps.InfoWindow({
                 content: "Shree Devangi Park!"
             });

             infowindow.open(map, marker);
             infowindow1.open(map, marker1);
             infowindow2.open(map, marker2);
             infowindow3.open(map, marker3);
             infowindow4.open(map, marker3);

             //click event listener for marker 1 devangi bunglows
             google.maps.event.addDomListener(marker1, 'click', function () { window.open(marker1.url + "?category=Devangi Flats"); });
         }

         google.maps.event.addDomListener(window, 'load', initialize);
     </script>

    <!--MAp script Ends-->
</head>
<body style="height:100%;">
     <!--Pre Loader-->
    <div class="loader"></div>

    <form id="form1" runat="server" style="height:100%;">
        <div class="container" style="height:100%;">
            <div class="page-header fontsize_40 font_modernsans text-center forecolor_darkgreen"> Works on Map</div>
            <hr />
            <div class="container" style="position: absolute;width: 70%;height: 70%; margin-left:auto; margin-right:auto;">
             <div id="googleMap" style="width:100%; height:100%"></div>
            </div>
        </div>
    </form>

<!--loader-->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript">
$(window).load(function () {
    $(".loader").fadeOut("slow");
})
</script>


</body>
</html>
