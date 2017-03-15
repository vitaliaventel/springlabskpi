<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Site for labs. Version 2.0</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
  
  
<body>
<div class="page-wrap">

<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-white w3-wide w3-padding-8 w3-card-2">
    <a href="${pageContext.request.contextPath}" class="w3-margin-left w3-bar-item w3-button"><b>BAND</b> 3</a>
    <!-- Float links to the right. Hide them on small screens -->
    <div class="w3-right w3-hide-small">
      <a href="${pageContext.request.contextPath}#projects" class="w3-bar-item w3-button">Projects</a>
      <a href="${pageContext.request.contextPath}#about" class="w3-bar-item w3-button">About</a>
      <a href="${pageContext.request.contextPath}#contact" class="w3-bar-item w3-button w3-margin-right">Contact</a>
    </div>
  </div>
</div>

<!-- Header -->
<header class="w3-header-page w3-header-main"  id="home">
  <svg class="demo demo--text">
  <pattern id="p-lines" 
           viewBox="0 0 100 100"
           patternUnits="userSpaceOnUse"
           width="100" height="100">
    <path d="M 0,0 0,100" class="p-line"/>
    <path d="M 10,0 10,100" class="p-line"/>
    <path d="M 20,0 20,100" class="p-line"/>
    <path d="M 30,0 30,100" class="p-line"/>
    <path d="M 40,0 40,100" class="p-line"/>
    <path d="M 50,0 50,100" class="p-line"/>
    <path d="M 60,0 60,100" class="p-line"/>
    <path d="M 70,0 70,100" class="p-line"/>
    <path d="M 80,0 80,100" class="p-line"/>
    <path d="M 90,0 90,100" class="p-line"/>
    <path d="M 100,0 100,100" class="p-line"/>
  </pattern>
  <text x="50%" y="50%" dy=".3em" text-anchor="middle" class="text--fill" fill="url(#p-lines)" style="font-size:18vw">BAND 3</text>
  </svg>
</header>

<!-- Page content -->
<div class="w3-content w3-padding" style="max-width:1564px">

  <!-- Project Section -->
  <div class="w3-container w3-padding-32" id="projects">
    <h3 class="w3-border-bottom w3-border-light-grey w3-padding-12">Projects</h3>
  </div>

  <div class="w3-row-padding">
    
    <div class="w3-greyscale-max w3-hover-greyscale w3-col l3 m6 w3-margin-bottom ">
      <a href="${pageContext.request.contextPath}/lab6_1/arrayDataEntry">
        <div class="w3-display-container">
          <div class="w3-display-topleft w3-black w3-padding">Lab 1 [Task 1]</div>
        <img src="${pageContext.request.contextPath}/resources/img/02.png" alt="image" style="width:100%">
        </div>
      </a>
    </div>
  
    <div class="w3-greyscale-max w3-hover-greyscale w3-col l3 m6 w3-margin-bottom">
       <a href="${pageContext.request.contextPath}/lab6_2/taskForm">
        <div class="w3-display-container">
          <div class="w3-display-topleft w3-black w3-padding">Lab 1 [Task 2]</div>
          <img src="${pageContext.request.contextPath}/resources/img/02.png" alt="House" style="width:100%">
        </div>
      </a>
    </div>
    
    <div class="w3-greyscale-max w3-hover-greyscale w3-col l3 m6 w3-margin-bottom">
      <a href="#">
        <div class="w3-display-container">
          <div class="w3-display-topleft w3-black w3-padding">Lab 2 [Task 1]</div>
          <img src="${pageContext.request.contextPath}/resources/img/404.png" alt="House" style="width:100%">
        </div>
        </a>
    </div>
    
    <div class="w3-greyscale-max w3-hover-greyscale w3-col l3 m6 w3-margin-bottom">
      <a href="#">
        <div class="w3-display-container">
          <div class="w3-display-topleft w3-black w3-padding">Lab 3 [Task 1]</div>
          <img src="${pageContext.request.contextPath}/resources/img/404.png" alt="House" style="width:100%">
        </div>
      </a>
    </div>  
    
  </div>
  <div class="w3-row-padding">
  
    <div class="w3-greyscale-max w3-hover-greyscale w3-col l3 m6 w3-margin-bottom">
      <a href="#">
        <div class="w3-display-container">
          <div class="w3-display-topleft w3-black w3-padding">Lab 4 [Task 1]</div>
          <img src="${pageContext.request.contextPath}/resources/img/404.png" alt="House" style="width:99%">
        </div>
      </a>
    </div>
  
    <div class="w3-greyscale-max w3-hover-greyscale w3-col l3 m6 w3-margin-bottom">
      <a href="#">
        <div class="w3-display-container">
          <div class="w3-display-topleft w3-black w3-padding">Lab 5 [Task 1]</div>
          <img src="${pageContext.request.contextPath}/resources/img/404.png" alt="House" style="width:99%">
        </div>
      </a>
    </div>
    
    <div class="w3-greyscale-max w3-hover-greyscale w3-col l3 m6 w3-margin-bottom">
      <a href="#">
        <div class="w3-display-container">
          <div class="w3-display-topleft w3-black w3-padding">Lab 6 [Task 1]</div>
          <img src="${pageContext.request.contextPath}/resources/img/404.png" alt="House" style="width:99%">
        </div>
      </a>
    </div>
      
    <div class="w3-greyscale-max w3-hover-greyscale w3-col l3 m6 w3-margin-bottom">
      <a href="#">
        <div class="w3-display-container">
          <div class="w3-display-topleft w3-black w3-padding">Lab 7 [Task 1]</div>
          <img src="${pageContext.request.contextPath}/resources/img/404.png" alt="House" style="width:99%">
        </div>
      </a>
    </div>
  </div>
</div>

  <!-- About Section -->
  <div class="w3-container w3-padding-32" id="about">
    <h3 class="w3-border-bottom w3-border-light-grey w3-padding-12">About</h3>
    <p>We are a family of shameless idealists to shaping a world where everything is possible. We work hard. We play hard. And together WE change the world.
Every. Single. Day.
    </p>
  </div>

  <div class="w3-row-padding ">
    <div class="w3-col l2 m6 w3-margin-bottom w3-article-wrap">
      <img src="${pageContext.request.contextPath}/resources/img/boy.svg" alt="John" style="width:100%">
      <h3>Vitaly Leshchenko</h3>
      <p class="w3-opacity">Java developer</p>
      <p><a class="w3-button w3-block" href="https://www.linkedin.com/in/vitaliaventel">Contact</a></p>
    </div>
    
    <div class="w3-col l2 m6 w3-margin-bottom w3-article-wrap">
      <img src="${pageContext.request.contextPath}/resources/img/man.svg" alt="Dan" style="width:100%">
      <h3>Alex Ilyushchenko</h3>
      <p class="w3-opacity">Team Lead or Batya</p>
      <p><a class="w3-button w3-block" href="https://vk.com/cmplcmpl">Contact</a></p>
    </div>
    
    <div class="w3-col l2 m6 w3-margin-bottom w3-article-wrap">
      <img src="${pageContext.request.contextPath}/resources/img/girl.svg" alt="Jane" style="width:100%">
      <h3>Hapon Maryna</h3>
      <p class="w3-opacity">Front-End Developer</p>
      <p><a class="w3-button w3-block" href="https://www.linkedin.com/in/maryna-hapon-898682129">Contact</a></p>
    </div>
      
    <div class="w3-col l2 m6 w3-margin-bottom w3-article-wrap">
      <img src="${pageContext.request.contextPath}/resources/img/girl02.svg" alt="Mike" style="width:100%">
      <h3>Anastasiya Chemeris</h3>
      <p class="w3-opacity">QA Test Engineer</p>
      <p><a class="w3-button w3-block" href="https://vk.com/id182912900">Contact</a></p>
    </div>
    
     <div class="w3-col l2 m6 w3-margin-bottom w3-article-wrap">
      <img src="${pageContext.request.contextPath}/resources/img/girl03.svg" alt="Dan" style="width:100%">
      <h3>Kate Borovik</h3>
      <p class="w3-opacity">QA Test Engineer</p>
       <p><a class="w3-button w3-block" href="https://vk.com/id17954582">Contact</a></p>
    </div>
  </div>

  <!-- Contact Section -->
  <div class="w3-container w3-padding-32" id="contact">
    <h3 class="w3-border-bottom w3-border-light-grey w3-padding-12">Contact</h3>
    <p>Lets get in touch and talk about your and our next project.</p>
    <form action="/action_page.php" target="_blank">
      <input class="w3-input" type="text" placeholder="Name" required name="Name">
      <input class="w3-input w3-section" type="text" placeholder="Email" required name="Email">
      <input class="w3-input w3-section" type="text" placeholder="Subject" required name="Subject">
      <input class="w3-input w3-section" type="text" placeholder="Comment" required name="Comment">
      <button class="w3-button w3-black w3-section" type="submit">
        <i class="fa fa-paper-plane"></i> SEND MESSAGE
      </button>
    </form>
  </div>
  
<!-- End page content -->
</div>

<!-- Google Map -->
<div id="googleMap" class="w3-grayscale" style="width:100%;height:450px;"></div>

<!-- Footer -->
<footer class="w3-center w3-black w3-padding-16">
  <p>&#169; BAND 3 </br> kyiv / ukraine</p>
</footer>

<!-- Add Google Maps -->
<script>
function myMap()
{
  myCenter=new google.maps.LatLng(50.447012, 30.456049);
  var mapOptions= {
    center:myCenter,
    zoom:12, scrollwheel: false, draggable: false,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapOptions);

  var marker = new google.maps.Marker({
    position: myCenter,
  });
  marker.setMap(map);
}
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDg38cFZOzm4ALxhJgAS_QZYM_RbQeslXA&callback=myMap"></script>
<!--
To use this code on your website, get a free API key from Google.
Read more at: https://www.w3schools.com/graphics/google_maps_basic.asp
-->

</body>
</html>
