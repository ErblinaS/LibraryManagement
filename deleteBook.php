<?php

include "inc/header.php";
?>

<?php
        $dbconn = mysqli_connect("localhost", "root", "", "prova5_1");
        //mysqli_select_db($dbconn,"smp2");
        if (!$dbconn) {
            die("Deshtoi lidhja me DB" . mysqli_error($dbconn));
        }
        if (isset($_GET['kid'])) {
            $kid = $_GET['kid'];
            $book=takeBook($kid);
            if($book){
                $book=mysqli_fetch_assoc($book);
            $ISBN = $book['ISBN'];
            $book_name = $book['book_name'];}
        }
        if (isset($_POST['fshije'])) {
            $ISBN=$_POST['ISBN'];
            deleteBook($ISBN);
          
        }
        ?>

<section class="section-shto-modifiko container">
    <div class="image">
        <img src="img/library5.gif" alt="">
    </div>
    <div class="forma">
        <br>
        <br>
        <h1>Do you want to permanently delete this book? </h1>
        
        <form method="post">
        <input type="hidden" id="ISBN" name="ISBN"
                value="<?php if(!empty($ISBN)) echo $ISBN ?>">
                
            <input type="submit" name="fshije" id="fshije" value="Delete" style="width:15%">
            <p id="errmessage"></p>
            </div>
        </form>
    </div>
</section>

<footer class="main-footer">
    <div class="main-footer-content container">
        <div>
            <p>&copy; Buzuku Library 2023. All rights reserved.</p>
        </div>
        <div class="social-media">
            <div>
                <a href="#"><i class="fab fa-facebook"></i></a>
            </div>
            <div>
                <a href="#"><i class="fab fa-twitter"></i></a>
            </div>
            <div>
                <a href="#"><i class="fab fa-linkedin"></i></a>
            </div>
        </div>
    </div>
</footer>

</body>
</html>