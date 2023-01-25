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
            $category=takeAuthor($kid);
            if($category){
                $category=mysqli_fetch_assoc($category);
            $author_ID = $category['author_ID'];
            $first_name = $category['first_name'];
            $last_name = $category['last_name'];
        }
        }
        if (isset($_POST['fshije'])) {
            $author_ID=$_POST['author_ID'];
            deleteAuthor($author_ID);
          
        }
        ?>

<section class="section-shto-modifiko container">
    <div class="image">
        <img src="img/library5.gif" alt="">
    </div>
    <div class="forma">
        <br>
        <br>
        <h1>Do you want to permanently delete this Author? </h1>
        
        <form method="post">
        <input type="hidden" id="author_ID" name="author_ID"
                value="<?php if(!empty($author_ID)) echo $author_ID ?>">
                
            <input type="submit" name="fshije" id="fshije" value="Delete" style="width:15%">
            <p id="errmessage"></p>
            </div>
        </form>
    </div>
</section>

<footer class="main-footer">
    <div class="main-footer-content container">
        <div>
            <p>&copy; Rent a Car 2021. All rights reserved.</p>
        </div>
        <div class="social-media">
            <div>
                <a href="#"><i class="fab fa-facebook"></i></a>
            </div>
            <div>
                <a href="#"><i class="fab fa-twitter"></i></a>
            </div>
            <div>
                <a href="#"><i class="fab fa-instagram"></i></a>
            </div>
        </div>
    </div>
</footer>

</body>
</html>