<?php include 'sendemail.php'; ?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to NTech Forum-Contact Us</title>
    <link rel="shortcut icon" type="image" href="img/nt.png">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">
    <style>
a:link {
  color: white;
  background-color: transparent;
  text-decoration: none;
}

a:visited {
  color: white;
  background-color: transparent;
  text-decoration: none;
}
a{
  padding: 2px;
}
</style>
  </head>
  <body>

    <!--alert messages start-->
    <?php echo $alert; ?>
    <!--alert messages end-->
  

    <!--contact section start-->
    <div class="contact-section">
      <div class="contact-info">
        <div><i class="fas fa-map-marker-alt"></i><a href=" https://www.google.com/maps/place/K.+J.+Somaiya+Polytechnic/@19.0726708,72.8988409,15z/data=!4m2!3m1!1s0x0:0x236116771b9afb91?sa=X&ved=2ahUKEwjph7eU_r_yAhWsyzgGHUpmA3MQ_BIwJXoECEwQBQ">KJSP COLLEGE MUMBAI,INDIA</a></div>
        <div><i class="fas fa-envelope"></i><a href="mailto:NTechForum@gmail.com">NTech Forum</a></div>
        <div><i class="fas fa-phone"></i><a href="tel:022 21023443"> 022 21023443</a></div>
        <div><p><i class="fas fa-clock"></i>Mon - Sat 9:00 AM to 6:00 PM</p></div>
        <div>
<p>FOLLOW US ON:</p>
<a href="https://www.youtube.com/channel/UC4e8ksx7KWuDJPosyK1DkPg"><img src="img/youtube logo.png" width="50px" height="40px">
<a href="https://www.facebook.com/NTech-forum-104399971965386"><img src="https://www.facebook.com/images/fb_icon_325x325.png"   width="35px" height="37px"></a>
<a href="https://www.instagram.com/ntechforums/"><img src="img/instagram.png"   width="45px" height="40px" ></a>
</div>

      </div>

      
      <div class="contact-form">

        <h2>Contact Us</h2>

        <form class="contact" action="" method="post">

          <input type="text" name="name" class="text-box" placeholder="Your Name" required>

          <input type="email" name="email" class="text-box" placeholder="Your Email" required>

          <input type="tel" name="phone" class="text-box" placeholder="Your phone no" required>

          <input type="text" name="subject" class="text-box" placeholder="Your subject" required>

          <textarea name="message" rows="5" placeholder="Your Message/Feedback" required></textarea>

          <input type="submit" name="submit" class="send-btn" value="Send">
        </form>
      </div>
    </div>
    

    <script type="text/javascript">
    if(window.history.replaceState){
      window.history.replaceState(null, null, window.location.href);
    }
    </script>
    
  </body>
</html>