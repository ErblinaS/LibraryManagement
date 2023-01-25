<?php

include "inc/header.php";
if(isset($_POST['regjistrohu'])){
    $category1=$_POST['category_name'];
    addCategory($category1);
}
?>

<section class="section-shto-modifiko container">
    <div class="image">
        <img src="img/library7.jpg" alt="">
    </div>
    <div class="forma">
        <br>
        <br>
        <h1>Add a Category</h1>
        <br>
        <form method="post">
            <div class="inputAndLabels">
                <input type="text" id="category_name" name="category_name">
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