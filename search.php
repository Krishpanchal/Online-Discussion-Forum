<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <style>
        #maincontainer{
            min-height: 100vh;
        }
        body{
            background-image: url(img/bg1.jpg);
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
    <title>Welcome to NTech Forum</title>
    <link rel="shortcut icon" type="image" href="img/nt.png">
</head>

<body>
    <!--< body style='background-color:black'> -->
    <?php include 'partials/_dbconnect.php';?>
    <?php include 'partials/_header.php';?>
    

    <!-- Search Results -->
  <div class="container my-3" id="maincontainer">
        <h1 class="py-3">Search results for <em>"<?php echo $_GET['search']?>"</em></h1>
        <?php 
            $query = $_GET["search"];
            $sql = "SELECT * FROM threads WHERE thread_title LIKE '%$query%'";
            $sql_query = mysqli_query($conn, $sql);
            if(mysqli_num_rows($sql_query) > 0) {
                while($row = mysqli_fetch_assoc($sql_query)){
                    $title = $row['thread_title'];
                    $desc = $row['thread_desc']; 
                    $thread_id= $row['thread_id'];
                    $url = "thread.php?threadid=". $thread_id;
                    ?>
                        <div class="result">
                            <h3><a href="<?php echo $url; ?>" class="text-dark"><?php echo $title; ?></a> </h3>
                            <p><?php echo $desc; ?></p>
                        </div>
                    <?php
                }
            }else {
                ?>
                <div class="jumbotron jumbotron-fluid">
                    <div class="container">
                        <p class="display-4">No Results Found</p>
                        <p class="lead"> Suggestions: <ul>
                                <li>Make sure that all words are spelled correctly.</li>
                                <li>Try different keywords.</li>
                                <li>Try more general keywords. </li></ul>
                        </p>
                    </div>
                </div>';
                <?php
            }
            ?>
  </div>

    <?php include 'partials/_footer.php';?>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
        integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous">
    </script>
</body>

</html>