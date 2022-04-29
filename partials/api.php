 
<?php
$showError = "false";
if($_SERVER["REQUEST_METHOD"] == "POST"){
include '_dbconnect.php';
$user_email = $_POST['signupEmail'];
$pass = $_POST['signupPassword'];
$cpass = $_POST['signupcPassword'];

//Check whether this email exists
$existSql = "select * from `users` where user_email = '$user_email'";
$result = mysqli_query($conn, $existSql);
$numRows = mysqli_num_rows($result);
$url = file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret=$privateKey&response=$response&remoteip=$remoteip");
if($numRows>0){
}
else{
    if($pass == $cpass){
         $hash = password_hash($pass, PASSWORD_DEFAULT);
         $sql = "INSERT INTO `users` (`user_email`, `user_pass`, `timestamp`)   
         VALUES ('$user_email', '$hash', current_timestamp())";
         $result = mysqli_query($conn, $sql);
         if($result){
             $showAlert = true;

             exit();
         }
    }
    else{
        echo "reCaptcha failed, please try again...";
    }
}
header("Location: /forum/index.php?signupsuccess=false&error= $showError");
}
?>