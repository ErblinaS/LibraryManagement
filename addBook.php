<?php

include "inc/header.php";
if(isset($_POST['regjistrohu'])){
    $category1=$_POST['ISBN'];
    $category2=$_POST['book_name'];
    addBook($category1,$category2);
}
?>

<section class="section-shto-modifiko container">
    <div class="image">
        <img src="img/library7.jpg" alt="">
    </div>
    <div class="forma">
        <br>
        <br>
        <h1>Add a Book</h1>
        <br>
        <form method="post">
            <div class="inputAndLabels">
                <label for="Category">ISBN</label> <br>
                <input type="text" id="ISBN" name="ISBN"><br>
                <label for="Category">Name</label> <br>
                <input type="text" id="book_name" name="book_name">
                <input type="submit" name="regjistrohu" value="Add">
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
            <a href="#"><i class="fab fa-instagram"></i></a>
            </div>
        </div>
    </div>
</footer>

</body>
</html>