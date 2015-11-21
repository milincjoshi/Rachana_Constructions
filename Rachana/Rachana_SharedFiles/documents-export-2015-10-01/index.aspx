<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rachana Construction</title>

    <!--Bootstrap JS-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    
    <!--Bootstrap Reference-->
    <link href="Bootstrap/dist/css/bootstrap-theme.css" rel="stylesheet" />
    <link href="Bootstrap/dist/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="Bootstrap/dist/css/bootstrap.css" rel="stylesheet" />
    <link href="Bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />
    
    <script src="Bootstrap/js/carousel.js"></script>
    <script src="Bootstrap/dist/js/bootstrap.js"></script>
    <script src="Bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="Bootstrap/dist/js/npm.js"></script>

    <!--CSS Reference-->
    <link href="homestyle.css" rel="stylesheet" />
    <!-- Add the following three tags inside head. -->
    <meta itemprop="name" content="Rachana Construction" />
    <meta itemprop="description" content="Real Estate in Mahuva" />

    <!--Smooth slide Javascript reference. apply rel to anchor link to smooth scroll-->
    <script src="page-scroll-to-id-master/jquery.malihu.PageScroll2id.js"></script>
      <script>
          (function ($) {
              $(window).load(function () {
                  $("a[rel='m_PageScroll2id']").mPageScroll2id();
              });
          })(jQuery);
    </script>
    
    <!--twitter script-->
    <script>!function (d, s, id)
    {
        var js, fjs = d.getElementsByTagName(s)[0];
            if (!d.getElementById(id)) {
            js = d.createElement(s);
            js.id = id;
            js.src = "//platform.twitter.com/widgets.js"; fjs.parentNode.insertBefore(js, fjs);
                                       }
    }(document, "script", "twitter-wjs");
    </script>

     <!--Map script-->
    <script src="http://maps.googleapis.com/maps/api/js?keyAIzaSyAysDII4-KK6BR13e2S4iC7JTQKB9W_Geg&sensor=false"></script>
     <script>

         //function that runs for map
         function initialize()
         {
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
             
             
             marker.setMap(map);
             
             var infowindow = new google.maps.InfoWindow({
                 content: "Rachana Constructions!"
             });

             
             infowindow.open(map, marker);
            
             //click event listener for marker 1 devangi bunglows
             google.maps.event.addDomListener(marker1, 'click', function () { window.open(marker1.url + "?category=Devangi Flats"); });
            }

         google.maps.event.addDomListener(window, 'load', initialize);
     </script>

    <!--styling nav bar links for hover-->
   <style>a:hover {color:#2c6700;}</style>

    
</head>
<body style="padding-top:60px;" class="whitespace">
    
    <!--Pre Loader-->
    <div class="loader"></div>

      <!--fb script code-->
        <div id="fb-root"></div>
        <script>(function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.0";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
        </script>


<form id="form1" runat="server" class="container-fluid">

        <!--<nav class="navbar navbar-default navbar-fixed-top" role="navigation">-->
 <nav class="navbar nav-justified navbar-fixed-top background_darkgreen font_modernsans" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a href="#myCarousel"  rel='m_PageScroll2id'>
        <div class="navbar-brand font_illegal forecolor_white fontsize_28">Rachana Construction</div>
      </a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#aboutus" rel='m_PageScroll2id' class="forecolor_white fontsize_24">About Us<span class="sr-only">(current)</span></a></li>
        <li><a href="#contactus" rel='m_PageScroll2id' class="forecolor_white fontsize_24">Contact Us</a></li>
      </ul>
   
   
      <ul class="nav navbar-nav navbar-right">
        <li><a href="PhotoGallery.aspx" class="forecolor_white fontsize_24">Photo Gallery</a></li>
        </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
      
      <!--Caraousel Start-->
 <div id="myCarousel" class="carousel slide col-lg-12 col-xs-12 col-md-12 col-sm-12" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
     <img src="images/slider-images/1-lightbox.jpg" alt="First slide"/>
        </div>
        <div class="item">
         <img src="images/slider-images/2-lightbox.jpg" alt="Second slide"/>
        </div>
        <div class="item">
             <img src="images/slider-images/3-lightbox.jpg" alt="Third slide"/>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div><!-- /.carousel -->
      <!--Caraousel Ends-->
<hr />


<!--Circles--><div class="container ">

<!--Profile image--><div class="col-lg-12">
                        <div class="col-lg-7 text-justify padding_10 margin_10top">
                            <h1 class="forecolor_darkgreen font_reckoner">
                                <u>Mulshankar Joshi</u> 
                            </h1>
                            <p class=" font_voltaire fontsize_26 ">
                                    An Architect<br />A Real Estate Consultant<br />
                                    A Designer<br />A Visionary<br />
                                    A Builder<br />Founder of Rachana Construction
                            </p>      
                        </div>   
                        <div class="col-lg-5 text-center">
                            <img style="width: 300px; height: 300px;" src="images/Author.jpg" class=" img-rounded" />
                        </div>
                    </div>
<hr />
<!--Rachana Collage--><div class="col-lg-12 ">
                         <div class="col-lg-5">
                             <img style="width: 300px; height: 300px;" src="images/collage.jpg" class="img-rounded" />
                        </div>
                        <div class="col-lg-7 padding_10 margin_10top">
                            <p class="fontsize_24 lead font_voltaire ">
                            Under the name Rachana Constructions,
                            there have been over 50 Houses, Tenaments and around a couple of flats build that
                            shine with glory.
                            Rachana Construction has been consuctiing work in
                            Mahuva and Rajula in the District of Bhavnagar situated in Gujarat,India.
                            <br />
                             </p>
                         </div>
                      </div>
  <hr />
<!--Maps Work-->     <div class="col-lg-12 padding_10">
                        <div class="col-lg-7 padding_10 margin_10top">
                            <p class="fontsize_24 lead font_voltaire padding_10" style="padding:10px;">
                            Take a tour of places where Rachana Construction
                            has laid its mark and made its foundation strong by doing so. 
                            <br />
                            <a class="btn btn-primary background_darkgreen" href="worksonmap.aspx" role="button">View on Map »</a>
                            </p>
                        </div>
                        <div class="col-lg-5 text-center">
                            <img style="width: 300px; height: 300px;" src="images/map img.PNG" class="img-rounded"/>
                        </div>
                     </div>                       
              </div><!--Container for 5-7 panels ends-->
    
    <!--About Us-->
    <div id="aboutus" class="col-lg-12 margin_10top whitespace padding_10">
         <h1 class="forecolor_darkgreen text-center font_voltaire">About Us</h1>
            <p class=" font_voltaire fontsize_24">
              &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
              "Rachana Construction" established in 1995 A.D. by Mulushankar Joshi, has been providing services with an outstanding quality in Real Estate.
               It has been proved as one of the leading construction company in Mahuva, Gujarat. 
               We construct residential buildings like Apartments, Complexes, Bunglows, Tenaments, Row-Houses, etc in various places at Mahuva and nearby Cities.
               We are Government approved for providing Building Contracts and we also runs Government Construction Works.
               In past 20 years, we have established more than 500 buildings at Mahuva and nearby Cities.
               We also provide Consultant Work.
               We are committed to to provide excellence for Customer Service and respective Government Works.
            </p>
    </div>
<!--Contact US--><div  class="col-lg-12 margin_10top">
                            <div id="contactus" class="col-lg-12 font_voltaire forecolor_darkgreen text-center">
                                <h1>Contact Admin</h1></div>
                            <div class="container col-lg-12"  role="form">
        <!--Contact form-->    <div  class="col-lg-12 margin_10top form-group font_voltaire">
                                    <div class="col-lg-3 margin_10top fontsize_24">Name</div>
                                    <div class="col-lg-9 margin_10top input-group"><asp:TextBox CssClass="form-control" id="YourName" runat="server" ></asp:TextBox></div>
                                    <div class="col-lg-3 margin_10top fontsize_24">E-Mail</div>
                                    <div class="col-lg-9 margin_10top input-group"><asp:TextBox CssClass="form-control" ID="YourEmail"  runat="server"/></div>
                                    <div class="col-lg-3 margin_10top fontsize_24">Subject</div>
                                    <div class="col-lg-9 margin_10top input-group"><asp:TextBox CssClass="form-control" id="YourSubject" runat="server" ></asp:TextBox></div>
                                    <div class="col-lg-3 margin_10top fontsize_24">Message</div>
                                    <div class="col-lg-9 margin_10top input-group"><asp:TextBox CssClass="font_voltaire form-control" TextMode="MultiLine" Height="60" id="txt_body" runat="server"></asp:TextBox></div>
                                    <asp:Button ForeColor="#e5e4d7" BackColor="#2c6700" CssClass="col-lg-12 fontsize_28 btn btn-primary font_voltaire margin_10top " runat="server" id="Button1" Text="Send Message" Font-Bold="True" OnClick="Button1_Click"  />
                               </div>
                                <div class="col-lg-12 margin_10top padding_10">
                                    <div class="font_voltaire fontsize_26 border forecolor_darkgreen text-center" style="border-radius:10px;">
                                        This is where you would find us "Physically"
                                    </div>
                                     
                                    <div class="col-lg-6 font_voltaire fontsize_24">
                                      <br />
                                      Address:<br />
                                      S-1, Akash Complex,<br />
                                      Above Akash Provision,<br />
                                      Parshival Para Main Road,<br />
                                      Mahuva-364290<br />
                                      Email:mulshankar.joshi@yahoo.com
                               </div>
<!--Map-->      <div class="col-lg-6 margin_10top padding_10">
                     <div id="googleMap" style="width:100%;height:220px;"></div>
                </div>
              </div>
<div class="col-lg-12 margin_10top padding_10">
        <div class="font_voltaire fontsize_26 border forecolor_darkgreen text-center" style="border-radius:10px;">
            This is where you can reach us on Social Media
        </div>
    </div>
        </div>
     </div>
    
 <!--Social Media-->   <div class="col-lg-12 container">
 <!--twitter and g+--> <div class="col-lg-6">
 <!--g+-->                <div class="col-lg-12 text-center">
                            <div class="fontsize_24 font_voltaire text-center" style="color:#dd4b39;">Follow us on Google Plus</div>
                            
                                <div class="col-lg-12">
                                    <script src="https://apis.google.com/js/platform.js" async defer></script>
                                <!-- Place this tag where you want the widget to render. -->
                                <div class="g-follow" data-annotation="vertical-bubble" data-height="24" data-href="//plus.google.com/u/0/115777255964763895895" data-rel="publisher"></div>
                                
                                </div>
                                <div class="col-lg-12 text-center">
                                     
                                 <!--google +1 code-->
                                     <!-- Place this tag where you want the +1 button to render. -->
                                    <div class="g-plusone" data-size="tall" data-annotation="inline" data-width="300" data-href="https://plus.google.com/104566065178593012649/about"></div>
                                    <!-- Place this tag after the last +1 button tag. -->
                                    <script type="text/javascript">
                                        (function () {
                                            var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
                                            po.src = 'https://apis.google.com/js/platform.js';
                                            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
                                        })();
                                     </script>
                               
                                </div> <!-- Place this tag in your head or just before your close body tag. -->
                               </div>
<!--twitter-->                     <div class="col-lg-12 font_voltaire text-center"><div style="color:#0084b4;
                                        font-size: x-large; height:20%;">Follow Us on Twitter</div>
                                    <br />
                                    <div class="text-center">
                                    <a href="https://twitter.com/Rachana_Mahuva"
                                        class="twitter-follow-button"
                                        data-show-count="false" 
                                        data-size="large"
                                        data-width="300px"
                                        data-lang="en">
                                        Follow @Rachana_Mahuva
                                    </a>
                                    </div></div>
                    </div>
 <!--fb-->                  <div class="col-lg-6">
                               <div class="col-lg-4">
                                <div id="footer3">
                                    <div class="fb-like-box" 
                                        data-href="https://www.facebook.com/pages/Rachana-Consultancy/607995272650530"
                                        data-width="400px" 
                                        data-height="220px" 
                                        data-colorscheme="light"
                                        data-show-faces="true" 
                                        data-header="true" 
                                        data-stream="false" data-show-border="true">
                                    </div>
                                    </div>
                                </div>
                           </div>
           </div>
     
<div class="col-lg-12">
    <!--Counter-->
    <div class="col-lg-6">
       <a href="http://www.freecounterstat.com" target="_Blank" title="website counter">website counter</a><br/>
       <script type="text/javascript" src="http://counter2.allfreecounter.com/private/counter.js?c=fd196bd0d5799630845530bf589e0c94"></script>
        
    </div>
    <!--Footer-->
    <div class="col-lg-6 font_voltaire fontsize_24 modal-footer">
        <a style="text-decoration:none; color:#1fcb28;" target="_new" href="https://www.facebook.com/milincjoshi">
            Developed by Milin Joshi
        </a>
    </div>
</div>    

<!--counter--.
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
