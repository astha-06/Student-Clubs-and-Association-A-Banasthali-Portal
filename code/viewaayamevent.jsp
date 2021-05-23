<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EVENT PAGE</title>
    </head>
    <style>
        *{
            box-sizing:border-box;
        }
        body{
            margin:0px;
            padding:5px;
            text-align:center;
            background: #000;
        }
        ul {
  list-style-type: none;
  margin: 0;
  overflow: hidden;
  height: 50px;
  background-color:#7b7992;
}
li {
  float: right;
   display: inline-block;
}
li a {
  display: inline-block;
  color: white;
  text-align: right;
 
  text-decoration: crimson;
}
li a:hover {
    background-color:#ff7979;
}
      header{
            color:#fff;
            font-size: 20px;
        }
      
        section{
            width:35%;
            float:left;
            height:400px;
            background:#ccffcc;
            color:#0d0925;
             border-radius:10px;
             margin-left: 10px;
        }
.blog-card{
  position: absolute;
  height: 400px;
  width: 65%;
  max-width: 850px;
  margin: auto;
  border-radius: 25px;
  background:#ccffcc;
  box-shadow: 0px 10px 50px rgba(252,56,56,.3);
}
.inner-part{
  position: absolute;
  display: flex;
  height: 360px;
  align-items: center;
  justify-content: center;
  padding: 0 25px;
}
#imgTap:checked ~ .inner-part {
  padding: 0;
  transition: .1s ease-in;
}
.inner-part .img{
  height: 260px;
  width: 260px;
  flex-shrink: 0;
  overflow: hidden;
  border-radius: 20px;
  box-shadow: 2px 3px 15px rgba(252,56,56,.1);
}
#imgTap:checked ~ .inner-part .img{
  height: 370px;
  width: 850px;
  z-index: 99;
  margin-top: 10px;
  transition: .3s .2s ease-in;
}
.img img{
  height: 100%;
  width: 100%;
  object-fit: cover;
  cursor: pointer;
  opacity: 0;
  transition: .6s;
}
#tap-1:checked ~ .inner-part .img-1,
#tap-2:checked ~ .inner-part .img-2,
#tap-3:checked ~ .inner-part .img-3,
#tap-4:checked ~ .inner-part .img-4{
  opacity: 1;
  transition-delay: .2s;
}
.content{
  padding: 0 20px 0 35px;
  width: 530px;
  margin-left: 50px;
  opacity: 0;
  transition: .6s;
}
#imgTap:checked ~ .inner-part .content{
  display: none;
}
#tap-1:checked ~ .inner-part .content-1,
#tap-2:checked ~ .inner-part .content-2,
#tap-3:checked ~ .inner-part .content-3,
#tap-4:checked ~ .inner-part .content-4{
  opacity: 1;
  margin-left: 0px;
  z-index: 100;
  transition-delay: .3s;
}
.content span{
  display: block;
  color: #7b7992;
  margin-bottom: 15px;
  font-size: 22px;
  font-weight: 500
}
.content .title{
  font-size: 25px;
  font-weight: 700;
  color: #0d0925;
  margin-bottom: 10px;
}
.content .text{
  color: #4e4a67;
  font-size: 15px;
  margin-bottom: 15px;
  line-height: 1.5em;
  text-align: justify;
}
.sliders{
  position: absolute;
  bottom: 25px;
  left: 65%;
  transform: translateX(-60%);
  z-index: 12;
}
#imgTap:checked ~ .sliders{
  display: none;
}
.sliders .tap{
  position: relative;
  height: 20px;
  width: 50px;
  background: #d9d9d9;
  border-radius: 10px;
  display: inline-flex;
  margin: 0 3px;
  cursor: pointer;
}
.sliders .tap:hover{
  background: #cccccc;
}
.sliders .tap:before{
  position: absolute;
  content: '';
  top: 0;
  left: 0;
  height: 100%;
  width: -100%;
  background: linear-gradient(147deg,#f6b323 0%, #f23b26 74%);
  border-radius: 10px;
  transform: scaleX(0);
  transition: transform .6s;
  transform-origin:center;
}
input[type="radio"],
input[type="checkbox"]{
  display: none;
}
#tap-1:checked ~ .sliders .tap-1:before,
#tap-2:checked ~ .sliders .tap-2:before,
#tap-3:checked ~ .sliders .tap-3:before,
#tap-4:checked ~ .sliders .tap-4:before{
  transform: scaleX(1);
  width: 100%;
}
  
 .right{
            width:60%;
            float:left;
            height:400px;
             border-radius:20px;
             margin-left: 10px;
        }
    
footer{
        width:100%;
             margin-top:400px;
             margin-left:10px;
             margin-right:10px;
            padding:10px;
            background:#000;
            color:#fff;
             border-radius:10px;
   }
ul{
    list-style: none;
}
img{
    max-width: 100%;
    height: auto;
}
.filter-menu{
    margin-bottom: 20px;
    margin-left:0px;
    background:#99ff99;
  
}
.filter-menu li{
    display: inline-block;
    padding: 10px 90px;
    color: #000;
    cursor: pointer;
}
.filter-menu li:hover,
.filter-menu li.current{
    background:#ccffcc;
     padding: 10px 100px;
}
.filter-item li{
    width: 50%;
    padding: 10px;
    float: left;
}
.filter-item li.active{
    width: 50%;
    padding: 10px;
    transition: all 0.5s ease;
}
.filter-item li.delete{
    width: 0%;
    padding: 0;
    transition: all 0.5s ease;
}
.filter-item img{
    display: block;
    width: 100%;
    height: 100%;
}
@media screen and (min-width: 768px){
    .filter-item li.active,
    .filter-item li{
        width: 33.33%;
    }
}
@media screen and (min-width: 1280px){
    .filter-item li.active,
    .filter-item li{
        width: 25%;
    }
    h2{
        font-size: 180%;
    }
}
.bottom center{
  padding: 5px;
  font-size: 0.9375rem;
  background: #151515;
}
.bottom center span{
  color: #656565;
}
.bottom center a{
  color: #f12020;
  text-decoration: none;
}
.bottom center a:hover{
  text-decoration: underline;
}
.copy {
  position: fixed;
  left: 0;
  bottom: 0;
  width: 100%;
 
  color:#f2f2f2;
  text-align: center;
 
}
    </style>
    <body>
        <ul>
        <nav >  
     <a class="navbar-brand" href="#">
    <img src="images/logo.jpg" width="100" height="70" alt=""/>
    </a>
     <li style="width: 85px"><a href=" http://localhost:42699/BanasthaliPortal/menu2.jsp">Logout</a></li>
 
      <%--  <li style="width: 85px"><a href="http://localhost:8084/Banasthali_Club_Management/Queries.jsp" target="content">Queries</a></li> --%>
      
        <li style="width: 105px"><a href="http://localhost:42699/BanasthaliPortal/Faq.jsp">Feedback</a></li>
        <li style="width: 110px"><a href="http://localhost:42699/BanasthaliPortal/Contact Us.jsp">Contact us</a></li>
         <li style="width: 85px"><a href="http://localhost:42699/BanasthaliPortal/AboutUs.jsp">About</a></li>
         <li style="width: 110px" ><a href="http://localhost:42699/BanasthaliPortal/HomePage.jsp">Clubs</a></li>
         <li style="width:640px;"><font size="4" color="white">Student Associations and Clubs </font></li>
         <li style="padding-top: 20px; padding-right: 5px;"><font color="white" size="4">Banasthali Vidyapith </font></li>
 </nav>
        </ul>
      
      <header>
            <h1>
       AAYAM EVENTS
            </h1>
        </header> 
        <section>
            <h1>Events Registration/Information</h1>
             
                     <div class="col-lg-3">
		<div class="card">
                <div class="card-body">
                    <h5 class="card-title">NOTICE<br></h5>

                        <marquee width="85%" direction="left" height="80px">
                        This is a sample scrolling text that has scrolls in the upper direction.
                        </marquee>
                        <marquee width="85%" direction="left" height="80px">
                        This is a sample scrolling text that has scrolls in the upper direction.
                        </marquee>
                        <marquee width="85%" direction="left" height="80px">
                        This is a sample scrolling text that has scrolls in the upper direction.
                        </marquee>
                       <button name="btn_event">Register-Here</button>  <button>Previous-Events</button>
                </div>
                   
                </div>
                        
	</div>
           
            </a>
</section>
      
        <aside class="right">
        <div class="blog-card">
      <input type="radio" name="select" id="tap-1" checked>
      <input type="radio" name="select" id="tap-2">
      <input type="radio" name="select" id="tap-3">
      <input type="radio" name="select" id="tap-4">
      <input type="checkbox" id="imgTap">
      <div class="sliders">
        <label for="tap-1" class="tap tap-1"></label>
        <label for="tap-2" class="tap tap-2"></label>
        <label for="tap-3" class="tap tap-3"></label>
        <label for="tap-4" class="tap tap-4"></label>
      </div>
      
      
<div class="inner-part">
        <label for="imgTap" class="img">
          <img class="img-1" src="images/Aayam-Aaina.jpg">
        </label>
        <div class="content content-1">
          <span>26 December 2020</span>
          <div class="title">
Aaina</div>
<div class="text">
"If you could say it in words, there would be no reason to paint." ~ Edward Hopper Team Aayam is here with its first painting event Aaina on the theme: 'One touch of nature'.The ones interested in arts and painting, this is a great opportunity for you to showcase
your talent. Sheets will be provided, you only have to bring the colours and tools as per
your requirement.
Date: 5th August, 2019<br>
Time: 5:30pm<br>
Venue: CMS Open Area<br>
Open to all disciplines of Banasthali Vidyapith.
Regards,
Team Aayam</div>

        </div>
</div>
      
      
<div class="inner-part">
        <label for="imgTap" class="img">
          <img class="img-2" src="images/Kavyanjali.jpg">
        </label>
        <div class="content content-2">
          <span>26 December 2018</span>
          <div class="title">
Kavyanjali</div>
<div class="text">
Greetings everyone!
Team Aayam is here with its gala poetry event Kavyanjali under its annual literary and creative fest Kurjan'20.Improve your talent of poetry in either of the two languages: Hindi or English. They will
be judged separately. Participants can recite any genre of poem, keeping in mind the appropriateness of the event.So, come witness the most exquisite poetic gathering!
PRELIMS:
Date: 7th February, 2020<br>
Venue: Aim & Act
5pm onwards<br>
FINALS:
10th February, 2020 in
Gyan Mandir<br>
For further related queries, contact any of the Team Aayam members.<br>
Regards,
Team Aayam</div>

        </div>
</div>
      
      
<div class="inner-part">
        <label for="imgTap" class="img">
          <img class="img-3" src="images/Minutiea.jpg">
        </label>
        <div class="content content-3">
          <span>26 December 2019</span>
          <div class="title">
Minutiea</div>
<div class="text">
What was the name of Victor
Krum's wand?
What is common amongst 'Heirs', 'Personal Taste' and 'Boys Over Flowers'?
Greetings everyone!
If you can answer the questions above, then we have the perfect forum for you.
Team Aayam is here with its exciting quiz Minutiae. Test your knowledge of popular works
of art ranging from K-pop to Shakespeare. <br>
Date: 15th Jan, 2020,  Time: 5 pm onwards, Venue: AIM & ACT<br>
Participation is open to all disciplines of Vidyapith.
For further related queries, you can contact any of the Team Aayam member or DM us on
our Instagram/Mail id: aayambv2k19@gmail.com<br>
Regards,
Team Aayam.</div>

        </div>
</div>
  
      <div class="inner-part">
        <label for="imgTap" class="img">
          <img class="img-4" src="images/TheBanterofTitans.jpg">
        </label>
        <div class="content content-4">
          <span>26 December 2019</span>
          <div class="title">
The Banter Of Titans</div>
<div class="text">
The menace of the outbreak of a third world war is at bay. So, who do you attest for? Which
country do you think will end up triumphant in this Banter of Titans? Untangle these
questions with our intriguing debate based stage event, 'The Banter Of Titans' under
Aayam's annual literary and creative fest Kurjan'20, this year with the theme World War
3: Prequel.

The Prelims will be a Group Discussion round on 7th February'20 in the Aim and Act
department, 5pm onwards.<br>
The Finals will be held on 12th February'20.<br>
Open to all disciplines of Banasthali Vidyapith
Come and fight like a Titan to win like a God!
Regards,
Team Aayam.</div>

        </div>
      </div>      
</div>
        </aside>
       <body>
           <footer>
        <h2>EVENTS GALLERY</h2>

        <ul class="filter-menu">
             <li data-target="TheBanterofTitans">The Banter of Titans</li>
             <li data-target="Minutiea">Minutiea</li>
                <li data-target="Kavyanjali">Kavyanjali</li>
                     <li data-target="Aaina">Aaina</li>
                  <li data-target="all">All</li>
        </ul>

        <div class="filter-item">
            <li data-item="Aaina"><img src="images/Aayam-Aaina.jpg" alt=""></li>
             <li data-item="Aaina"><img src="images/HERculean Times.jpg" alt=""></li>
            <li data-item="Minutiea"><img src="images/Minutiea.jpg" alt=""></li>
             <li data-item="Minutiea"><img src="images/Engineer's Day and Vistas.jpg" alt=""></li>
            <li data-item="Kavyanjali"><img src="images/Kavyanjali.jpg" alt=""></li>
               <li data-item="Kavyanjali"><img src="images/Brainiac Spree.jpg" alt=""></li>
            <li data-item="TheBanterofTitans"><img src="images/TheBanterofTitans.jpg" alt=""></li>
             <li data-item="TheBanterofTitans"><img src="images/Reign The Realms.jpg" alt=""></li>
             <li data-item="Minutiea"><img src="images/Minutiea.jpg" alt=""></li> 
                <li data-item="Kavyanjali"><img src="images/Kavyanjali.jpg" alt=""></li>
                  <li data-item="Aaina"><img src="images/Aayam-Aaina.jpg" alt=""></li>
             <li data-item="Minutiea"><img src="images/Minutiea.jpg" alt=""></li>
            <%-- for more pictures copy above lines edit the  data-item  and img src--%>
        </div>
           </footer>

    <script>
        let sortBtn = document.querySelector('.filter-menu').children;
let sortItem = document.querySelector('.filter-item').children;
for(let i = 0; i < sortBtn.length; i++){
    sortBtn[i].addEventListener('click', function(){
        for(let j = 0; j< sortBtn.length; j++){
            sortBtn[j].classList.remove('current');
        }
        this.classList.add('current');
        
        let targetData = this.getAttribute('data-target');
        for(let k = 0; k < sortItem.length; k++){
            sortItem[k].classList.remove('active');
            sortItem[k].classList.add('delete');
            if(sortItem[k].getAttribute('data-item') == targetData || targetData == "all"){
                sortItem[k].classList.remove('delete');
                sortItem[k].classList.add('active');
            }
        }
    });
}
   
    </script>
     <div class="copy">
  <center>
          <span class="credit">Created By <a href="http://www.banasthali.org/banasthali/wcms/en/home/">Banasthali Vidyapith</a> | </span>
          <span class="far fa-copyright"></span><span> 2021 All rights reserved.</span>
        </center>
</div>
</body>
</html>