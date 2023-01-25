<?php

include "inc/header.php";
if(isset($_POST['regjistrohu'])){
    $category1=$_POST['first_name'];
    $category2=$_POST['last_name'];
    $category3=$_POST['birthdate'];
    $category4=$_POST['gender'];
    addUser($category1,$category2,$category3,$category4);
}
?>

<section class="section-shto-modifiko container">
    <div class="image">
        <img src="img/library7.jpg" alt="">
    </div>
    <div class="forma">
        <br>
        <br>
        <h1>Add a User</h1>
        <br>
        <form method="post">
            <div class="inputAndLabels">
            <p>First Name</p>
                <input type="text" id="first_name" name="first_name">
                <p>Last Name</p>
                <input type="text" id="last_name" name="last_name">
                <p>Birth Date</p>
                <input type="text" id="birthdate" name="birthdate">
                <p>Gender</p>
                <input type="text" id="gender" name="gender">
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